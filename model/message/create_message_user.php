<?php
include_once __DIR__ . '/../../config/db.php';

// Lấy API key từ header
$headers = getallheaders();
$api_key = $headers['X-Api-Key'] ?? '';

// Validate API key
if (empty($api_key)) {
    echo json_encode([
        'ok' => false,
        'success' => false,
        'message' => 'API key bị thiếu!'
    ]);
    http_response_code(401);
    exit;
}

// Lấy dữ liệu từ request body
$data = json_decode(file_get_contents('php://input'), true);

// Validate dữ liệu đầu vào
if (!isset($data['content'])) {
    echo json_encode([
        'ok' => false,
        'success' => false,
        'message' => 'Thiếu nội dung tin nhắn!'
    ]);
    http_response_code(400);
    exit;
}

try {
    // Kiểm tra user tồn tại qua API key
    $user_sql = "SELECT id FROM users WHERE api_key = ?";
    $user_stmt = $conn->prepare($user_sql);
    $user_stmt->bind_param("s", $api_key);
    $user_stmt->execute();
    $user_result = $user_stmt->get_result();
    
    if ($user_result->num_rows === 0) {
        throw new Exception('API key không hợp lệ!');
    }
    
    $user = $user_result->fetch_assoc();
    $user_id = $user['id'];

    // Sử dụng admin_id mặc định cho tin nhắn từ user
    $default_admin_id = "highest";

    // Tạo tin nhắn mới
    $message_sql = "INSERT INTO messages (user_id, admin_id, content, sender_type, status, created_at) 
                    VALUES (?, ?, ?, 'user', true, NOW())";
    $message_stmt = $conn->prepare($message_sql);
    
    $message_stmt->bind_param("sss", 
        $user_id,
        $default_admin_id,
        $data['content']
    );

    if (!$message_stmt->execute()) {
        throw new Exception('Không thể tạo tin nhắn!');
    }

    // Lấy thông tin tin nhắn vừa tạo
    $message_id = $message_stmt->insert_id;
    
    $get_message_sql = "SELECT m.*, u.username, u.avata, a.username as admin_name
                        FROM messages m
                        LEFT JOIN users u ON m.user_id = u.id
                        LEFT JOIN admin a ON m.admin_id = a.id
                        WHERE m.id = ?";
    $get_message_stmt = $conn->prepare($get_message_sql);
    $get_message_stmt->bind_param("i", $message_id);
    $get_message_stmt->execute();
    $message = $get_message_stmt->get_result()->fetch_assoc();

    // Format response
    $response_data = [
        'id' => $message['id'],
        'content' => $message['content'],
        'sender_type' => $message['sender_type'],
        'status' => $message['status'],
        'created_at' => $message['created_at'],
        'user' => [
            'id' => $message['user_id'],
            'username' => $message['username'],
            'avatar' => $message['avata']
        ],
        'admin' => [
            'id' => $message['admin_id'],
            'username' => $message['admin_name']
        ]
    ];

    echo json_encode([
        'ok' => true,
        'success' => true,
        'message' => 'Tạo tin nhắn thành công!',
        'data' => $response_data
    ]);

} catch (Exception $e) {
    echo json_encode([
        'ok' => false,
        'success' => false,
        'message' => $e->getMessage()
    ]);
    http_response_code(500);
}

$conn->close(); 