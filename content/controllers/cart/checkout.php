<?php

require('admin/views/shared/header.php');

if (!empty($_POST)) {
    verifyCsrfOrDie();
    global $linkConnectDB;
    $cart = cart_list();
    if (empty($cart)) {
        header('location:cart');
        exit();
    }

    // Yêu cầu BTL Chủ đề 7: Kiểm tra tồn kho và tính lại giá ở SERVER trước khi đặt đơn
    $server_cart_total = 0;
    foreach ($cart as $product) {
        $pId = intval($product['id']);
        $pQty = intval($product['number']);
        
        $dbProd = getRecord('products', $pId);
        if (!$dbProd) {
            die("Sản phẩm không tồn tại!");
        }
        
        $stock = isset($dbProd['total_stock']) ? intval($dbProd['total_stock']) : 0;
        if ($pQty > $stock) {
            echo '<div class="container" style="padding: 40px 15px; text-align: center;">
                    <div class="alert alert-danger">
                        <h4>Đặt hàng thất bại!</h4>
                        <p>Sản phẩm <strong>' . htmlspecialchars($dbProd['product_name']) . '</strong> chỉ còn tồn kho <strong>' . $stock . '</strong> món (bạn đang đặt ' . $pQty . ').</p>
                        <p><a href="cart" class="btn btn-primary">Quay lại giỏ hàng</a></p>
                    </div>
                  </div>';
            exit();
        }
        
        // Tính giá từ DB, không tin giá gửi từ trình duyệt
        $unitPrice = ($dbProd['saleoff'] != 0) 
            ? ($dbProd['product_price'] - (($dbProd['product_price'] * $dbProd['percentoff']) / 100))
            : $dbProd['product_price'];
            
        $server_cart_total += ($unitPrice * $pQty);
    }

    $order = [
        'id' => 0,
        'customer' => escape($_POST['name']),
        'province' => escape($_POST['province']),
        'address' => escape($_POST['address']),
        'phone' => escape($_POST['phone']),
        'cart_total' => $server_cart_total,
        'createtime' => gmdate('Y-m-d H:i:s', time() + 7 * 3600),
        'message' => escape($_POST['message']),
        'user_id' => intval($_POST['user_id'] ?? 0),
        'status' => 0 // Đơn mới chờ xác nhận
    ];
    $orderId = save('orders', $order);

    // Lưu chi tiết đơn hàng và TRỪ TỒN KHO an toàn
    foreach ($cart as $product) {
        $pId = intval($product['id']);
        $pQty = intval($product['number']);
        $dbProd = getRecord('products', $pId);
        $unitPrice = ($dbProd['saleoff'] != 0) 
            ? ($dbProd['product_price'] - (($dbProd['product_price'] * $dbProd['percentoff']) / 100))
            : $dbProd['product_price'];

        $orderDetail = [
            'id' => 0,
            'order_id' => $orderId,
            'product_id' => $pId,
            'quantity' => $pQty,
            'price' => $unitPrice,
        ];
        save('order_detail', $orderDetail);

        // Trừ tồn kho trong DB
        $sqlUpdateStock = "UPDATE products SET total_stock = GREATEST(0, total_stock - $pQty) WHERE id = $pId";
        mysqli_query($linkConnectDB, $sqlUpdateStock);
    }

    cartDestroy(); // Xoá giỏ sau khi đặt hàng
    global $userNav;
    if (isset($userNav)) {
        detroy_cart_user_db();
    }

    $title = 'Đặt hàng thành công - Bếp Nhà Hà Store';
    header("refresh:15;url=" . PATH_URL . "home");
    echo '<div style="text-align: center;padding: 30px 10px;">
            <h3 style="color: #059669;"><i class="fa fa-check-circle"></i> Đặt hàng thành công!</h3>
            <p>Mã đơn hàng: <strong>#' . $orderId . '</strong> | Tổng tiền: <strong>' . number_format($server_cart_total, 0, ',', '.') . ' VNĐ</strong></p>
            <p>Số lượng tồn kho sản phẩm đã được hệ thống tự động cập nhật.</p>
            <p>Trình duyệt sẽ tự động chuyển về trang chủ sau 15s, hoặc bạn có thể click <a href="' . PATH_URL . 'home">vào đây</a>.</p>
          </div>';
} else {
    header('location:.');
}
