<?php
// File: model/DiscountUser.php

class DiscountUser
{
    private $conn;
    private $table = 'discount_user';

    // Object properties matching database columns
    public $id;
    public $name;
    public $user_id;
    public $code;
    public $description;
    public $minimum_price;
    public $discount_percent;
    public $valid_from;
    public $valid_to;
    public $email;
    public $status;

    // Constructor
    public function __construct($db)
    {
        $this->conn = $db;
    }

    // Create discount user
    public function create()
    {
        $query = "INSERT INTO " . $this->table . " 
                SET name = ?,
                    user_id = ?,
                    email = ?,
                    code = ?,
                    description = ?,
                    minimum_price = ?,
                    discount_percent = ?,
                    valid_from = ?,
                    valid_to = ?,
                    status = ?";

        $stmt = $this->conn->prepare($query);

        // Clean data
        $this->name = htmlspecialchars(strip_tags($this->name));
        $this->user_id = htmlspecialchars(strip_tags($this->user_id));
        $this->email = htmlspecialchars(strip_tags($this->email));
        $this->code = htmlspecialchars(strip_tags($this->code));
        $this->description = htmlspecialchars(strip_tags($this->description));
        $this->minimum_price = htmlspecialchars(strip_tags($this->minimum_price));
        $this->discount_percent = htmlspecialchars(strip_tags($this->discount_percent));
        $this->valid_from = htmlspecialchars(strip_tags($this->valid_from));
        $this->valid_to = htmlspecialchars(strip_tags($this->valid_to));
        $this->status = 1;
        // Bind data
        $stmt->bind_param(
            "sssssssssi",
            $this->name,
            $this->user_id,
            $this->email,
            $this->code,
            $this->description,
            $this->minimum_price,
            $this->discount_percent,
            $this->valid_from,
            $this->valid_to,
            $this->status
        );

        if ($stmt->execute()) {
            return true;
        }

        printf("Error: %s.\n", $stmt->error);
        return false;
    }

    // Update discount user
    public function update()
    {
        $query = "UPDATE " . $this->table . "
                SET name = ?,
                    code = ?,
                    email = ?,
                    description = ?,
                    minimum_price = ?,
                    discount_percent = ?,
                    valid_from = ?,
                    valid_to = ?,
                    status = ?,
                    user_id = ?
                WHERE id = ?";

        $stmt = $this->conn->prepare($query);

        // Clean data
        $this->name = htmlspecialchars(strip_tags($this->name));
        $this->code = htmlspecialchars(strip_tags($this->code));
        $this->description = htmlspecialchars(strip_tags($this->description));
        $this->minimum_price = htmlspecialchars(strip_tags($this->minimum_price));
        $this->discount_percent = htmlspecialchars(strip_tags($this->discount_percent));
        $this->valid_from = htmlspecialchars(strip_tags($this->valid_from));
        $this->valid_to = htmlspecialchars(strip_tags($this->valid_to));
        $this->id = htmlspecialchars(strip_tags($this->id));
        $this->status = htmlspecialchars(strip_tags($this->status));
        $this->user_id = htmlspecialchars(strip_tags($this->user_id));
        // Bind data
        $stmt->bind_param(
            "ssssssssisi",
            $this->name,
            $this->code,
            $this->email,
            $this->description,
            $this->minimum_price,
            $this->discount_percent,
            $this->valid_from,
            $this->valid_to,
            $this->status,
            $this->user_id,
            $this->id
        );

        if ($stmt->execute()) {
            return true;
        }

        printf("Error: %s.\n", $stmt->error);
        return false;
    }

    // Read all discount users with pagination
    public function read($user_id, $page = 1, $limit = 40)
    {
        $offset = ($page - 1) * $limit;
        
        $query = "SELECT d.*, u.username, u.email 
                  FROM " . $this->table . " d
                  JOIN users u ON d.user_id = u.id 
                  WHERE d.user_id = ?
                  ORDER BY d.id DESC 
                  LIMIT ?, ?";
                  
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("sii", $user_id, $offset, $limit);
        
        if ($stmt->execute()) {
            return $stmt->get_result();
        }
        return false;
    }



    // Get single discount user
    public function show($id)
    {
        $query = "SELECT 
                    du.*,
                    u.username,
                    CASE 
                        WHEN CURRENT_DATE() < du.valid_from THEN 'pending'
                        WHEN CURRENT_DATE() > du.valid_to THEN 'expired'
                        ELSE 'active'
                    END as message
                FROM " . $this->table . " du
                LEFT JOIN users u ON du.user_id = u.id
                WHERE du.id = ?
                LIMIT 1";

        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("i", $id);
        $stmt->execute();
        return $stmt->get_result();
    }



    // Delete discount user
    public function delete()
    {
        // Create query
        $query = "DELETE FROM " . $this->table . " WHERE id = ?";

        $stmt = $this->conn->prepare($query);

        $this->id = htmlspecialchars(strip_tags($this->id));

        $stmt->bind_param("i", $this->id);

        if ($stmt->execute()) {
            return true;
        }

        printf("Error: %s.\n", $stmt->error);
        return false;
    }

    // Get total count
    public function getTotalCount($user_id)
    {
        $query = "SELECT COUNT(*) as total FROM " . $this->table . " WHERE user_id = ?";
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("s", $user_id);
        
        if ($stmt->execute()) {
            $result = $stmt->get_result();
            $row = $result->fetch_assoc();
            return $row['total'];
        }
        return 0;
    }


    // Check if code exists
    public function isCodeExists($code, $exclude_id = null)
    {
        $query = "SELECT COUNT(*) as count FROM " . $this->table . " WHERE code = ?";

        if ($exclude_id) {
            $query .= " AND id != ?";
        }

        $stmt = $this->conn->prepare($query);

        if ($exclude_id) {
            $stmt->bind_param("si", $code, $exclude_id);
        } else {
            $stmt->bind_param("s", $code);
        }

        $stmt->execute();
        $result = $stmt->get_result()->fetch_assoc();
        return $result['count'] > 0;
    }


    // Generate unique discount code
    public function generateUniqueCode($length = 8)
    {
        do {
            $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
            $code = '';
            for ($i = 0; $i < $length; $i++) {
                $code .= $characters[rand(0, strlen($characters) - 1)];
            }
        } while ($this->isCodeExists($code));

        return $code;
    }

    // Add this method to get user ID by email
    public function getUserIdByEmail($email)
    {
        $query = "SELECT id FROM users WHERE email = ? LIMIT 1";
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($row = $result->fetch_assoc()) {
            return $row['id'];
        }
        return null;
    }

        // Thay thế phương thức getUserEmailById bằng phương thức mới
    // public function getUserIdByEmail($email)
    // {
    //     $query = "SELECT id FROM users WHERE email = ? LIMIT 1";
    //     $stmt = $this->conn->prepare($query);
    //     $stmt->bind_param("s", $email);
    //     $stmt->execute();
    //     $result = $stmt->get_result();

    //     if ($row = $result->fetch_assoc()) {
    //         return $row['id'];
    //     }
    //     return null;
    // }

}
