DROP TABLE IF EXISTS cart_user;

CREATE TABLE `cart_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_id_user` (`user_id`),
  KEY `fk_id_product` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;








DROP TABLE IF EXISTS categories;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `category_position` int(4) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_supply_id` (`supply_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






DROP TABLE IF EXISTS comments;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'author-comment.png',
  `editTime` datetime DEFAULT NULL,
  `product_id` int(11) DEFAULT 0,
  `post_id` int(11) DEFAULT 0,
  `page_id` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_id_product` (`product_id`),
  KEY `fk_id_user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;










DROP TABLE IF EXISTS contacts;

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_Logo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_Contact` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Facebook` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_Twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zalo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_footer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS feedbacks;

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` int(20) DEFAULT NULL,
  `subject` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `editTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  KEY `fk_product_id` (`product_id`),
  KEY `fk_order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
























DROP TABLE IF EXISTS introduce;

CREATE TABLE `introduce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_footer` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS media;

CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
















DROP TABLE IF EXISTS menu_footers;

CREATE TABLE `menu_footers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
































DROP TABLE IF EXISTS options;

CREATE TABLE `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS order_detail;

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id` (`order_id`),
  KEY `fk_id_product` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;














































DROP TABLE IF EXISTS orders;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_total` double NOT NULL,
  `createtime` datetime NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `editTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


















DROP TABLE IF EXISTS posts;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_author` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Draft',
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_type` int(11) NOT NULL DEFAULT 1,
  `post_modified_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalView` int(11) NOT NULL DEFAULT 0,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_avatar` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_author` (`post_author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;














DROP TABLE IF EXISTS products;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_typeid` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `product_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` int(11) NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createBy` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `editBy` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editDate` datetime DEFAULT NULL,
  `totalView` int(11) DEFAULT 0,
  `saleoff` tinyint(11) DEFAULT 0,
  `percentoff` int(11) DEFAULT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_id` (`category_id`),
  KEY `fk_supply_id` (`supply_id`),
  KEY `fk_type_id` (`product_typeid`),
  KEY `fk_id_sub_category` (`sub_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;














\n<h3><strong>T&aacute;c dụng của tr&agrave; b&iacute; đao</strong></h3>
\n
\n<p style=\"margin-left:40px\">1. Tr&agrave; b&iacute; đao gi&uacute;p giảm c&acirc;n</p>
\n
\n<p style=\"margin-left:40px\">2. Tr&agrave; b&iacute; đao gi&uacute;p đẹp da</p>
\n
\n<p style=\"margin-left:40px\">3. Tr&agrave; b&iacute; đao gi&uacute;p thải độc detox</p>
\n
\n<p style=\"margin-left:40px\">4. Tr&agrave; b&iacute; đao gi&uacute;p giải nhiệt</p>
\n
\n<p style=\"margin-left:40px\">5. Tr&agrave; b&iacute; đao tốt cho hệ ti&ecirc;u ho&aacute;</p>
\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />
\n<br />
\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />
\n<br />
\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />
\n<br />
\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />
\n<br />
\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />
\n<br />
\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn k&iacute;ch cỡ v&agrave; gi&aacute; kh&aacute;c nhau khi đặt h&agrave;ng n&egrave;.( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)","","2020-03-19","Tân Hồng ","2020-04-11 14:10:55","53","0","0","tra-bi-dao-giai-khat-thanh-loc-co-the-7img1.jpg","tra-bi-dao-giai-khat-thanh-loc-co-the-7img2.jpg","tra-bi-dao-giai-khat-thanh-loc-co-the-7img3.jpg","","tra-bi-dao-giai-khat-thanh-loc-co-the");


\n
\n<p>Sương s&aacute;o kh&ocirc;ng chỉ l&agrave; thứ giải kh&aacute;t th&ocirc;ng thường m&agrave; c&ograve;n l&agrave; một t&acirc;n dược.<strong><em>&nbsp;</em></strong>Theo Đ&ocirc;ng y, l&aacute; sương s&aacute;o c&oacute; vị ngọt, t&iacute;nh m&aacute;t, c&oacute; t&aacute;c dụng giải nhiệt, gi&uacute;p c&aacute;c qu&aacute; tr&igrave;nh chuyển h&oacute;a trong cơ thể diễn ra dễ d&agrave;ng&hellip; n&ecirc;n thường được sử dụng để nấu v&agrave; chế biến th&agrave;nh m&oacute;n thạch sương s&aacute;o giải nhiệt trong những ng&agrave;y h&egrave; oi bức, n&oacute;ng nực.&nbsp;Hiện nay, ở nhiều nước ch&acirc;u &Aacute;&nbsp;người ta cho rằng, bột th&acirc;n l&aacute; c&acirc;y sương s&aacute;o c&oacute; t&aacute;c dụng lợi tiểu.</p>
\n
\n<hr />
\n<p>Đặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />
\n<br />
\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />
\n<br />
\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />
\n<br />
\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />
\n<br />
\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />
\n<br />
\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn nhiều phần gi&aacute; kh&aacute;c nhau( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)</p>
\n","","2020-03-19","Tân Hồng ","2020-04-11 14:38:56","34","0","0","suong-sao-nha-tu-lam-ngon-bo-duong-8img1.jpg","","","","suong-sao-nha-tu-lam-ngon-bo-duong");










\n<hr /><br />
\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />
\n<br />
\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />
\n<br />
\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />
\n<br />
\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />
\n<br />
\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />
\n<br />
\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn số lượng, k&iacute;ch cỡ, v&agrave; setup gi&aacute; tiền kh&aacute;c nhau khi đặt h&agrave;ng( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)","","2020-03-25","Tân Hồng ","2020-04-11 17:41:36","108","1","28","banh-plan-co-the-dat-theo-phan-tuy-chon-gia-22img1.jpg","banh-plan-22img2.jpg","banh-plan-co-the-dat-theo-phan-tuy-chon-gia-22img3.jpg","banh-plan-22img4.jpg","banh-plan-co-the-dat-theo-phan-tuy-chon-gia");




\n<hr /><br />
\nĐặt h&agrave;ng ngay qu&aacute;n m&igrave;nh hỗ trợ free ship trong b&aacute;n k&iacute;nh 5km v&agrave; hỗ trợ tận t&igrave;nh cũng như c&oacute; nhiều ưu đ&atilde;i cho c&aacute;c kh&aacute;ch h&agrave;ng th&acirc;n thiết ạ.<br />
\n<br />
\nC&aacute;c bạn nhớ tạo 1 t&agrave;i khoản v&agrave; đặt h&agrave;ng để lưu đơn h&agrave;ng thật nhiều, qu&aacute;n m&igrave;nh sẽ c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng th&acirc;n thiết nh&eacute;! Cảm ơn c&aacute;c bạn.<br />
\n<br />
\n<strong>HDSD</strong>: D&ugrave;ng ngay<br />
\n<br />
\n<strong>Bảo quản</strong>: Tr&aacute;nh &aacute;nh nắng trực tiếp<br />
\n<br />
\nCam Kết Vệ Sinh An To&agrave;n Thực Phẩm.<br />
\n<br />
\nQu&yacute; kh&aacute;ch c&oacute; thể t&ugrave;y chọn số lượng, k&iacute;ch cỡ, v&agrave; setup gi&aacute; tiền kh&aacute;c nhau khi đặt h&agrave;ng( Khi đặt h&agrave;ng qu&yacute; kh&aacute;ch nhớ ghi lời nhắn lại nh&eacute;&nbsp;<img alt=\"heart\" src=\"http://localhost/php-mvc-shop/admin/themes/plugins/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" />)","","2020-04-10","Tân Hồng ","2020-04-11 17:40:19","58","0","0","ly-banh-plan-5-cai-ket-hop-sua-tuoi-va-cafe-26img1.jpg","ly-banh-plan-5-cai-ket-hop-sua-tuoi-va-cafe-26img2.jpg","ly-banh-plan-5-cai-ket-hop-sua-tuoi-va-cafe-26img3.jpg","","ly-banh-plan-5-cai-ket-hop-sua-tuoi-va-cafe");












DROP TABLE IF EXISTS roles;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_desc` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS slides;

CREATE TABLE `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_img1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_text1` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_img2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_text2` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_img3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_text3` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_img4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_text4` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_img5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_text5` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS subcategory;

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supply_id` int(11) DEFAULT 1,
  `category_id` int(11) DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_id` (`category_id`),
  KEY `fk_supply_id` (`supply_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;












DROP TABLE IF EXISTS supplies;

CREATE TABLE `supplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supply_name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS types;

CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `user_avatar` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT 'author-auto.png',
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `verified` int(11) NOT NULL DEFAULT 0,
  `verificationCode` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_role` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


















DROP TABLE IF EXISTS users_online;

CREATE TABLE `users_online` (
  `session` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(34) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(550) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateonline` datetime NOT NULL,
  PRIMARY KEY (`session`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;











































