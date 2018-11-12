/*
 Navicat MySQL Data Transfer

 Source Server         : skl
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 12/11/2018 14:31:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_permission_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_role`;
CREATE TABLE `admin_permission_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_permission_role
-- ----------------------------
INSERT INTO `admin_permission_role` VALUES (1, 1, 1, '2018-11-09 08:45:09', '2018-11-09 08:45:11');
INSERT INTO `admin_permission_role` VALUES (2, 2, 2, '2018-11-09 08:45:31', '2018-11-09 08:45:33');
INSERT INTO `admin_permission_role` VALUES (3, 3, 3, '2018-11-09 08:45:38', '2018-11-09 08:45:40');
INSERT INTO `admin_permission_role` VALUES (4, 4, 4, '2018-11-09 08:45:47', '2018-11-09 08:45:49');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'system', '系统管理', '2018-11-09 08:39:42', '2018-11-09 08:39:44');
INSERT INTO `admin_permissions` VALUES (2, 'post', '文章管理', '2018-11-09 08:41:06', '2018-11-09 08:41:08');
INSERT INTO `admin_permissions` VALUES (3, 'topic', '专题管理', '2018-11-09 08:41:32', '2018-11-09 08:41:33');
INSERT INTO `admin_permissions` VALUES (4, 'notice', '通知管理', '2018-11-09 08:41:54', '2018-11-09 08:41:56');

-- ----------------------------
-- Table structure for admin_role_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_user`;
CREATE TABLE `admin_role_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_user
-- ----------------------------
INSERT INTO `admin_role_user` VALUES (1, 1, 1);
INSERT INTO `admin_role_user` VALUES (2, 2, 1);
INSERT INTO `admin_role_user` VALUES (3, 3, 1);
INSERT INTO `admin_role_user` VALUES (4, 4, 1);
INSERT INTO `admin_role_user` VALUES (5, 1, 2);
INSERT INTO `admin_role_user` VALUES (6, 2, 2);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'system-manger', '系统管理员', '2018-11-09 08:42:32', '2018-11-09 08:42:34');
INSERT INTO `admin_roles` VALUES (2, 'post-manger', '文章管理员', '2018-11-09 08:42:55', '2018-11-09 08:42:57');
INSERT INTO `admin_roles` VALUES (3, 'topic-manger', '专题管理员', '2018-11-09 08:43:16', '2018-11-09 08:43:18');
INSERT INTO `admin_roles` VALUES (4, 'notice-manger', '通知管理员', '2018-11-09 08:43:35', '2018-11-09 08:43:38');

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin1', '$2y$10$Ii1Q6XF7EayU/kLt5zTbUu39iSSQeuDSs8kfDmv.q4hXqo5nHGXc.', 'nFjatqS00ozGmadAZjMiZZ36jj6WSFMvuYhpRdxUOBVH6dfjVKlGVSc8Gt4V', '2018-11-08 14:40:55', '2018-11-08 14:40:55');
INSERT INTO `admin_users` VALUES (2, 'admin2', '$2y$10$XlcLom8t7F3jytG1u2OdDOC7z6.JGjVTb1Sokf/32Tw1AsJfpiicC', NULL, '2018-11-12 09:17:59', '2018-11-12 09:17:59');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 1, '大家快来看啊啊！！！！！', 1, '2018-11-08 10:33:07', '2018-11-08 10:33:07');
INSERT INTO `comments` VALUES (2, 1, '大家快点顶起来 啊  啊啊', 1, '2018-11-09 08:36:34', '2018-11-09 08:36:34');
INSERT INTO `comments` VALUES (3, 7, '你在说啥呀！！！！！！！！！！', 2, '2018-11-09 08:51:31', '2018-11-09 08:51:31');
INSERT INTO `comments` VALUES (4, 1, '大家快点顶起来 啊 啊啊', 2, '2018-11-09 08:51:54', '2018-11-09 08:51:54');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fans
-- ----------------------------
DROP TABLE IF EXISTS `fans`;
CREATE TABLE `fans`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fan_id` int(11) NOT NULL,
  `star_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of fans
-- ----------------------------
INSERT INTO `fans` VALUES (1, 2, 1, '2018-11-09 08:49:39', '2018-11-09 08:49:39');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_reserved_at_index`(`queue`, `reserved_at`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2017_03_26_233534_create_posts_table', 1);
INSERT INTO `migrations` VALUES (4, '2017_04_04_091147_create_comment_table', 1);
INSERT INTO `migrations` VALUES (5, '2017_04_04_112227_create_zan_table', 1);
INSERT INTO `migrations` VALUES (6, '2017_04_05_223606_create_fan_table', 1);
INSERT INTO `migrations` VALUES (7, '2017_04_06_162830_create_topics_table', 1);
INSERT INTO `migrations` VALUES (8, '2017_04_08_110156_create_admin_user_table', 1);
INSERT INTO `migrations` VALUES (9, '2017_04_08_215943_alter_posts_table', 1);
INSERT INTO `migrations` VALUES (10, '2017_04_09_100358_create_permission_and_roles', 1);
INSERT INTO `migrations` VALUES (11, '2017_04_11_143417_create_notice_table', 1);
INSERT INTO `migrations` VALUES (12, '2017_04_11_234527_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (13, '2017_04_11_234539_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (14, '2017_05_14_205043_alter_user_table_add_avatar', 1);

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for post_topics
-- ----------------------------
DROP TABLE IF EXISTS `post_topics`;
CREATE TABLE `post_topics`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of post_topics
-- ----------------------------
INSERT INTO `post_topics` VALUES (1, 1, 3, '2018-11-08 10:32:43', '2018-11-08 10:32:43');
INSERT INTO `post_topics` VALUES (2, 2, 4, '2018-11-08 10:34:57', '2018-11-08 10:34:57');
INSERT INTO `post_topics` VALUES (3, 3, 1, '2018-11-08 14:23:06', '2018-11-08 14:23:06');
INSERT INTO `post_topics` VALUES (4, 4, 2, '2018-11-08 14:28:18', '2018-11-08 14:28:18');
INSERT INTO `post_topics` VALUES (5, 5, 4, '2018-11-08 17:32:23', '2018-11-08 17:32:23');
INSERT INTO `post_topics` VALUES (6, 6, 1, '2018-11-08 17:34:37', '2018-11-08 17:34:37');
INSERT INTO `post_topics` VALUES (7, 7, 5, '2018-11-09 08:30:42', '2018-11-09 08:30:42');
INSERT INTO `post_topics` VALUES (8, 8, 6, '2018-11-09 08:32:03', '2018-11-09 08:32:03');
INSERT INTO `post_topics` VALUES (9, 8, 3, '2018-11-09 08:32:08', '2018-11-09 08:32:08');
INSERT INTO `post_topics` VALUES (10, 9, 7, '2018-11-09 08:33:43', '2018-11-09 08:33:43');
INSERT INTO `post_topics` VALUES (11, 10, 8, '2018-11-09 08:36:05', '2018-11-09 08:36:05');
INSERT INTO `post_topics` VALUES (12, 10, 3, '2018-11-09 08:36:10', '2018-11-09 08:36:10');
INSERT INTO `post_topics` VALUES (13, 11, 3, '2018-11-09 08:50:41', '2018-11-09 08:50:41');
INSERT INTO `post_topics` VALUES (14, 11, 7, '2018-11-09 08:50:45', '2018-11-09 08:50:45');
INSERT INTO `post_topics` VALUES (15, 12, 3, '2018-11-09 08:54:12', '2018-11-09 08:54:12');
INSERT INTO `post_topics` VALUES (16, 13, 1, '2018-11-12 14:01:05', '2018-11-12 14:01:05');
INSERT INTO `post_topics` VALUES (17, 14, 1, '2018-11-12 14:10:46', '2018-11-12 14:10:46');
INSERT INTO `post_topics` VALUES (18, 15, 2, '2018-11-12 14:12:13', '2018-11-12 14:12:13');
INSERT INTO `post_topics` VALUES (19, 15, 3, '2018-11-12 14:12:24', '2018-11-12 14:12:24');
INSERT INTO `post_topics` VALUES (20, 15, 4, '2018-11-12 14:25:59', '2018-11-12 14:25:59');
INSERT INTO `post_topics` VALUES (21, 17, 5, '2018-11-12 14:29:16', '2018-11-12 14:29:16');
INSERT INTO `post_topics` VALUES (22, 17, 3, '2018-11-12 14:29:23', '2018-11-12 14:29:23');
INSERT INTO `post_topics` VALUES (23, 17, 6, '2018-11-12 14:29:54', '2018-11-12 14:29:54');
INSERT INTO `post_topics` VALUES (24, 18, 8, '2018-11-12 14:31:17', '2018-11-12 14:31:17');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, '习近平在上海考察时强调 坚定改革开放再出发信心和决心', '<p>新华社上海11月7日电　中共中央总书记、国家主席、中央军委主席习近平近日在上海考察时强调，坚持以新时代中国特色社会主义思想为指导，坚决贯彻落实党中央决策部署，坚定改革开放再出发的信心和决心，坚持稳中求进工作总基调，全面贯彻新发展理念，坚持以供给侧结构性改革为主线，加快建设现代化经济体系，打好三大攻坚战，加快提升城市能级和核心竞争力，更好为全国改革发展大局服务。</p><p>11月6日至7日，习近平在出席首届中国国际进口博览会开幕式和相关活动后，在中共中央政治局委员、上海市委书记李强和市长应勇陪同下，深入上海的企业、社区、城市运行综合管理中心、高新科技园区，就贯彻落实党的十九大精神和当前经济形势、推进科技创新、加强城市管理和社区治理进行调研。</p><p>位于陆家嘴的上海中心大厦建筑总高度632米，是已建成的中国第一、世界第二高楼，是上海的一座标志性建筑。2007年，习近平在上海工作期间，十分重视上海中心大厦建设，多次到陆家嘴地区实地调研，亲自研究陆家嘴地区规划，亲自审定上海中心大厦设计方案，推动相关工作，要求把上海中心大厦建设成为绿色、智慧、人文的国际一流精品工程。大厦22层的陆家嘴金融城党建服务中心，是陆家嘴金融贸易区综合党委建立的楼宇党建阵地。6日上午，习近平来到这里，详细了解中心开展党建工作等情况。在党建服务中心的空中花园研讨交流区，3家企业党支部正在联合开展“我与金融城共成长”主题党日活动，习近平来到他们中间，同他们亲切交谈。习近平充分肯定上海从陆家嘴金融城产业集聚、企业汇聚、人才广聚的实际出发，创新党建工作思路和模式，为楼宇内各种所有制企业的基层党组织和党员提供学习指导、管理服务、活动平台的做法。习近平指出，党建工作的难点在基层，亮点也在基层。随着经济成分和就业方式越来越多样化，在新经济组织、新社会组织就业的党员越来越多，要做好其中的党员教育管理工作，引导他们积极发挥作用。基层党建既要发扬优良传统，又要与时俱进，不断适应新形势，拓宽基层党建的领域，做到党员工作生活在哪里、党组织就覆盖到哪里，让党员无论在哪里都能找到组织找到家。希望上海在加强基层党建工作上继续探索、走在前头。我们在有党员的各类企业里建立党组织，目的是为企业的党员提供管理和服务，团结凝聚员工遵纪守法，遵守企业规章制度，发挥党员先锋模范作用。这也有利于企业加强管理，有利于推动企业健康发展。</p><p><b></b><i></i><u></u><sub></sub><sup></sup><strike></strike><br></p><p><br></p>', 1, '2018-11-08 10:32:30', '2018-11-12 10:03:34', 0);
INSERT INTO `posts` VALUES (6, '辽宁男篮136∶117战胜青岛队的比赛中', '<p><p></p><p></p><p>本报记者 李 翔</p><p>在辽宁男篮136∶117战胜青岛队的比赛中，哈德森又得到39分，尽管没有对方吉布森的48分那样炫目，但这也刷新了他本赛季的单场得分纪录。更重要的是，本场比赛之后，哈德森的CBA历史总得分达到9344分。按照这个趋势，他很有希望在本赛季成为第一个得分破万的外援。</p><p>哈德森（持球者）在比赛中上篮。 本报记者 孙海涛 摄</p><p></p><p><img src=\"http://localhost:8000/storage/ecce3bf985e353cda072c3cee77e355b/QiHwBcKCEnctJC6unScakNmFxbKOpRa4EMJuEUv0.jpeg\" alt=\"601574ef68622fcb1b3254a5e8bc6501\" style=\"max-width:100%;\"><br></p><p>在本轮之前，哈德森CBA历史总得分达到9305分，位居历史得分榜第五位。本场比赛，哈德森手感滚烫，在没有一次罚球的情况下，两分球9投6中，三分球14投9中，轰下全队最高的39分，同时还贡献了4个篮板、4次助攻和3次抢断。至此，在CBA历史得分榜上，哈德森距离身前的王治郅只有344分。由于王治郅已经退役，哈德森在本赛季完成对他的赶超没有任何悬念，不出意外的话，一个多月以后，哈德森就可以登上历史得分榜的第四位。</p><p><br></p><p></p><p><br></p><p></p><p><br></p></p><p><br></p>', 1, '2018-11-08 17:33:55', '2018-11-09 08:29:20', 0);
INSERT INTO `posts` VALUES (7, '美股再度回落纳指收跌0.53%', '<p>（原标题：科技股领跌美股 美元大涨 两年期美债收益率创10年新高）</p><p>虽然10月市场大跌，但美联储在11月声明中表态维持加息计划不变，<a href=\"http://money.163.com/keywords/7/8/7f8e80a1/1.html\" target=\"_blank\">美股</a>集体下跌。<a href=\"http://money.163.com/keywords/6/0/6807666e/1.html\" target=\"_blank\">标普</a>跌0.25%，<a href=\"http://money.163.com/keywords/9/5/90536307/1.html\" target=\"_blank\">道指</a>涨约10点，<a href=\"http://money.163.com/keywords/7/b/7eb36307/1.html\" target=\"_blank\">纳指</a>跌超0.5%。特斯拉涨近1%，<a href=\"http://quotes.money.163.com/usstock/hq/CTRP.html\">携程</a>大跌19%。美元大涨0.5%，离岸人民币一度跌超200点。油价连跌9日，创下2014年来最长下跌周期。美债收益率大涨，2年期美债收益率创下10年新高。</p><p>标普500指数收跌0.25%，报2806.83点，其中能源指数收跌2.2%——宣告10月29日以来的上涨趋势暂告一段落。道指收涨10.92点，涨幅0.04%，报26191.22点。纳指收跌0.53%，报7530.88点。</p><p>今日，美联储宣布维持利率不变，符合市场预期。而尽管10月美股大跌，美联储在11月声明中表态维持加息计划不变。仍预计2019年将加息三次。而市场预测更加温和——预计明年只有两次加息。自上次FOMC会议以来，美联储声明都没有提及金融市场波动加剧。</p><p>美联储维持9月份声明的核心内容不变。声明称：“委员会预计联邦基金利率目标范围将继续逐步提高。”声明表示，经济前景的风险“似乎大致平衡”，并表示通胀仍接近2%的目标。声明中唯一的调整，是指出第三季度的商业投资增长已经放缓。</p><p>Exencial Wealth Advisors公司首席投资官Tim Courtney表示：“我们早已料到美联储会逐步加息。他们不希望操之过急。他们绝对不希望成为使收益率曲线倒挂的人。”</p><p>美股财报仍然备受关注。据FactSet数据，目前已有约87%的标普500成分公司公布了财报，平均盈利增长幅度超过25%。健康的企业财报与强劲的整体经济支持了市场的乐观情绪，但投资者担心企业盈利稳健增长的局面可能难以继续维持下去，尤其是在全球其他地区经济扩张已经放缓的情况下。</p><p>美国能源类股重挫，追随美油收跌入熊市的遭遇。Chesapeake能源收跌4.84%，Apache收跌4.73%，<a href=\"http://quotes.money.163.com/usstock/hq/COP.html\">康菲石油</a>收跌4.46%，Phillips 66收跌4.32%。</p><p>科技股方面，<a href=\"http://quotes.money.163.com/usstock/hq/QCOM.html\">高通</a>收跌8.16%，<a href=\"http://quotes.money.163.com/usstock/hq/NVDA.html\">英伟达</a>收跌3.65%，奈飞和<a href=\"http://quotes.money.163.com/usstock/hq/AMD.html\">AMD</a>均收跌2.93%，<a href=\"http://quotes.money.163.com/usstock/hq/FB.html\">Facebook</a>收跌2.42%，<a href=\"http://quotes.money.163.com/usstock/hq/GOOG.html\">谷歌</a>母公司Alphabet收跌1.23%。</p><p>特斯拉收涨0.93%。美东时间8日周四盘前，麦格理分析师Maynard Um发布报告称，除了12个月内美国通用会计准则（<a href=\"http://quotes.money.163.com/usstock/hq/GA.html\">GA</a>AP）下持续盈利这一条以外， 特斯拉目前已经满足纳入标普500指数的所有条件，而唯一不满足要求的这条料将在明年二季度实现。Um维持对特斯拉的买入评级，目标价定为430美元，属于华尔街机构对特斯拉估价的最高价之一，比机构平均目标价321美元高约34%。</p><p>Um报告称，特斯拉仍必须证明可以持续盈利，但我们相信，在Model S和X的稳定需求、为满足Modle 3需求而增产、零排放车积分交易可能带来收入的推动下，该司将满足纳入标普的要求。</p><p>热门中概股周四普遍收跌，而<a href=\"http://money.163.com/keywords/6/3/643a7a0b/1.html\" target=\"_blank\">携程</a>公布财报后，遭多家机构下调评级，股价大跌19%。<a href=\"http://quotes.money.163.com/usstock/hq/VIPS.html\">唯品会</a>收跌9.55%，拼 多多收跌6.95%，<a href=\"http://money.163.com/baike/jingdong/\" target=\"_blank\">京东</a>收跌6.94%，爱奇艺收跌4.92%，<a href=\"http://money.163.com/baike/alibaba/\" target=\"_blank\">阿里巴巴</a>收跌2.30%。</p><p>富时泛欧绩优300指数收涨0.04%，报1440.50点。</p><p></p><p>德国DAX 30指数收跌0.45%。法国CAC 40指数收跌0.13%。英国富时100指数收涨0.33%。</p><p><br></p>', 1, '2018-11-09 08:30:32', '2018-11-09 08:30:32', 0);
INSERT INTO `posts` VALUES (4, '《延禧攻略》拍现代版？佘诗曼：一切都还没落实', '<p>网易娱乐11月8日报道&nbsp;据台湾媒体报道，热播剧《延禧攻略》爆红，不仅掀起追剧潮，连带剧中演员也随之爆红，但是随着剧集播毕，许多粉丝意犹未尽，纷纷喊话希望可以再次看到续集，剧中饰演“娴妃”的佘诗曼7日受访时表示，“有听说过要拍续集的idea，但一切都还没落实。”也希望可以原班人马回归。<img style=\"max-width:100%;\" alt=\"130cdb4d958adf40144c6c473c8163cc\" src=\"http://localhost:8000/storage/0f73753bf9ff9fdb2c3d9894afe581d1/NyU55X4q1eEfZnfgFNWiA4KeFIP0ZvMNExN0hHYH.jpeg\"></p><a target=\"_self\"></a><p>根据香港媒体报道，佘诗曼7日出席香港某品牌活动，称目前还在享受“延禧效应”，所以行程满档，虽然必须到处飞，但依旧非常开心。另外，《延禧攻略》曾一度盛传将会开拍现代版续集，佘诗曼则表示曾听说有类似的打算，但是否是现代版就不得而知，随后她还补充，有听说过预计拍摄的场地，“他们说的那些地方，好像都不是拍现代戏的地方。”</p><p>虽然一切都尚未落实，但佘诗曼表示，非常希望续《延禧》原本人马全体回归，“大家都希望可以聚一聚，可以原班人做另一个故事，可以是不同的角色。”被问及希望在续集中演怎么样的角色，她称希望可以与上次不同，复杂一点的性格，如果是纯正派的话，妈妈会不喜欢看，“她不喜欢看到我被别人欺负，她从来不探班，因为不想看见女儿这么辛苦。”（ETtoday/文）</p><p><b></b><i></i><u></u><sub></sub><sup></sup><strike></strike><br></p><p><br></p>', 1, '2018-11-08 14:28:13', '2018-11-08 14:28:13', 0);
INSERT INTO `posts` VALUES (5, '瓜达尔港将成中国海军基地？巴将领驳斥美印猜测', '<p>（原标题：巴将领驳斥美印猜测 称中国未寻求瓜达尔港军事化）</p><p>参考消息网11月8日报道据路透社10月26日报道称，一名巴基斯坦海军少将说，中国没有要求其军方准入巴基斯坦的中国出资的深水港口瓜达尔，而印度和美国一直猜测它可能成为中国海军基地。</p><p>报道称，瓜达尔港位于俾路支省西南部，是中国在巴基斯坦投资600亿建设一带一路项目的明珠。</p><p>报道认为，目前的建设计划是将瓜达尔港建设成为一个航运中转枢纽，并成为一个与特别经济区一起建设的大港，出口为主的行业可以从那儿将商品运往世界各地。能源管道、公路和铁路将连接瓜达尔港到中国的西部地区。</p><p></p><p>报道称，去年，美国国防部宣称选出巴基斯坦可能会成为中国未来可能的军事基地，但中国说这纯属猜测。外交和安全消息人士认为瓜达尔港是个可能的地点。<img src=\"http://localhost:8000/storage/ca3a568bc62eeb19f9b3c7358273fc4c/s1ukKl9qDPXj9ATvuIrvWKHJHQ2ek6LAuynxmlxp.jpeg\" alt=\"fa481952-f6a5-40eb-bb24-abfb4adff57c\" style=\"max-width: 100%;\"></p><p><br></p>', 1, '2018-11-08 17:31:44', '2018-11-08 17:31:44', 0);
INSERT INTO `posts` VALUES (8, '网易乌镇咖荟综述', '<p>2018年11月7日-9日，第五届世界互联网大会将在乌镇举行，这座千年古镇又一次迎来了它的高光时刻。互联网大佬悉数到场，畅谈行业发展与未来科技新动向。</p><p>11月8日晚，网易传媒旗下的网易科技、网易智能、网易华东将在乌镇西栅景区内举办以“预见未来”为主题的咖荟，围绕“AI与行业未来”开展议题讨论，试图探究商业世界的运行规律，碰撞思想，寻觅科技发展的新奇点。下面就为大家带来此次大会的诸多干货。</p><p>邬贺铨院士：人工智能不会取代人，而是使人更聪明努力</p><p><img src=\"http://localhost:8000/storage/8be37e47b1ec0545106c796690085a54/IwayIapqIEK48c1pqjVyqwGcmhG5g3gKBWsGY5ny.png\" alt=\"2018%2F11%2F09%2F4126913051f149c2a557f9e254cc1747\" style=\"max-width:100%;\"><br></p><p>中国工程院院士邬贺铨参加了2018网易乌镇咖荟并发表了题为《AI与时代》的演讲。</p><p>对于未来互联网的发展，邬贺铨院士表达两方面的观点。一方面，尽管中国消费互联网里的电商领先了，但是我们在消费互联网上的教育、养老、旅游还有很大空间没有挖掘，农业的人工智能也是很好的场景。</p><p>另一方面，新的技术将给互联网发展带来变革。“我们很准确描述互联网未来是很难的，但确实是要迎来人工智能的时代。“邬贺铨表达了他对于人工智能未来的美好期待。</p><p>但与此同时，邬贺铨认为，现在社会上很多人工智能公司还在积累经验当中，说是“人工智能”，其实还是人在做，我们必须承认人工智能还在起步阶段。他告诫人工智能从业者说，“不要以为现在走在前面的人工智能公司就能永远走在前面，人工智能技术还要走得好远，他离我们人的感觉还差很大距离，这对企业来说也是机会空间。”</p><p>对于人工智能与人的关系，邬贺铨称，未来的人工智能不是取代人的智能，而是迫使人更聪明更努力，现在是人与人竞争，未来还会有机器和你竞争，没有快节奏的竞争社会不会进步，这种竞赛是挑战，但人没有挑战就没有进步，人应该拥抱这种挑战。</p><p></p><p>网易有道CEO周枫：AI给机器翻译带来了巨大的市场空间</p><p><br></p>', 1, '2018-11-09 08:31:52', '2018-11-09 08:31:52', 0);
INSERT INTO `posts` VALUES (9, '抗蓝光化妆品是营销噱头还是确有其效', '<p>长时间暴露于蓝光下，不仅伤害眼睛，而且会加速皮肤老化。目前化妆品公司正研制抗蓝光产品以解决人们所面临的肌肤问题。为知晓此类化妆品是否确有其效，法新社进行了采访调查。</p><p>配方：“红辣椒”和“羽扇豆籽油”</p><p>众所周知，由于蓝光具有抗菌的优点，医生会用少量蓝光治疗一些皮肤疾病(如痤疮、湿疹或牛皮癣)，甚至还可以用来治疗牙科疾病。然而法国人平均每天接触蓝光的时间长达6小时，长时间的接触蓝光或许会加剧人们的皮肤问题。面对这一新兴市场需求，法国中小企业积极研制相应产品，此类化妆品成分多为：小麦胚芽油、羽扇豆籽油、珍珠粉、红辣椒提取物、中草药或安第斯山脉天然植物等。</p><p>早在2014年时，法国某护肤品牌就已致力于开发抗蓝光产品。法新社采访了该公司的研究和开发主管。他表示，相关研究的文献确实很少，但是在进行体外皮肤模型测试中，发现大面积照射蓝光确实会促进色素沉着。不过他承认，为了能更精确地测试出产品对蓝光的抵抗效用，实验室最大程度地增加了蓝光照射剂量以触发其对皮肤的影响。勒弗夫尔还表示目前研究的困难在于，实验室并不能测验出实际生活中人们所受的蓝光照射量。</p><p>现实：研究数据太少</p><p>上述专家补充道，“我们更应该研究的是，在现实生活中人们所照射的蓝光量对皮肤可以造成何种程度的损害。然而蓝光的辐射力比紫外线弱得多，它的影响可能需要几个月、几年甚至更久之后才会显现出来。”</p><p></p><p>在巴黎举行的化妆品360展会(Cosmetic 360)上，日本化妆品企业家对抗蓝光化妆品持怀疑态度，“在日本，也有公司推广此类化妆品，但销售量并不高。毕竟没有明确证据可以证明皮肤老化与蓝光确有关联。”</p><p><br></p>', 1, '2018-11-09 08:33:00', '2018-11-09 08:33:00', 0);
INSERT INTO `posts` VALUES (10, '脱贫摘帽的“井冈山经验”', '<p>井冈山位于江西省西南部，地处湘赣两省交界的罗霄山脉中段，下辖21个乡镇场、街道办事处。现有人口16.3万人，国土面积1297.5平方公里。</p><p>井冈山以其辉煌灿烂的革命历史，铸就了蜚声中外的“红色摇篮”。上世纪20年代末，毛泽东、朱德等老一辈无产阶级革命家率领中国工农红军来到这里开展了艰苦卓绝的革命斗争，创建了中国第一个农村革命根据地，点燃了中国革命的星星之火，孕育了伟大的井冈山精神。</p><p>淅淅沥沥的小雨中，行驶在蜿蜒的水泥山路上，环顾四下，云蒸霞蔚，满目苍翠。这个风光绮丽、空气清新的“天然氧吧”，就是中国革命的圣地——井冈山。</p><p>1927年10月，毛泽东同志率领秋收起义部队到达井冈山，在这里创立了中国共产党领导下的第一个农村革命根据地，点燃了中国革命的星星之火，为党领导人民创造中国奇迹奠定了基础。</p><p>行程万里，不忘初心。2016年2月，习近平总书记继2006年、2008年之后第三次上井冈山，发出了“在扶贫的路上，不能落下一个贫困家庭，丢下一个贫困群众”“井冈山要在脱贫攻坚中作示范、带好头”的殷殷嘱托。</p><p>总书记的嘱托，声声入耳。2017年2月26日，奇迹又一次发生。这一天，井冈山市正式宣布在全国率先脱贫摘帽。这个为中国革命作出巨大贡献的地方，在脱贫攻坚上也走在了前列。其中，包含着一份沉甸甸的教育扶贫成绩单。</p><p>立体式帮扶不让一名学生因贫困失学</p><p>李华（化名）是江西省井冈山市井冈山中学2018届优秀毕业生，也是一名红卡户学生。今年高考，李华以优异的成绩考上了上海某财经类著名高校。</p><p>井冈山市教育局学生资助中心主任汤昌华告诉记者，为了精确区分扶贫对象，井冈山市独创了精准识别贫困户的红卡、蓝卡和黄卡制度。当地所有镇村的贫困户家门口，都挂有标识卡，红卡为特困户，蓝卡为一般贫困户，黄卡为虽已脱贫但尚需巩固的困难户。</p><p>李华在高中期间，享受了每学期免学费、免书本费，享受国家助学金以及张家港武装部队、红十字基金会、江苏恒联物流有限公司自强班的资助。正因为没有了后顾之忧，李华学习进步迅速，综合素质不断提高。</p><p>“教育扶贫重在精准，成败在于精准。”井冈山市教育局副局长邝小明告诉记者，过去，井冈山的学生资助工作主要以学生自主申报为主，现在则是主动出击，发动全体教师深入班级与乡村，多方收集信息，加强与乡镇、扶贫等部门的衔接，确保每一名建档立卡户学生进入数据库。到目前为止，共有2730名学生进入数据库，确保了“不漏一人”的目标实现。</p><p>为了确保不让任何一名学生因贫困而失学，井冈山教育局强力构建覆盖从学前教育到高等教育各个学段各类贫困学生的“一揽子”帮扶政策。对所有建档立卡贫困户，建立到校、到户、到学生的教育精准扶贫平台，从幼儿园开始全程追踪到大学，按奖、贷、助、补、免等资助政策给予多元资助，确保每名贫困家庭的孩子不因贫困而失学。</p><p>井冈山市积极协调财政局、扶贫办、发改委等单位，争取国家专项支持，加大教育扶贫经费投入。2018年春季，该市学前教育阶段贫困学生资助金新增4.05万元，义务教育阶段贫困寄宿生补助21.46万元，普通高中国家助学金58.7万元，对建档立卡户子女、残疾学生、农村低保户子女、农村特困救助学生免学费16.5万元，发放中职国家助学金和免学费31.7万元。</p><p>井冈山市还积极拓展教育扶贫资金渠道，充分发挥企业、个人、公益组织等在教育扶贫中的作用，合理引导各种教育扶贫资源发挥最大效益。截至目前，全市各类社会助学项目近50种，资助人数2236人，每年资助金额近200万元。其中，义务教育阶段受助建档立卡贫困户学生达1536人次，年帮扶金额达152余万元，义务教育阶段建档立卡贫困学生受助率高达86%。</p><p>振兴乡村教育阻断贫困代际传递</p><p>绿色的塑胶运动场，红色的塑胶跑道，三层灰色教学楼内，多媒体教室、计算机教室、音乐室、美术教室、实验室、阅览室、“留守儿童之家”等功能室一应俱全，教学楼后面是食堂和8套教师周转房。这是记者在茅坪乡宁冈希望小学见到的场景。</p><p></p><p>宁冈希望小学是井冈山一所典型的乡村小学，学校共有6个教学班12名教师，42名学生中有22名是留守儿童。校长刘小光告诉记者，2016年以前，学校操场还是水泥地面，教育教学设施陈旧，近两年在教育局大力投入和各方支持下，学校面貌焕然一新，师资合格率100%。</p><p><br></p>', 1, '2018-11-09 08:35:47', '2018-11-09 08:35:47', 0);
INSERT INTO `posts` VALUES (11, '泉州通报碳九泄漏', '<p>（原标题：泉州市政府：初步认定为安全生产责任事故引发的环境污染事件）</p><p>【泉州市政府：初步认定为安全生产责任事故引发的环境污染事件】泉州市政府新闻办刚刚通报：①初步认定为一起安全生产责任事故引发的环境污染事件。②启动养殖户受损情况评估，依法协调解决损失赔偿问题。③着手查明事件原因，严肃追究相关责任人责任。（人民日报记者钟自炜）</p><p>泉州市政府新闻办通报</p><p>福建东港石油化工实业有限公司码头化学品泄漏事件及处置情况</p><p>一、事发经过</p><p>2018年11月3日16时左右，“天桐1”油轮靠泊泉州市泉港区东港石化公司码头；11月3日19时20分，开始从东港石化码头输油管道进行工业用裂解碳九的装船作业；11月4日凌晨0时51分，输油管出现跳管现象；凌晨1时13分，东港石化码头作业人员发现装船过程中发生工业用裂解碳九化学品泄漏。现场工作人员立即采取停泵关阀措施，并委托有资质的单位迅速到码头进行污油回收。凌晨1时23分油品停止泄漏；凌晨2时许，处置单位赶到码头进行污油回收；凌晨4时30分，围油栏内清污作业基本结束。但部分污油向邻近的肖厝海域移动，泉港部分区域空气出现刺鼻性气味。初步认定为一起安全生产责任事故引发的环境污染事件。</p><p>二、处置情况</p><p>事件发生后，泉州市主要领导第一时间作出批示，并赶赴现场指导应急处置工作，指派分管市领导一线调度指挥，要求泉港区马上成立现场处置、群众工作、海洋影响和评估处置、事件调查等工作小组，分头迅速开展应急处置工作：（1）把人民群众的健康安全摆在第一位，用最快速度做好油污清理、环境恢复等工作，请专业人员参与指导处置工作；（2）做好大气、水质、水产品的动态监测，以及对群众健康影响的医学观测，及时真实发布信息，做好群众的解释工作；（3）启动养殖户受损情况评估，依法协调解决损失赔偿问题，切实维护群众合法权益；（4）着手查明事件原因，严肃追究相关责任人责任；（5）进一步健全防范检查、应急处置等长效机制，组织石化企业大排查，做到举一反三，坚决杜绝此类事件再次发生。目前，事件处置各项工作积极有序。</p><p>截至8日15时，共出动船舶400多艘次、人员2500多人次、吸油毡732袋、清油剂70桶开展油污吸附，受影响海域漂浮的油污已基本完成清理；继续出动船舶和人员对岸边、渔排等随潮水起落的残留油污进行吸附，此项工作仍在继续。</p><p>截至8日17时，泉港区医院陆续接诊来自南埔镇、后龙镇沿海一带的52名疑似接触碳九泄漏的群众。此类患者的主诉为“接触刺激性气体后身体不适”，其主要症状为头晕、恶心、呕吐、咽部不适。其中门诊就诊42名，留院观察10名。目前，9名患者症状较入院前有明显好转；另1名患者在事发水域溺水，出现吸入性肺炎，已从ICU（重症监护病房），转入普通病房，病情稳定。</p><p>三、环境监测情况</p><p></p><p>省、市环保、海洋渔业、安监等部门从4日当天即启动对受影响区域的大气、海洋环境、水产品监测监视。大气方面，11月4日12时，VOCs监测结果分别为上西村（泄漏点最近村庄）14.9mg/m3，峰前村0.4934mg/m3，肖厝村0.9756mg/m3。11月4日下午3时上西村VOCs监测结果下降为4.929mg/m3，下午4时上西村监测结果下降为0.429mg/m3。11月5日上午10时VOCs监测结果为上西村0.0574mg/m3，峰前村为0.5200mg/m3，肖厝村为0.7740mg/m3。6日至7日保持在0.018 mg/m3至0.239 mg/m3间，8日当天截止11时保持在0.102mg/m3至0.422mg/m3间。经同步分析VOCs组分，11月4日12时空气中的有机物萘、苯乙烯的浓度分别为12.07mg/m3、1.77 mg/m3，分别占空气中VOCs的81%、11.88%，其浓度均低于国家职业卫生标准《工作场所有害因素职业接触限值化学有害因素》（GBZ 2.1-2007）中的时间加权平均容许浓度限值（即8小时平均容许浓度限值），其中：萘时间加权平均容许浓度限值为50mg/m3，苯乙烯时间加权平均容许浓度限值为50mg/m3。此后的大气环境监测数据也均小于《工作场所有害因素职业接触限限值化学有害因素》限值（上述限值是指在职业活动过程中长期反复接触，对绝大多数接触者的健康不引起有害作用的容许接触水平）。目前，福建省泉州环境监测中心站仍在持续开展大气环境质量跟踪监测。水质方面，经泉州海洋环境监测预报中心检测，6日10时左右，肖厝网箱养殖区海域监测点石油类含量154.6ug/L，化学需氧量含量0.86mg/L，石油类符合第三类海水水质标准，化学需氧量符合第一类海水水质标准；东港石化码头区海域监测点石油类含量363.5ug/L，化学需氧量含量0.79mg/L，石油类符合第四类海水水质标准，化学需氧量符合第一类海水水质标准。至7日，9个监测点化学需氧量均达到第一类海水水质标准，石油类达到第一至第三类水质标准。8日，11个监测点化学需氧量均达到第一类海水水质标准，石油类除肖厝码头监测点处于第三类海水水质范围外，其他10个监测点均达到第一（二）类水质标准。水产品方面，省海洋与渔业监测中心于4日9时在养殖区抽取3个样品进行初检，根据检测规程需连续两周检测无裂解碳九残留物，方可解除管制。为确保食品安全，泉港区已于4日暂缓受影响海域网箱养殖水产品起捕、销售、食用。此次事件直接影响海域面积约0.6平方公里，养殖受损集中在肖厝网箱养殖区约300亩，涉及养殖户152户、养殖面积99单元，其中20单元为空箱，在养的79单元中有20单元下沉较严重，其余均存在不同程度受损，6日开始着手修复，7日开始进入养殖户开展受损情况调查评估，为下一步理赔做好准备。</p><p><br></p>', 2, '2018-11-09 08:50:35', '2018-11-09 08:50:35', 0);
INSERT INTO `posts` VALUES (12, '杭州地铁5号线38站位置和站名确定', '<p>视觉中国供图</p><p>浙江在线-杭州频道11月8日讯（浙江在线记者 霍翟羿 通讯员 吴艇）11月8日，记者从杭州市地铁集团了解到，杭州地铁5号线一、二期工程38座车站位置和正式站名已经确定。</p><p>杭州地铁5号线是一条串联起余杭、西湖、拱墅、下城、上城、滨江、萧山七城区并连接杭临、杭绍两条城际铁路的轨道交通大动脉。</p><p>目前，杭州地铁5号线一、二期工程正在抓紧施工，38座车站中有19座车站主体结构施工已经完成，其余站点正在有序推进。盾构正在掘进，部分区间隧道已经贯通。整条线路计划2019年建成通车。</p><p></p><p>根据《杭州市人民政府关于杭州地铁5号线一期、二期工程车站站名命名的批复》，地铁5号线一、二期38座车站正式站名和位置确定为：</p><p><img src=\"http://localhost:8000/storage/545f4f87bbadf4a0e14ff9775dbf1ca7/Q6bCXF2B02v43qa81VmbFJT2yKGq7RkMUEAK3Vcy.jpeg\" alt=\"47da94228e6bab2e0f72273991d97a34\" style=\"max-width:100%;\"><br></p><p><br></p>', 2, '2018-11-09 08:54:07', '2018-11-09 08:54:07', 0);
INSERT INTO `posts` VALUES (14, '钱德勒\"盖帽绝杀\"成3连胜功臣', '<p>北京时间11月12日，湖人在主场107-106险胜老鹰，收获一波三连胜，胜率成功上升到50%以上。泰森-再次成为制胜功臣，在最后一回合封阻特雷-杨的绝杀上篮，引来全队疯狂庆祝。</p><p>钱德勒本场比赛还是替补出战，4投2中得到4分5篮板2抢断3盖帽，5个篮板全部都是进攻篮板。</p><p>当他完成“盖帽绝杀”，在全场欢呼中他不断对着天花板挥拳庆祝，多位队友也上前与他撞胸击掌，包括一力促成他签约湖人的勒布朗-詹姆斯。詹皇投进了湖人的反超球，钱德勒跟他一攻一防的贡献，才有了今天的胜利。</p><p>而当他走进球员通道，球队总经理佩林卡也上前与他击掌致意，他应该知道这笔签约究竟有多么划算。湖人媒体《湖人国度》也激动表示：“亲爱的太阳，感谢你们把泰森-钱德勒给我们。”</p><p><img src=\"http://localhost:8000/storage/ba9dd416acc7be147b99e8ca2a67094a/mcNwc79v3uS6DGXO1MQFOH633DiBsD35C5rpkooW.jpeg\" alt=\"8438de9bcab141c6a58dc8700c11d5ca\" style=\"max-width:100%;\"><br></p><p><br></p>', 1, '2018-11-12 14:10:37', '2018-11-12 14:10:37', 0);
INSERT INTO `posts` VALUES (15, '广电总局发布\"限薪令\"：', '<p>新华社专供&nbsp;新华社北京11月9日电（记者史竞男、白瀛）国家广播电视总局9日公布关于进一步加强广播电视和网络视听文艺节目管理的通知，要求坚决遏制追星炒星、泛娱乐化等不良倾向，严控片酬，坚决打击收视率（点击率）造假行为。</p><p>通知称，一些文艺节目出现影视明星过多、追星炒星、泛娱乐化、高价片酬、收视率（点击率）造假等问题，不仅推高制作成本、破坏行业秩序生态，而且误导青少年盲目追星，滋长拜金主义、一夜成名等错误价值观念，必须采取有效措施切实加以纠正。</p><p>通知指出，广播电视和网络视听文艺节目要坚持讲品位、讲格调、讲责任，抵制低俗、庸俗、媚俗，大力弘扬社会主义核心价值观，传播正能量，坚守底线红线；坚决摒弃以明星为卖点、靠明星博眼球的错误做法，严格控制偶像养成类节目，严格控制影视明星子女参与综艺娱乐和真人秀节目；减少影视明星参与的娱乐游戏、真人秀、歌唱类选拔等节目播出量。</p><p>通知要求，各电视上星综合频道19：30-22：30播出的综艺节目，每个节目全部嘉宾总片酬不得超过节目总成本的40%，主要嘉宾片酬不得超过嘉宾总片酬的70%。每部电视剧网络剧（含网络电影）全部演员片酬不超过制作总成本的40%，主要演员片酬不超过总片酬的70%。</p><p>同时，将加强收视率（点击率）调查数据使用管理，坚决打击造假行为，建立健全广电、公安等部门联合协调打击收视率（点击率）造假工作机制，对违法违规行为坚决予以惩戒。</p><p></p><p>据悉，中广联制片委员会、电视剧制作产业协会、中国网络视听节目服务协会将制定出台电视剧网络剧（含网络电影）片酬执行标准，明确演员最高片酬限额，并作为行业自律规定发布施行。</p><p><br></p>', 1, '2018-11-12 14:11:58', '2018-11-12 14:11:58', 0);
INSERT INTO `posts` VALUES (17, '圈套、模仿、互损 互联网大佬双11', '<p>今日凌晨零点，2018年天猫双11全球狂欢节落下帷幕，在其位于上海世博中心的媒体中心大屏上，数字最终定格在2135亿元，比去年多了453亿；京东11.11全球好物节累计下单金额超1598亿，比去年多了327亿；苏宁易购全渠道销售同比增长132%。</p><p>双11购物狂欢，大考终于结束。</p><p>其实双11还未正式开场，互联网各位大佬就已经开始摩拳擦掌，为这场“血拼”做足了功课。</p><p>他们通过上海进博会、世界互联网大会、自己的朋友圈、微博账号开始身先士卒的安利起了各自品牌， 久未露面的刘强东为生意更新了朋友圈，苏宁少帅万里回国为公司站台，像石佛一样的黄峥开始绝地反击……</p><p>只要双11能“带货”，大佬们也是使出了浑身解数。</p><p>刘强东朋友圈安利京东物流全货机</p><p>沉默已久的刘强东，在双11到来之际，终于在微信朋友圈更新了最新动态，为的还是京东的生意。</p><p>今年9月份爆出的桃色事件，让刘强东麻烦缠身。集团形象受挫，京东股价大跌，刘强东数年塑造的好男人、好老公、好领导形象变味，几个月里马云、马化腾、李彦宏等大佬到场之处再无刘强东的身影。</p><p>11月6日下午3时左右，他在微信朋友圈留言称：“京东物流第一架全货机今日成功首航！”点赞之下是六张与货机有关的图片。</p><p>虽人未到场站台，但刘强东的这一波操作，已经为京东物流绝杀双11做足了噱头，很快京东到底发生了什么就被广而告之。毕竟，黑红也是红。</p><p>原来是这一天上午7时50分左右，从广州起飞由波音737飞机执飞的HT3806次航班，经过约3小时的飞行、跨越1900余公里，在天津滨海机场着陆，这标志着京东物流从此进入了全货机时代。</p><p>双十一拼价格、拼营销、拼体力，更拼速度。京东物流一直是刘强东的自尊心。</p><p>在刚刚过去的2018全球智能物流峰会上，京东物流发布了涵盖京东供应链、京东快递、京东冷链、京东快运、京东跨境、京东云仓在内的六大产品矩阵，而这些产品的创新和升级都与航空战略息息相关。</p><p>双11未至，京东就“放飞”了自己的物流全货机，并发声将持续大力推进航空战略，逐步构建24小时内一地发全国、中国48小时通达全球、其他国家当地48小时送达的物流网络，刘强东用速度“决战”双十一的信心十足。</p><p>京东今日双11战报中也提及了京东速度：最快一单4分钟送达。</p><p></p><p>似乎未受创始人刘强东负面消息影响，京东双11全球好物节今日频频告捷。先是早上09:36，京东11.11全球好物节累计下单金额超越了2017年11.1-11.11的1271亿元纪录。截至当日14点，京东累计下单金额超1354亿。25岁以下的年轻用户数比2008年增长了4.1万倍。</p><p><br></p>', 1, '2018-11-12 14:29:06', '2018-11-12 14:29:06', 0);
INSERT INTO `posts` VALUES (18, '为实现中华民族伟大复兴培养有用人才', '<p>原标题：为实现中华民族伟大复兴培养有用人才</p><p>　　【深入学习贯彻习近平新时代中国特色社会主义思想】</p><p>　　作者：张政文（中国社会科学院大学临时党委书记、常务副校长）；王维国（中国社会科学院大学马克思主义学院副教授）</p><p>　　编者按</p><p>　　教育是国之大计、党之大计。在全国教育大会上，习近平总书记发表重要讲话，深刻总结党的十八大以来我国教育事业发展成就，深入分析新时代教育工作面临的新形势新任务，对当前和今后一个时期教育工作作出重大部署，为加快推进教育现代化、建设教育强国、办好人民满意的教育提供了根本遵循。本版今日刊发3篇文章，从培养社会主义建设者和接班人的角度，深入学习贯彻习近平总书记重要讲话精神。</p><p>　　古往今来，人才都是富国之本、兴邦大计。面对新时代党和国家事业发展对教育改革和人才培养的新要求新期待，习近平总书记在全国教育大会上强调，要努力构建德智体美劳全面培养的教育体系，形成更高水平的人才培养体系。这一重要论述，以更高远的历史站位、更宽广的国际视野、更深邃的战略眼光，为高等教育改革发展和高校人才培养工作指明了前进方向。</p><p>　　形成更高水平人才培养体系的战略意义</p><p>　　全面落实立德树人根本任务的重要抓手。党的十八大报告首次将“立德树人”确立为教育的根本任务，党的十九大报告进一步提出，“落实立德树人根本任务”。在全国教育大会上，习近平总书记明确指出，要把立德树人融入思想道德教育、文化知识教育、社会实践教育各环节，贯穿基础教育、职业教育、高等教育各领域，学科体系、教学体系、教材体系、管理体系要围绕这个目标来设计，教师要围绕这个目标来教，学生要围绕这个目标来学。这是党中央在高等教育办学治校各领域、教育教学各环节、人才培养各方面落细落小落实立德树人根本任务的新要求、新部署，为构建德智体美劳全面培养的教育体系，形成更高水平的人才培养体系提供了基本的价值遵循和实践框架。</p><p>　　解决高等教育发展不平衡不充分的战略举措。中国特色社会主义进入新时代，我国社会主要矛盾已经转化为人民日益增长的美好生活需要和不平衡不充分的发展之间的矛盾。教育是国之大计、党之大计，是人民美好生活的重要组成部分。当前，我国已建成全球规模最庞大的高等教育体系和人才培养体系，“有没有”的问题已基本解决，发展不平衡不充分的问题日益凸显。所谓不平衡，主要指现有高等教育体系存在短板，即重教书轻育人，迫切需要进一步加强学生品德修养，提高学生审美和人文素养，教育引导学生崇尚劳动、尊重劳动。所谓不充分主要指人才培养体系水平不高、实力不强，尚与党和国家事业发展要求不相适应、与人民群众期待不相契合、与我国综合国力和国际地位不相匹配。</p><p>　　服务实现中华民族伟大复兴中国梦的必然要求。“育才造士，为国之本”。习近平总书记在全国教育大会上提出，坚持把服务中华民族伟大复兴作为教育的重要使命。在实现中国梦的伟大征程中，教育事业承担着提供接续不断人才保障和智力支持，培育中国特色社会主义合格建设者和可靠接班人的职责。必须全面贯彻党的教育方针，抓住机遇、整体布局，协同推进德育、智育、体育、美育以及劳动教育全方位育人，构建德智体美劳全面培养的教育体系；加强学科、教学、教材和管理建设，形成更高水平的人才培养体系，培养广大青年学生与新时代党和国家事业发展相适应的素质与能力，使大批创新型、复合型、应用型优秀人才不断涌现。</p><p>　　培养社会主义建设者和接班人的着力点</p><p>　　形成更高水平的学科体系。高校学科建设持续向上向好，德智体美劳全面培养教育体系的基础就会越坚实，更高水平人才培养体系的支撑就会越牢固。扎实推进一流学科建设。习近平总书记指出，建立健全学科专业动态调整机制，加快一流大学和一流学科建设。应围绕国家战略需求和国际学术前沿，重点建设一批一流学科，以一流学科为引领辐射带动学科整体水平提升。建好建强马克思主义理论学科。进一步加大支持力度，以马克思主义理论学科的优先发展、优势发展、优质发展不断提升其学科影响力和社会引领力，自觉把马克思主义基本立场观点方法贯穿人才培养全过程，融入教育教学各环节。扎实推进哲学社会科学话语体系创新。高水平学科体系建设决不能脱离中国国情、历史传统和文化积淀，应着力打造融通中外的新概念新范畴新表述，用具有鲜明中国特色、中国风格、中国气派的学术话语体系助推学科体系发展。</p><p>　　形成更高水平的教学体系。教学贵在知行统一，而知是前提、是基础。形成更高水平的教学体系，要抓好课堂教学这一基本环节，既在教学内容上下功夫，也在教学形式上有创新。教学是一门科学，也是一门艺术。要认真钻研授课艺术，不断改革教学方法，逐步形成课堂教学、实践教学、网络教学相互支撑、管理高效、评价科学的高水平教学方法体系，以高超的教学艺术吸引学生、感染学生、教育学生。同时，积极打通课堂，使校内校外、课内课外、网上网下相互衔接，思想道德教育、文化知识教育、社会实践教育无缝对接，以更好地满足学生成长诉求、时代发展要求和社会进步需求，让教学这件有意义的事情变得越来越有意思。</p><p>　　形成更高水平的教材体系。教材是国家主流意识形态的体现，也是教育教学、人才培养的基本依据。应坚持建管并举，推进教材出版进一步繁荣，教材质量进一步提高，教材管理进一步优化，形成更高水平的教材体系，为提高人才培养质量提供有力保障。加快推进马工程教材编写使用。加快推进马工程教材建设，应始终把政治导向和学术质量放在首位，使工程教材真正成为体现时代发展、适应教学实践、深受学生欢迎的精品；应按照中央要求，抓好工程教材的推广使用，将其使用情况作为学校教学工作、学科建设、思政工作等方面考核评估的重要内容。切实加强文科教材建设，应加强顶层设计，充分体现马克思主义指导地位；坚持分类指导，鼓励编写适应不同教学需要的特色教材；树立精品意识，定期对优秀教材进行修订、完善；完善激励机制，引导学科领军人物和教学名师编写教材，作为评奖评优和职务评聘的重要指标。规范引进教材的出版选用，进一步加强对引进教材的宏观管理，明确引进、出版和选用的衡量标准，宣传、教育、出版等部门应加强沟通联系，形成监管合力。</p><p></p><p>　　形成更高水平的管理体系。习近平总书记强调，加强党对教育工作的全面领导，是办好教育的根本保证。在党委领导、校长负责、教授治学、民主管理的中国特色社会主义大学治理结构中，坚持党的全面领导是最核心的要求，同时也是提高办学治校能力、形成更高水平管理体系的重要保证。高校党委要把抓好学校党建作为办学治校的基本功，把党的教育方针全面贯彻到学校工作各方面。制度带有全局性、稳定性，管根本、管长远。更高水平的管理体系体现为一系列的制度安排、体制机制。高校实现教育教学、人才培养、职称评审、经费使用等方面的高水平管理，必须从建制度、立规矩入手，在学校章程、校规校纪、内部管理等方面提出制度要求，促进高校治理有方、管理到位、风清气正。在这其中，特别要强化依法管理，大力推进依法治教、依法治校，积极运用法治思维、法治方式推进高校治理。</p><p><br></p>', 1, '2018-11-12 14:31:11', '2018-11-12 14:31:11', 0);

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES (1, '体育', '2018-11-08 09:51:30', '2018-11-08 09:51:33');
INSERT INTO `topics` VALUES (2, '娱乐', '2018-11-08 09:51:45', '2018-11-08 09:51:48');
INSERT INTO `topics` VALUES (3, '国内', '2018-11-08 09:52:02', '2018-11-08 09:52:05');
INSERT INTO `topics` VALUES (4, '国际', '2018-11-08 09:52:16', '2018-11-08 09:52:19');
INSERT INTO `topics` VALUES (5, '财经', '2018-11-08 09:52:35', '2018-11-08 09:52:39');
INSERT INTO `topics` VALUES (6, '科技', '2018-11-08 09:52:49', '2018-11-08 09:52:52');
INSERT INTO `topics` VALUES (7, '健康', '2018-11-08 09:53:09', '2018-11-08 09:53:12');
INSERT INTO `topics` VALUES (8, '教育', '2018-11-08 09:53:40', '2018-11-08 09:53:42');

-- ----------------------------
-- Table structure for user_notice
-- ----------------------------
DROP TABLE IF EXISTS `user_notice`;
CREATE TABLE `user_notice`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `notice_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'test01@qq.com', 'test01@qq.com', '$2y$10$wP7/75jbHXJb7wGGVpST7e.fR/c3BIjcHlctkN7p0ECfRJq8mFpy.', 'hKlY5YKaXSxALgTcvWswOOORVgJ5Mk3rdUjks2pjmUIGtuTDZBYL03PdfQ2i', '2018-11-08 09:49:52', '2018-11-08 10:31:28', '/storage/f6d692108e544a80ff9cc707e330849a/IHokMViIaX4DYWHqd00Xh8M4Zua8ucu6zVA7MWd1.png');
INSERT INTO `users` VALUES (2, 'test02@qq.com', 'test02@qq.com', '$2y$10$F3R5JiNN7jFfTbUVHAzql.QBLalyxD8qI.PliZdcFfwHrIa20g4Lu', 'YwObzou0HbYqCElCfPQCXfxuIA4pco12wVr5oxCcncg3tanWPKXa20iIB7mC', '2018-11-09 08:48:56', '2018-11-09 08:49:31', '/storage/cf9018e1fa8b6003a9c2bc0538932a90/BJzBSo5ELIySvsbcs8yLiLPVsU5pgpWjMMcG4uoG.png');

-- ----------------------------
-- Table structure for zans
-- ----------------------------
DROP TABLE IF EXISTS `zans`;
CREATE TABLE `zans`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of zans
-- ----------------------------
INSERT INTO `zans` VALUES (1, 1, 1, '2018-11-08 10:32:53', '2018-11-08 10:32:53');
INSERT INTO `zans` VALUES (2, 4, 1, '2018-11-08 14:28:25', '2018-11-08 14:28:25');
INSERT INTO `zans` VALUES (3, 6, 1, '2018-11-09 08:28:56', '2018-11-09 08:28:56');
INSERT INTO `zans` VALUES (4, 1, 2, '2018-11-09 08:51:46', '2018-11-09 08:51:46');

SET FOREIGN_KEY_CHECKS = 1;
