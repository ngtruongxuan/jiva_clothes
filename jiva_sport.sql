/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100130
 Source Host           : localhost:3306
 Source Schema         : jiva_sport

 Target Server Type    : MySQL
 Target Server Version : 100130
 File Encoding         : 65001

 Date: 21/07/2018 00:54:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'EN',
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Giày Thể Thao', 0, 'Điện thoại', 'EN', '2018-06-21 13:42:42', 'xuan', '2018-06-27 15:19:35', 'xuan');
INSERT INTO `categories` VALUES (2, 'Đồ Du Lịch', 0, NULL, 'EN', '2018-06-20 11:25:57', 'xuan', '2018-06-21 13:49:31', 'xuan');
INSERT INTO `categories` VALUES (3, 'Nike', 0, NULL, 'DI', '2018-06-20 15:45:16', 'xuan', '2018-06-27 15:28:11', 'xuan');
INSERT INTO `categories` VALUES (4, 'Adidas', 0, NULL, 'EN', '2018-06-20 16:42:39', 'xuan', '2018-06-20 16:42:39', 'xuan');
INSERT INTO `categories` VALUES (5, 'Giày Cao Gót', 0, NULL, 'EN', '2018-06-20 16:42:46', 'xuan', '2018-06-20 16:42:46', 'xuan');
INSERT INTO `categories` VALUES (6, 'New', 0, NULL, 'EN', '2018-06-20 17:13:11', 'xuan', '2018-06-20 17:13:11', 'xuan');
INSERT INTO `categories` VALUES (18, 'Size 40', 1, NULL, 'EN', '2018-07-18 14:11:24', NULL, '2018-07-18 14:11:24', NULL);
INSERT INTO `categories` VALUES (19, 'Size 42', 1, NULL, 'EN', '2018-07-18 14:11:34', NULL, '2018-07-18 14:11:34', NULL);
INSERT INTO `categories` VALUES (20, '12', 18, NULL, 'EN', '2018-07-18 14:29:53', NULL, '2018-07-18 14:29:53', NULL);

-- ----------------------------
-- Table structure for code_details
-- ----------------------------
DROP TABLE IF EXISTS `code_details`;
CREATE TABLE `code_details`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cm_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cm_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of code_details
-- ----------------------------
INSERT INTO `code_details` VALUES (1, 'AT', 'Active', '2018-02-06 09:17:07', NULL, '2018-02-06 09:17:07', NULL);
INSERT INTO `code_details` VALUES (2, 'IA', 'Inactive', '2018-02-06 09:18:17', NULL, '2018-02-06 09:18:17', NULL);
INSERT INTO `code_details` VALUES (3, 'EN', 'Enable', '2018-02-06 09:18:24', NULL, '2018-02-06 09:18:24', NULL);
INSERT INTO `code_details` VALUES (4, 'DI', 'Disable', '2018-02-06 09:18:34', NULL, '2018-02-06 09:18:34', NULL);

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies`  (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_id` int(11) NULL DEFAULT NULL,
  `status` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for function_roles
-- ----------------------------
DROP TABLE IF EXISTS `function_roles`;
CREATE TABLE `function_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `function_id` int(11) NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EN',
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of function_roles
-- ----------------------------
INSERT INTO `function_roles` VALUES (1, 1, 1, 'EN', NULL, '2018-02-23 15:39:26', NULL, '2018-02-23 15:39:26');
INSERT INTO `function_roles` VALUES (28, 1, 6, 'EN', NULL, '2018-06-09 09:07:26', NULL, '2018-06-09 09:07:26');
INSERT INTO `function_roles` VALUES (29, 1, 2, 'EN', NULL, '2018-06-09 09:08:18', NULL, '2018-06-09 09:08:18');
INSERT INTO `function_roles` VALUES (30, 1, 3, 'EN', NULL, '2018-06-09 09:08:33', NULL, '2018-06-09 09:08:33');
INSERT INTO `function_roles` VALUES (31, 1, 4, 'EN', NULL, '2018-06-09 09:08:34', NULL, '2018-06-09 09:08:34');
INSERT INTO `function_roles` VALUES (32, 1, 7, 'EN', NULL, '2018-06-09 09:08:35', NULL, '2018-06-09 09:08:35');
INSERT INTO `function_roles` VALUES (33, 1, 13, 'EN', NULL, '2018-06-09 09:08:37', NULL, '2018-06-09 09:08:37');
INSERT INTO `function_roles` VALUES (34, 1, 12, 'EN', NULL, '2018-06-09 09:08:37', NULL, '2018-06-09 09:08:37');
INSERT INTO `function_roles` VALUES (35, 2, 13, 'EN', NULL, '2018-06-20 09:48:55', NULL, '2018-06-20 09:48:55');
INSERT INTO `function_roles` VALUES (36, 2, 12, 'EN', NULL, '2018-06-20 09:48:55', NULL, '2018-06-20 09:48:55');
INSERT INTO `function_roles` VALUES (37, 1, 14, 'EN', NULL, '2018-06-21 16:30:34', NULL, '2018-06-21 16:30:34');
INSERT INTO `function_roles` VALUES (38, 2, 14, 'EN', NULL, '2018-06-27 13:54:03', NULL, '2018-06-27 13:54:03');
INSERT INTO `function_roles` VALUES (39, 3, 14, 'EN', NULL, '2018-06-28 11:24:04', NULL, '2018-06-28 11:24:04');
INSERT INTO `function_roles` VALUES (40, 3, 12, 'EN', NULL, '2018-06-28 11:24:04', NULL, '2018-06-28 11:24:04');

-- ----------------------------
-- Table structure for functions
-- ----------------------------
DROP TABLE IF EXISTS `functions`;
CREATE TABLE `functions`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `function_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `controller` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'fa fa-circle-o',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of functions
-- ----------------------------
INSERT INTO `functions` VALUES (1, 'Dashboard', 0, NULL, '/admin', 'fa fa-dashboard', 'EN', '2018-02-06 09:16:07', NULL, '2018-02-06 09:16:07', NULL);
INSERT INTO `functions` VALUES (2, 'Admin Management', 0, NULL, NULL, 'fa fa-pie-chart', 'EN', '2018-02-06 09:16:07', NULL, '2018-02-06 09:16:07', NULL);
INSERT INTO `functions` VALUES (3, 'User', 2, NULL, '/admin/user', 'fa fa-circle-o', 'EN', '2018-02-06 09:16:07', NULL, '2018-02-06 09:16:07', NULL);
INSERT INTO `functions` VALUES (4, 'Function', 2, NULL, '/admin/function', 'fa fa-circle-o', 'EN', '2018-02-06 09:16:07', NULL, '2018-02-06 09:16:07', NULL);
INSERT INTO `functions` VALUES (6, 'Permission', 2, NULL, '/admin/permission', 'fa fa-circle-o', 'EN', '2018-02-06 09:25:28', NULL, '2018-02-06 09:25:28', NULL);
INSERT INTO `functions` VALUES (7, 'Role', 2, NULL, '/admin/role', 'fa fa-circle-o', 'EN', '2018-02-22 17:37:28', NULL, '2018-02-22 17:37:28', NULL);
INSERT INTO `functions` VALUES (12, 'Master Data', 0, NULL, NULL, 'fa fa-circle-o', 'EN', '2018-05-24 14:09:11', NULL, '2018-05-24 14:09:11', NULL);
INSERT INTO `functions` VALUES (13, 'Category', 12, NULL, '/admin/category', 'fa fa-circle-o', 'EN', '2018-05-24 14:09:25', NULL, '2018-05-24 14:09:25', NULL);
INSERT INTO `functions` VALUES (14, 'Item', 12, NULL, '/admin/item', 'fa fa-circle-o', 'EN', '2018-06-21 16:30:16', NULL, '2018-06-21 16:30:16', NULL);

-- ----------------------------
-- Table structure for item_images
-- ----------------------------
DROP TABLE IF EXISTS `item_images`;
CREATE TABLE `item_images`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 215 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of item_images
-- ----------------------------
INSERT INTO `item_images` VALUES (203, 1, '/upload/item/1_1_20180702165939.jpg', NULL, 'EN', '2018-07-02 16:59:39', 'xuan', '2018-07-02 16:59:39', 'xuan');
INSERT INTO `item_images` VALUES (204, 1, '/upload/item/1_1_20180702170044.jpg', NULL, 'EN', '2018-07-02 17:00:44', 'xuan', '2018-07-02 17:00:44', 'xuan');
INSERT INTO `item_images` VALUES (205, 1, '/upload/item/1_2_20180702170044.jpg', NULL, 'EN', '2018-07-02 17:00:44', 'xuan', '2018-07-02 17:00:44', 'xuan');
INSERT INTO `item_images` VALUES (211, 7, '/upload/item/7_1_20180703204801.jpg', NULL, 'EN', '2018-07-03 20:48:02', 'xuan', '2018-07-03 20:48:02', 'xuan');
INSERT INTO `item_images` VALUES (212, 7, '/upload/item/7_2_20180703204802.jpg', NULL, 'EN', '2018-07-03 20:48:02', 'xuan', '2018-07-03 20:48:02', 'xuan');
INSERT INTO `item_images` VALUES (213, 7, '/upload/item/7_3_20180703204802.jpg', NULL, 'EN', '2018-07-03 20:48:02', 'xuan', '2018-07-03 20:48:02', 'xuan');
INSERT INTO `item_images` VALUES (214, 7, '/upload/item/7_4_20180703204802.jpg', NULL, 'EN', '2018-07-03 20:48:02', 'xuan', '2018-07-03 20:48:02', 'xuan');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `company_id` int(11) NULL DEFAULT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `des` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (1, 'Item', NULL, 1, NULL, 'Điện thoại', NULL, NULL, '/upload/item/1_20180702170428.jpg', 'EN', '2018-06-21 17:28:45', 'xuan', '2018-06-21 17:28:45', 'xuan');
INSERT INTO `items` VALUES (2, 'Test 4', NULL, 1, NULL, NULL, NULL, NULL, '/upload/item/2_20180702161132.jpg', 'EN', '2018-06-21 17:32:07', 'xuan', '2018-06-23 09:12:35', 'xuan');
INSERT INTO `items` VALUES (3, 'Test 123', NULL, 1, NULL, 'Cấu hình chi tiết', NULL, '<h2>Tr&igrave;nh l&agrave;ng Honor 10 thiết kế đẹp, cấu h&igrave;nh mạnh, nhiều t&iacute;nh năng hấp dẫn</h2>\n\n<p>Vừa qua,&nbsp;<strong>Honor 10&nbsp;</strong>đ&atilde; ch&iacute;nh thức ra mắt tại một sự kiện tại Trung Quốc với sự ch&uacute; &yacute; của nhiều d&acirc;n h&acirc;m mộ c&ocirc;ng nghệ.</p>\n\n<h3>Thiết kế sang trọng</h3>\n\n<p><strong>Honor 10</strong>&nbsp;sỡ hữu thiết kế đặc biệt từ kinh được v&aacute;t cong, v&agrave; cả khung nh&ocirc;m viền k&iacute;nh b&ecirc;n ngo&agrave;i tạo độ rắn chắc c&ugrave;ng n&eacute;t thẩm mỹ nổi bật bậc nhất.</p>\n\n<p>M&agrave;n h&igrave;nh của m&aacute;y c&oacute; k&iacute;ch thước kh&aacute; lớn với 5.84 inch c&ugrave;ng độ ph&acirc;n &nbsp;giải 2280 x 1080 pixel cho chất lượng hiển thị sắc n&eacute;t. Chưa hết, c&ograve;n c&oacute; sự hỗ trợ đặc biệt từ tấm nền IPS cho h&igrave;nh ảnh s&aacute;ng hơn với m&agrave;u sắc rực rỡ.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Hình ảnh Huawei Honor 10\" src=\"https://bachlongmobile.com/media/wysiwyg/12/h101.jpg\" style=\"width:700px\" /></p>\n\n<p>B&ecirc;n cạnh đ&oacute;, Honor 10 cũng chứng minh khả năng bắt kịp xu hướng mới của m&igrave;nh với notch &ldquo;tai thỏ&rdquo; đang l&agrave; tr&agrave;o lưu hot hiện nay với tỉ lệ m&agrave;n h&igrave;nh tr&agrave;n viền tối đa 19:9.</p>\n\n<p>Người d&ugrave;ng ho&agrave;n to&agrave;n c&oacute; thể chủ động trong thiết kế của m&aacute;y với chế độ bật/ tắt tai thỏ.</p>\n\n<p>N&uacute;t home b&ecirc;n dưới vẫn sẽ giữ lại với viền bezel b&ecirc;n ngo&agrave;i v&agrave; một cảm biến v&acirc;n tay b&ecirc;n trong cho khả năng mở kh&oacute;a nhanh ch&oacute;ng ngay cả với tay ướt.</p>\n\n<h3>Cấu h&igrave;nh mạnh mẽ</h3>\n\n<p>Vẫn l&agrave; một trong những smartphone &ldquo;x&agrave;i&rdquo; h&agrave;ng c&acirc;y nh&agrave; l&aacute; vườn với chip xử l&yacute; Kirin 970 do ch&iacute;nh Huawei nghi&ecirc;n cứa v&agrave; ph&aacute;t triển,&nbsp;<em>Honor 10</em>&nbsp;c&oacute; thể xử l&yacute; ho&agrave;n hảo c&aacute;c t&aacute;c vụ của người d&ugrave;ng với tốc độ xử l&yacute; tối đa.</p>\n\n<p>Cấu h&igrave;nh bộ nhớ m&aacute;y kh&aacute; đa dạng cho ph&eacute;p người d&ugrave;ng c&oacute; thể chọn lựa một bộ nhớ ph&ugrave; hợp với nhu cầu sử dụng. Cụ thể l&agrave; một phi&ecirc;n bản sẽ c&oacute; bộ nhớ RAM 6GB + ROM 64 GB v&agrave; một phi&ecirc;n bản kh&aacute;c c&oacute; RAM 6GB + ROM 128GB.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Hình ảnh Huawei Honor 10\" src=\"https://bachlongmobile.com/media/wysiwyg/12/h102.jpg\" style=\"width:700px\" /></p>\n\n<p>Khi xuất xưởng, Honor 10 sẽ khởi chạy với hệ điều h&agrave;nh Android Oreo v&agrave; giao diện t&ugrave;y biến EMUI 8.1.</p>\n\n<h3>Camera ấn tượng</h3>\n\n<p>Camera ch&iacute;nh của m&aacute;y c&oacute; độ ph&acirc;n giải 16 MP + 24 MP v&agrave; khẩu độ f/1.8 cho khả năng chụp ảnh x&oacute;a ph&ocirc;ng độc đ&aacute;o. Đ&acirc;y cũng l&agrave; tr&agrave;o lưu đang hot hiện nay trong giới trẻ v&agrave; cả t&iacute;n đồ m&ecirc; nhiếp ảnh.</p>\n\n<p>Camera selfie với cảm biến IMX578 từ Sony c&oacute; độ ph&acirc;n giải 24MP cho những bức ảnh selfie chất lượng. Song song đ&oacute;, c&ograve;n c&oacute; sự hỗ trợ đắc lực từ tr&iacute; tuệ nh&acirc;n tạo AI cho m&aacute;y ảnh khả năng nhận diện tốt c&aacute;c bối cảnh xung quanh v&agrave; những đặc t&iacute;nh của người d&ugrave;ng từ đ&oacute; điều chỉnh c&aacute;c th&ocirc;ng số t&iacute;nh năng để c&oacute; thể tạo n&ecirc;n những h&igrave;nh ảnh đẹp xuất sắc nhất.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"Hình ảnh Huawei Honor 10\" src=\"https://bachlongmobile.com/media/wysiwyg/12/h103.jpg\" style=\"width:700px\" /></p>\n\n<p>Camera selfie c&ograve;n hỗ trợ tốt cho chức năng nhận diện gương mặt của m&aacute;y. Đ&acirc;y l&agrave; t&iacute;nh năng bảo mật được y&ecirc;u th&iacute;ch ở c&aacute;c d&ograve;ng smartphone cao cấp hiện nay.</p>\n\n<p>Tuy smartphone n&agrave;y được ấn định ở ph&acirc;n kh&uacute;c tầm trung cận cao cấp nhưng cũng được trang bị những t&iacute;nh năng ho&agrave;n hảo như tr&ecirc;n một chiếc Flagship. Vi&ecirc;n pin của m&aacute;y được trang bị dung lượng kh&aacute; lớn với 3500 mAh v&agrave; c&oacute; cả c&ocirc;ng nghệ sạc nhanh Super Charge 5V/4.5A. Khi thử nghiệm th&igrave; m&aacute;y cho một kết quả đầy bất ngờ với khả năng sạc pin 50% trong v&ograve;ng 25 ph&uacute;t.</p>\n\n<p>Ngo&agrave;i ra,&nbsp;<strong>Honor 10</strong>&nbsp;c&ograve;n c&oacute; những chức năng kh&aacute;c như Wifi băng tần k&eacute;p 802.11ac, Bluetooth 4.2, cỗng USB &ndash; C, GPS, &acirc;m thanh đa k&ecirc;nh 7.1, hỗ trợ jack tai nghe 3.5.</p>', NULL, 'EN', '2018-06-23 09:39:50', 'xuan', '2018-06-23 10:09:29', 'xuan');
INSERT INTO `items` VALUES (4, 'Huawei Nova 3e', NULL, 1, NULL, NULL, NULL, '<h2><a href=\"https://www.thegioididong.com/dtdd-huawei\" target=\"_blank\">Huawei</a> Nova 3e là phiên bản kế nhiệm hoàn hảo của chiếc <a href=\"https://www.thegioididong.com/dtdd/huawei-nova-2i\" target=\"_blank\">Nova 2i</a> vốn đã đạt được nhiều thành công tại thị trường Việt Nam với màn hình tràn viền \"tai thỏ\" mới và nhiều tính năng cao cấp.</h2>\r\n\r\n<h3><strong>Thiết kế \"tai thỏ\"</strong></h3>\r\n\r\n<p>Huawei Nova 3e sở hữu thiết kế thời thượng nhất hiện nay với phần viền màn hình được làm cực mỏng đến cả cạnh trên của máy, tạo nên hình dáng \"tai thỏ\" tương tự như iPhone X, rất đẹp và độc đáo.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/154260/huawei-nova-3e-han5.jpg\" onclick=\"return false;\"><img alt=\"huawei nova 3e\" src=\"https://cdn4.tgdd.vn/Products/Images/42/154260/huawei-nova-3e-han5.jpg\" /></a></p>\r\n\r\n<p><em>Thiết kế độc đáo</em></p>\r\n\r\n<p>Mặt trước và sau của máy đều được phủ kính hoàn toàn cho vẻ đẹp bóng bẩy, viền máy kim loại chắc chắn và sang trọng hơn. Bên cạnh đó cảm biến vân tay đặt ở mặt lưng tương tự đàn anh Nova 2i.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/154260/huawei-nova-3e-han1.jpg\" onclick=\"return false;\"><img alt=\"huawei nova 3e\" src=\"https://cdn1.tgdd.vn/Products/Images/42/154260/huawei-nova-3e-han1.jpg\" /></a></p>\r\n\r\n<p><em>Chất liệu kính bóng bẩy</em></p>\r\n\r\n<p>Màn hình tuyệt đẹp của Huawei Nova 3e sở hữu độ phân giải Full HD+ với kích thước 5.84 inch cùng tỉ lệ 19:9, Huawei gọi nó là FullView 2.0. Huawei cũng hỗ trợ chế độ ẩn \"tai thỏ\" cho giống các smartphone hiện nay.</p>\r\n\r\n<p><img alt=\"Nova 3e\" src=\"https://cdn2.tgdd.vn/Products/Images/42/154260/huawei-nova-3e-den-8-org.jpg\" /></p>\r\n\r\n<p> </p>\r\n\r\n<h3><strong>Hiệu năng khá</strong></h3>\r\n\r\n<p>Cung cấp sức mạnh là bộ xử lý <a href=\"https://www.thegioididong.com/tin-tuc/danh-gia-nhanh-hieu-nang-chip-kirin-659-tren-huawei-nova-2i-1032782\" target=\"_blank\">Kirin 659 8 nhân</a>, chip đồ họa Mali T830, kết hợp RAM 4 GB + 64 GB ROM ( hỗ trợ khe cắm thẻ nhớ microSD 256 GB).</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/154260/huawei-nova-3e-han2.jpg\" onclick=\"return false;\"><img alt=\"huawei nova 3e\" src=\"https://cdn.tgdd.vn/Products/Images/42/154260/huawei-nova-3e-han2.jpg\" /></a></p>\r\n\r\n<p><em>Công nghệ sạc nhanh ấn tượng</em></p>\r\n\r\n<p>Máy cũng sẽ chạy giao diện EMUI 8 trên nền tảng Android 8.0, viên pin 3.000 mAh <a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-sac-nhanh-tren-smartphone-755549\" target=\"_blank\">sạc nhanh</a> với công suất đầu vào 18W giúp tiết kiệm thời gian sạc. Cổng kết nối USB Type C hiện đại nhiều tính năng.</p>\r\n\r\n<h3><strong>Camera chất lượng tốt</strong></h3>\r\n\r\n<p>Camera kép sau của Huawei Nova 3e được trang bị cảm biến 16 MP kết hợp với 2 MP hỗ trợ xóa phông ảo diệu. Công nghệ cảm biến ánh sáng 4 trong 1 Fusion Pixel sẽ giúp máy thu sáng tốt hơn cũng như cho những bức ảnh rõ nét và chính xác hơn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/154260/huawei-nova-3e-han3.jpg\" onclick=\"return false;\"><img alt=\"huawei nova 3e\" src=\"https://cdn2.tgdd.vn/Products/Images/42/154260/huawei-nova-3e-han3.jpg\" /></a></p>\r\n\r\n<p>Ngoài ra máy còn sử dụng camera selfie 16 MP hỗ trợ chụp chân dung. Huawei cũng tích hợp chế độ chụp ảnh AR Sticker tương tự đàn anh Nova 2i.</p>\r\n\r\n<h3><strong>Mở khóa khuôn mặt</strong></h3>\r\n\r\n<p>Bạn vẫn sẽ có tính năng mở khóa bằng khuôn mặt và có thể nhận diện đến 96 khuôn mặt khác nhau.</p>\r\n\r\n<p>Nếu không thích mở khóa bằng khuôn mặt bạn có thể mở khóa bằng cảm biến vân tay tích hợp ở mặt sau.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/154260/huawei-nova-3e-han4.jpg\" onclick=\"return false;\"><img alt=\"huawei nova 3e\" src=\"https://cdn4.tgdd.vn/Products/Images/42/154260/huawei-nova-3e-han4.jpg\" /></a></p>', '/upload/item/4_20180629144558.jpg', 'EN', '2018-06-23 10:11:13', 'xuan', '2018-06-29 14:33:09', 'xuan');
INSERT INTO `items` VALUES (7, 'New Product', NULL, 2, NULL, 'Test', NULL, '<p><img alt=\"\" src=\"/upload/ckfinder/files/hinh-nen-cho-may-tinh-28.jpg\" style=\"height:900px; width:1600px\" /></p>', '/upload/item/7_20180629173242.jpg', 'EN', '2018-06-29 16:41:54', NULL, '2018-06-29 16:41:54', NULL);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'EN',
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', 'EN', 'xuan', '2018-06-12 16:08:26', 'xuan', '2018-06-12 16:08:26');
INSERT INTO `roles` VALUES (2, 'Sale', 'EN', 'xuan', '2018-06-09 09:10:20', 'xuan', '2018-06-09 09:10:20');
INSERT INTO `roles` VALUES (3, 'Staff', 'EN', 'xuan', '2018-06-09 09:09:57', 'xuan', '2018-06-09 09:09:57');
INSERT INTO `roles` VALUES (4, 'Guest', 'EN', 'xuan', '2018-06-09 09:10:05', 'xuan', '2018-06-09 09:10:05');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (1, 1, 1, 'xuan', '2018-06-21 11:40:01', 'xuan', '2018-06-23 08:27:02');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `is_admin` int(10) NOT NULL DEFAULT 0,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'xuan', '$2y$10$fr1Iq7vAGvmQSwvixjPgXeWQnc4K0F6CQRAv1Ls26.t6aUMh4OR02', 'xuan.nguyen@seldatinc.com', 'Xuân', 'Trường', '/upload/user/avatar/xuan_20180623082702.jpg', 'C0K4lADUfLjvHwK5SxRPy0AFDmJygAoXmZNY2WGmn85A75rSERx3JZGBhRXm', 0, '2018-06-21 11:40:01', 'xuan', '2018-06-23 08:27:02', 'xuan');
INSERT INTO `users` VALUES (2, 'admin', '$2y$10$4vLWscvlqMjBrlkceVm8COznH1nnZNumn7X0a8o70e82SsJpkDP5y', 'admin@yopmail.com', 'Admin', NULL, '/upload/user/avatar/admin_20180702114728.jpg', NULL, 0, '2018-07-02 11:47:10', NULL, '2018-07-02 11:47:10', NULL);
INSERT INTO `users` VALUES (3, 'xuan 2', '$2y$10$1E/EbRwAFLX..jwV5U/0puhPeuH8Udx0nH9u/W1pYNsOqE1iAlxIS', 'xuannt@yopmail.com', 'Trường', 'Nguyễn', '/upload/user/avatar/xuan 2_20180702115308.jpg', NULL, 0, '2018-07-02 11:48:05', NULL, '2018-07-02 11:48:05', NULL);
INSERT INTO `users` VALUES (4, 'xuan 3', '$2y$10$QPuLoKl3H6eSO0sY64I3W.EdYnX9J.4Sxo0XcnmLxhHwEBq6ANDVC', 'truong@yopmail.com', 'Trường Nguyễn', NULL, '/image/avatar.jpeg', NULL, 0, '2018-07-02 11:54:22', NULL, '2018-07-02 11:54:22', NULL);

SET FOREIGN_KEY_CHECKS = 1;
