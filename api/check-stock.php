<?php
header('Content-Type: application/json; charset=utf-8');

require_once(__DIR__ . '/../vendor/autoload.php');
use Dotenv\Dotenv;
$dotenv = Dotenv::createImmutable(__DIR__ . '/..');
$dotenv->load();

require_once(__DIR__ . '/../lib/model.php');

$productId = isset($_GET['id']) ? intval($_GET['id']) : 0;
if ($productId <= 0) {
    echo json_encode([
        'status' => 'error',
        'message' => 'Mã sản phẩm không hợp lệ'
    ], JSON_UNESCAPED_UNICODE);
    exit();
}

$product = getRecord('products', $productId);
if (!$product) {
    echo json_encode([
        'status' => 'not_found',
        'message' => 'Không tìm thấy sản phẩm'
    ], JSON_UNESCAPED_UNICODE);
    exit();
}

$stock = isset($product['total_stock']) ? intval($product['total_stock']) : 0;

echo json_encode([
    'status' => 'success',
    'product_id' => $productId,
    'product_name' => $product['product_name'],
    'stock' => $stock,
    'is_in_stock' => ($stock > 0),
    'message' => ($stock > 0) ? "Còn $stock sản phẩm trong kho" : "Sản phẩm đã hết hàng"
], JSON_UNESCAPED_UNICODE);
