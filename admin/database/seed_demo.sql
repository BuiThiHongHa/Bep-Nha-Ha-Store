-- Synthetic demo catalog for an empty coursework database.
-- Does not delete or overwrite existing rows. No accounts or customer data.
SET NAMES utf8mb4;

ALTER TABLE products ADD COLUMN IF NOT EXISTS total_stock INT NOT NULL DEFAULT 0;

INSERT INTO `types` (`id`, `type_name`, `type_description`, `slug`)
SELECT 1, 'Sản phẩm nổi bật', 'Nhóm sản phẩm mẫu', 'san-pham-hot'
WHERE NOT EXISTS (SELECT 1 FROM `types` WHERE `id` = 1);

INSERT INTO `types` (`id`, `type_name`, `type_description`, `slug`)
SELECT 2, 'Sản phẩm mới', 'Nhóm sản phẩm mẫu', 'san-pham-moi'
WHERE NOT EXISTS (SELECT 1 FROM `types` WHERE `id` = 2);

INSERT INTO `types` (`id`, `type_name`, `type_description`, `slug`)
SELECT 3, 'Sản phẩm giảm giá', 'Nhóm sản phẩm mẫu', 'san-pham-giam-gia'
WHERE NOT EXISTS (SELECT 1 FROM `types` WHERE `id` = 3);

INSERT INTO `supplies` (`id`, `supply_name`, `logo`)
SELECT 1, 'Bếp Nhà Hà Store', ''
WHERE NOT EXISTS (SELECT 1 FROM `supplies` WHERE `id` = 1);

INSERT INTO `categories` (`id`, `category_name`, `supply_id`, `category_position`, `slug`)
SELECT 1, 'Đồ ăn vặt', 1, 1, 'do-an-vat'
WHERE NOT EXISTS (SELECT 1 FROM `categories` WHERE `id` = 1);

INSERT INTO `categories` (`id`, `category_name`, `supply_id`, `category_position`, `slug`)
SELECT 2, 'Đồ uống', 1, 2, 'do-uong'
WHERE NOT EXISTS (SELECT 1 FROM `categories` WHERE `id` = 2);

INSERT INTO `subcategory` (`id`, `subcategory_name`, `supply_id`, `category_id`, `slug`)
SELECT 1, 'Món ăn vặt', 1, 1, 'mon-an-vat'
WHERE NOT EXISTS (SELECT 1 FROM `subcategory` WHERE `id` = 1);

INSERT INTO `subcategory` (`id`, `subcategory_name`, `supply_id`, `category_id`, `slug`)
SELECT 2, 'Trà sữa và giải khát', 1, 2, 'tra-sua-giai-khat'
WHERE NOT EXISTS (SELECT 1 FROM `subcategory` WHERE `id` = 2);

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_detail`, `product_price`, `total_stock`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`, `createBy`, `createDate`)
SELECT 1, 'Trà sữa truyền thống', 1, 2, 2, 1, 'Trà sữa truyền thống — sản phẩm mẫu dùng để thực hành.', 'Thông tin và giá minh họa cho bài tập.', 20000, 20, 0, 0, 'tra-sua-truyen-thong-chan-chau-pudding-15k-20k-3img1.jpg', 'tra-sua-truyen-thong-chan-chau-pudding-15k-20k-3img1.jpg', 'tra-sua-truyen-thong-chan-chau-pudding-15k-20k-3img1.jpg', 'tra-sua-truyen-thong-chan-chau-pudding-15k-20k-3img1.jpg', 'tra-sua-truyen-thong', 'Demo', '2026-11-09'
WHERE NOT EXISTS (SELECT 1 FROM `products` WHERE `id` = 1);

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_detail`, `product_price`, `total_stock`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`, `createBy`, `createDate`)
SELECT 2, 'Trà sữa Thái xanh', 2, 2, 2, 1, 'Trà sữa Thái xanh — sản phẩm mẫu dùng để thực hành.', 'Thông tin và giá minh họa cho bài tập.', 22000, 20, 0, 0, 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k-2img1.jpg', 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k-2img1.jpg', 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k-2img1.jpg', 'tra-sua-thai-xanh-chan-chau-pudding-15k-20k-2img1.jpg', 'tra-sua-thai-xanh', 'Demo', '2026-11-09'
WHERE NOT EXISTS (SELECT 1 FROM `products` WHERE `id` = 2);

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_detail`, `product_price`, `total_stock`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`, `createBy`, `createDate`)
SELECT 3, 'Cá viên chiên', 3, 1, 1, 1, 'Cá viên chiên — sản phẩm mẫu dùng để thực hành.', 'Thông tin và giá minh họa cho bài tập.', 25000, 20, 1, 10, 'ca-vien-chien-9img1.jpg', 'ca-vien-chien-9img1.jpg', 'ca-vien-chien-9img1.jpg', 'ca-vien-chien-9img1.jpg', 'ca-vien-chien', 'Demo', '2026-11-09'
WHERE NOT EXISTS (SELECT 1 FROM `products` WHERE `id` = 3);

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_detail`, `product_price`, `total_stock`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`, `createBy`, `createDate`)
SELECT 4, 'Bò viên', 1, 1, 1, 1, 'Bò viên — sản phẩm mẫu dùng để thực hành.', 'Thông tin và giá minh họa cho bài tập.', 25000, 20, 0, 0, 'bo-vien-co-the-dat-theo-phan-tuy-chon-gia-11img1.jpg', 'bo-vien-co-the-dat-theo-phan-tuy-chon-gia-11img1.jpg', 'bo-vien-co-the-dat-theo-phan-tuy-chon-gia-11img1.jpg', 'bo-vien-co-the-dat-theo-phan-tuy-chon-gia-11img1.jpg', 'bo-vien', 'Demo', '2026-11-09'
WHERE NOT EXISTS (SELECT 1 FROM `products` WHERE `id` = 4);

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_detail`, `product_price`, `total_stock`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`, `createBy`, `createDate`)
SELECT 5, 'Trà bí đao', 2, 2, 2, 1, 'Trà bí đao — sản phẩm mẫu dùng để thực hành.', 'Thông tin và giá minh họa cho bài tập.', 15000, 20, 0, 0, 'tra-bi-dao-giai-khat-thanh-loc-co-the-7img1.jpg', 'tra-bi-dao-giai-khat-thanh-loc-co-the-7img1.jpg', 'tra-bi-dao-giai-khat-thanh-loc-co-the-7img1.jpg', 'tra-bi-dao-giai-khat-thanh-loc-co-the-7img1.jpg', 'tra-bi-dao', 'Demo', '2026-11-09'
WHERE NOT EXISTS (SELECT 1 FROM `products` WHERE `id` = 5);

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_detail`, `product_price`, `total_stock`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`, `createBy`, `createDate`)
SELECT 6, 'Bánh flan', 3, 1, 1, 1, 'Bánh flan — sản phẩm mẫu dùng để thực hành.', 'Thông tin và giá minh họa cho bài tập.', 12000, 20, 1, 10, 'banh-plan-co-the-dat-theo-phan-tuy-chon-gia-22img1.jpg', 'banh-plan-co-the-dat-theo-phan-tuy-chon-gia-22img1.jpg', 'banh-plan-co-the-dat-theo-phan-tuy-chon-gia-22img1.jpg', 'banh-plan-co-the-dat-theo-phan-tuy-chon-gia-22img1.jpg', 'banh-flan', 'Demo', '2026-11-09'
WHERE NOT EXISTS (SELECT 1 FROM `products` WHERE `id` = 6);

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_detail`, `product_price`, `total_stock`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`, `createBy`, `createDate`)
SELECT 7, 'Sương sáo', 1, 1, 1, 1, 'Sương sáo — sản phẩm mẫu dùng để thực hành.', 'Thông tin và giá minh họa cho bài tập.', 15000, 20, 0, 0, 'suong-sao-nha-tu-lam-ngon-bo-duong-8img1.jpg', 'suong-sao-nha-tu-lam-ngon-bo-duong-8img1.jpg', 'suong-sao-nha-tu-lam-ngon-bo-duong-8img1.jpg', 'suong-sao-nha-tu-lam-ngon-bo-duong-8img1.jpg', 'suong-sao', 'Demo', '2026-11-09'
WHERE NOT EXISTS (SELECT 1 FROM `products` WHERE `id` = 7);

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_detail`, `product_price`, `total_stock`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`, `createBy`, `createDate`)
SELECT 8, 'Trà sữa socola', 2, 2, 2, 1, 'Trà sữa socola — sản phẩm mẫu dùng để thực hành.', 'Thông tin và giá minh họa cho bài tập.', 25000, 20, 0, 0, 'tra-sua-vi-socola-chan-chau-pudding-15k-20k-5img1.jpg', 'tra-sua-vi-socola-chan-chau-pudding-15k-20k-5img1.jpg', 'tra-sua-vi-socola-chan-chau-pudding-15k-20k-5img1.jpg', 'tra-sua-vi-socola-chan-chau-pudding-15k-20k-5img1.jpg', 'tra-sua-socola', 'Demo', '2026-11-09'
WHERE NOT EXISTS (SELECT 1 FROM `products` WHERE `id` = 8);

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_detail`, `product_price`, `total_stock`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`, `createBy`, `createDate`)
SELECT 9, 'Trà sữa đào', 3, 2, 2, 1, 'Trà sữa đào — sản phẩm mẫu dùng để thực hành.', 'Thông tin và giá minh họa cho bài tập.', 25000, 20, 1, 10, 'tra-sua-vi-dao-chan-chau-pudding-15k-20k-6img1.jpg', 'tra-sua-vi-dao-chan-chau-pudding-15k-20k-6img1.jpg', 'tra-sua-vi-dao-chan-chau-pudding-15k-20k-6img1.jpg', 'tra-sua-vi-dao-chan-chau-pudding-15k-20k-6img1.jpg', 'tra-sua-dao', 'Demo', '2026-11-09'
WHERE NOT EXISTS (SELECT 1 FROM `products` WHERE `id` = 9);

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_detail`, `product_price`, `total_stock`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`, `createBy`, `createDate`)
SELECT 10, 'Chân gà sả tắc', 1, 1, 1, 1, 'Chân gà sả tắc — sản phẩm mẫu dùng để thực hành.', 'Thông tin và giá minh họa cho bài tập.', 45000, 20, 0, 0, 'chan-ga-xa-tac-kem-nuoc-xot-cham-thom-ngon-34img1.jpg', 'chan-ga-xa-tac-kem-nuoc-xot-cham-thom-ngon-34img1.jpg', 'chan-ga-xa-tac-kem-nuoc-xot-cham-thom-ngon-34img1.jpg', 'chan-ga-xa-tac-kem-nuoc-xot-cham-thom-ngon-34img1.jpg', 'chan-ga-sa-tac', 'Demo', '2026-11-09'
WHERE NOT EXISTS (SELECT 1 FROM `products` WHERE `id` = 10);

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_detail`, `product_price`, `total_stock`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`, `createBy`, `createDate`)
SELECT 11, 'Sữa tươi Milo', 2, 2, 2, 1, 'Sữa tươi Milo — sản phẩm mẫu dùng để thực hành.', 'Thông tin và giá minh họa cho bài tập.', 28000, 20, 0, 0, 'sua-tuoi-milo-cacao-dam-33img1.jpg', 'sua-tuoi-milo-cacao-dam-33img1.jpg', 'sua-tuoi-milo-cacao-dam-33img1.jpg', 'sua-tuoi-milo-cacao-dam-33img1.jpg', 'sua-tuoi-milo', 'Demo', '2026-11-09'
WHERE NOT EXISTS (SELECT 1 FROM `products` WHERE `id` = 11);

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_detail`, `product_price`, `total_stock`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`, `createBy`, `createDate`)
SELECT 12, 'Trà tắc', 3, 2, 2, 1, 'Trà tắc — sản phẩm mẫu dùng để thực hành.', 'Thông tin và giá minh họa cho bài tập.', 12000, 20, 1, 10, 'tra-tac---giai-khat--thanh-loc-co-the--khong-beo-31img1.jpg', 'tra-tac---giai-khat--thanh-loc-co-the--khong-beo-31img1.jpg', 'tra-tac---giai-khat--thanh-loc-co-the--khong-beo-31img1.jpg', 'tra-tac---giai-khat--thanh-loc-co-the--khong-beo-31img1.jpg', 'tra-tac', 'Demo', '2026-11-09'
WHERE NOT EXISTS (SELECT 1 FROM `products` WHERE `id` = 12);

-- Public LOCAL DEMO credentials only. Never deploy these accounts to an Internet-facing server.
-- admin.demo / staff.demo / customer.demo : DemoHa2026!

SET @demo_old_sql_mode = @@SESSION.sql_mode;
SET SESSION sql_mode = CONCAT_WS(',', @@SESSION.sql_mode, 'NO_AUTO_VALUE_ON_ZERO');

INSERT INTO `roles` (`id`, `role_name`, `role_desc`)
SELECT 0, 'Khách hàng', 'Vai trò demo'
WHERE NOT EXISTS (SELECT 1 FROM `roles` WHERE `id` = 0);

INSERT INTO `roles` (`id`, `role_name`, `role_desc`)
SELECT 1, 'Quản trị viên', 'Vai trò demo'
WHERE NOT EXISTS (SELECT 1 FROM `roles` WHERE `id` = 1);

INSERT INTO `roles` (`id`, `role_name`, `role_desc`)
SELECT 2, 'Nhân viên', 'Vai trò demo'
WHERE NOT EXISTS (SELECT 1 FROM `roles` WHERE `id` = 2);

INSERT INTO users (`user_username`, `user_password`, `user_name`, `role_id`, `user_avatar`, `user_email`, `user_phone`, `user_address`, `verified`)
SELECT 'admin.demo', '$2y$10$eKiyaempBEgyNe2mYb1Mcea6tBOobrNGSD2lgE6uooty74LMPoYyS', 'Quản trị demo', 1, 'author-auto.png', 'admin.demo@example.com', '', 'Dữ liệu minh họa', 1
WHERE NOT EXISTS (SELECT 1 FROM users WHERE user_username = 'admin.demo' OR user_email = 'admin.demo@example.com');

INSERT INTO users (`user_username`, `user_password`, `user_name`, `role_id`, `user_avatar`, `user_email`, `user_phone`, `user_address`, `verified`)
SELECT 'staff.demo', '$2y$10$eKiyaempBEgyNe2mYb1Mcea6tBOobrNGSD2lgE6uooty74LMPoYyS', 'Nhân viên demo', 2, 'author-auto.png', 'staff.demo@example.com', '', 'Dữ liệu minh họa', 1
WHERE NOT EXISTS (SELECT 1 FROM users WHERE user_username = 'staff.demo' OR user_email = 'staff.demo@example.com');

INSERT INTO users (`user_username`, `user_password`, `user_name`, `role_id`, `user_avatar`, `user_email`, `user_phone`, `user_address`, `verified`)
SELECT 'customer.demo', '$2y$10$eKiyaempBEgyNe2mYb1Mcea6tBOobrNGSD2lgE6uooty74LMPoYyS', 'Khách hàng demo', 0, 'author-auto.png', 'customer.demo@example.com', '', 'Dữ liệu minh họa', 1
WHERE NOT EXISTS (SELECT 1 FROM users WHERE user_username = 'customer.demo' OR user_email = 'customer.demo@example.com');

INSERT INTO `contacts` (`id`, `link_Logo`, `contact_name`, `address`, `country`, `phone`, `phone_2`, `email`, `link_Contact`, `link_Facebook`, `link_Twitter`, `link_linkedin`, `zalo`, `link_about`, `about_footer`, `favicon`)
SELECT 1, 'logo-bep-nha-ha.png', 'Bếp Nhà Hà Store', 'Địa chỉ cửa hàng demo — cập nhật trong quản trị', 'Việt Nam', '', '', 'store@example.com', 'feedback/', '', '', '', '', 'home/', 'Website thực hành bán đồ ăn vặt và đồ uống.', 'logo-bep-nha-ha.png'
WHERE NOT EXISTS (SELECT 1 FROM `contacts` WHERE `id` = 1);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 1, 'Trang chủ', 'home/', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 1);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 2, 'Tất cả sản phẩm', 'shop/', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 2);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 3, 'Sản phẩm nổi bật', 'type/1-san-pham-hot', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 3);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 4, 'Sản phẩm mới', 'type/2-san-pham-moi', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 4);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 5, 'Sản phẩm giảm giá', 'type/3-san-pham-giam-gia', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 5);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 6, 'Đồ ăn vặt', 'category/1-do-an-vat', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 6);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 7, 'Đồ uống', 'category/2-do-uong', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 7);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 8, 'Giỏ hàng', 'cart/', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 8);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 9, 'Đăng ký', 'register/', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 9);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 10, 'Quản trị', 'admin.php', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 10);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 11, 'Gửi phản hồi', 'feedback/', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 11);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 12, 'Tìm sản phẩm', 'search/', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 12);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 13, 'Khám phá', '#', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 13);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 14, 'Danh mục', '#', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 14);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 15, 'Mua hàng', '#', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 15);

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`)
SELECT 16, 'Tài khoản', '#', 'Menu mẫu', 0
WHERE NOT EXISTS (SELECT 1 FROM `menu_footers` WHERE `id` = 16);

INSERT INTO `slides` (`id`, `slide_name`, `status`, `slide_img1`, `slide_text1`, `slide_img2`, `slide_text2`, `slide_img3`, `slide_text3`, `slide_img4`, `slide_text4`, `slide_img5`, `slide_text5`)
SELECT 1, 'Banner cửa hàng demo', 1, 'image1-1-homepage-1.jpg', 'Món ngon mỗi ngày — Bếp Nhà Hà Store', 'image2-1-homepage-1.jpg', 'Món ngon mỗi ngày — Bếp Nhà Hà Store', 'image3-1-homepage-1.jpg', 'Món ngon mỗi ngày — Bếp Nhà Hà Store', 'image1-3-homepage-1.jpg', 'Món ngon mỗi ngày — Bếp Nhà Hà Store', 'image1-1-homepage-1.jpg', 'Món ngon mỗi ngày — Bếp Nhà Hà Store'
WHERE NOT EXISTS (SELECT 1 FROM `slides` WHERE `id` = 1);

SET SESSION sql_mode = @demo_old_sql_mode;
