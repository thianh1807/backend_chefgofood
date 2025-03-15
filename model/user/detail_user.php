<?php
include_once __DIR__ . '/../../config/db.php';

$default_avatar = 'https://thumbs.dreamstime.com/b/default-avatar-profile-image-vector-social-media-user-icon-potrait-182347582.jpg';

// Lấy ID user từ URL
$url_path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$path_parts = explode('/', trim($url_path, '/'));
$user_id = end($path_parts);

if (empty($user_id)) {
    echo json_encode([
        'ok' => false,
        'success' => false,
        'message' => 'ID người dùng không được cung cấp!'
    ]);
    http_response_code(400);
    exit;
}

// kiểm tra xem api key có tồn tại trong cơ sở dữ liệu không
$sql = "SELECT * FROM users WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $user_id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    // api key hợp lệ, lấy thông tin người dùng
    $user = $result->fetch_assoc();

    // gán avatar mặc định nếu trường avata trống
    $avatar = $user['avata'] ?: $default_avatar;

    // lấy thông tin địa chỉ của người dùng
    $address_sql = "SELECT * FROM detail_address WHERE user_id = ?";
    $address_stmt = $conn->prepare($address_sql);
    $address_stmt->bind_param("s", $user['id']);
    $address_stmt->execute();
    $address_result = $address_stmt->get_result();

    $addresses = [];
    while ($address = $address_result->fetch_assoc()) {
        $addresses[] = $address;
    }

    // lấy đánh giá của người dùng
    $reviews_sql = "SELECT r.*, p.name as product_name 
                   FROM reviews r 
                   LEFT JOIN products p ON r.product_id = p.id 
                   WHERE r.user_id = ?";
    $reviews_stmt = $conn->prepare($reviews_sql);
    $reviews_stmt->bind_param("s", $user['id']);
    $reviews_stmt->execute();
    $reviews_result = $reviews_stmt->get_result();

    $reviews = [];
    while ($review = $reviews_result->fetch_assoc()) {
        $reviews[] = [
            'id' => $review['id'],
            'product_id' => $review['product_id'],
            'product_name' => $review['product_name'],
            'rating' => $review['rating'],
            'comment' => $review['comment'],
            'created_at' => $review['created_at']
        ];
    }

    // lấy thông tin khuyến mãi của người dùng
    $discount_sql = "SELECT * FROM discount_user 
                    WHERE user_id = ? 
                    AND valid_from <= CURRENT_DATE 
                    AND valid_to >= CURRENT_DATE";
    $discount_stmt = $conn->prepare($discount_sql);
    $discount_stmt->bind_param("s", $user['id']);
    $discount_stmt->execute();
    $discount_result = $discount_stmt->get_result();

    $discounts = [];
    while ($discount = $discount_result->fetch_assoc()) {
        $discounts[] = [
            'id' => $discount['id'],
            'code' => $discount['code'],
            'description' => $discount['description'],
            'discount_percent' => $discount['discount_percent'],
            'valid_from' => $discount['valid_from'],
            'valid_to' => $discount['valid_to']
        ];
    }

    // chuẩn bị cấu trúc dữ liệu phản hồi
    $response = [
        'ok' => true,
        'success' => true,
        'data' => [
            'id' => $user['id'],
            'username' => $user['username'],
            'email' => $user['email'],
            'created_at' => $user['created_at'],
            'avata' => $avatar,
            'addresses' => $addresses,
            'reviews' => $reviews,
            'discounts' => $discounts
        ]
    ];

    // trả về phản hồi dưới dạng JSON
    echo json_encode($response);
} else {
    echo json_encode([
        'ok' => false,
        'success' => false,
        'message' => 'ID user không tồn tại.'
    ]);
    http_response_code(404);
}

$conn->close();
