/*
 Navicat Premium Data Transfer

 Source Server         : myslq_django
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : django_blog

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 23/09/2019 23:06:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add 我的书单', 1, 'add_book');
INSERT INTO `auth_permission` VALUES (2, 'Can change 我的书单', 1, 'change_book');
INSERT INTO `auth_permission` VALUES (3, 'Can delete 我的书单', 1, 'delete_book');
INSERT INTO `auth_permission` VALUES (4, 'Can add 图书分类', 2, 'add_bookcategory');
INSERT INTO `auth_permission` VALUES (5, 'Can change 图书分类', 2, 'change_bookcategory');
INSERT INTO `auth_permission` VALUES (6, 'Can delete 图书分类', 2, 'delete_bookcategory');
INSERT INTO `auth_permission` VALUES (7, 'Can add 书籍标签', 3, 'add_booktag');
INSERT INTO `auth_permission` VALUES (8, 'Can change 书籍标签', 3, 'change_booktag');
INSERT INTO `auth_permission` VALUES (9, 'Can delete 书籍标签', 3, 'delete_booktag');
INSERT INTO `auth_permission` VALUES (10, 'Can add 分类目录', 4, 'add_category');
INSERT INTO `auth_permission` VALUES (11, 'Can change 分类目录', 4, 'change_category');
INSERT INTO `auth_permission` VALUES (12, 'Can delete 分类目录', 4, 'delete_category');
INSERT INTO `auth_permission` VALUES (13, 'Can add 教程列表', 5, 'add_courses');
INSERT INTO `auth_permission` VALUES (14, 'Can change 教程列表', 5, 'change_courses');
INSERT INTO `auth_permission` VALUES (15, 'Can delete 教程列表', 5, 'delete_courses');
INSERT INTO `auth_permission` VALUES (16, 'Can add 菜单栏', 6, 'add_meanlist');
INSERT INTO `auth_permission` VALUES (17, 'Can change 菜单栏', 6, 'change_meanlist');
INSERT INTO `auth_permission` VALUES (18, 'Can delete 菜单栏', 6, 'delete_meanlist');
INSERT INTO `auth_permission` VALUES (19, 'Can add 网站留言', 7, 'add_messages');
INSERT INTO `auth_permission` VALUES (20, 'Can change 网站留言', 7, 'change_messages');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 网站留言', 7, 'delete_messages');
INSERT INTO `auth_permission` VALUES (22, 'Can add 我的影单', 8, 'add_movie');
INSERT INTO `auth_permission` VALUES (23, 'Can change 我的影单', 8, 'change_movie');
INSERT INTO `auth_permission` VALUES (24, 'Can delete 我的影单', 8, 'delete_movie');
INSERT INTO `auth_permission` VALUES (25, 'Can add 电影分类', 9, 'add_moviecategory');
INSERT INTO `auth_permission` VALUES (26, 'Can change 电影分类', 9, 'change_moviecategory');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 电影分类', 9, 'delete_moviecategory');
INSERT INTO `auth_permission` VALUES (28, 'Can add 电影标签', 10, 'add_movietag');
INSERT INTO `auth_permission` VALUES (29, 'Can change 电影标签', 10, 'change_movietag');
INSERT INTO `auth_permission` VALUES (30, 'Can delete 电影标签', 10, 'delete_movietag');
INSERT INTO `auth_permission` VALUES (31, 'Can add 文章列表', 11, 'add_post');
INSERT INTO `auth_permission` VALUES (32, 'Can change 文章列表', 11, 'change_post');
INSERT INTO `auth_permission` VALUES (33, 'Can delete 文章列表', 11, 'delete_post');
INSERT INTO `auth_permission` VALUES (34, 'Can add 标签列表', 12, 'add_tag');
INSERT INTO `auth_permission` VALUES (35, 'Can change 标签列表', 12, 'change_tag');
INSERT INTO `auth_permission` VALUES (36, 'Can delete 标签列表', 12, 'delete_tag');
INSERT INTO `auth_permission` VALUES (37, 'Can view 我的书单', 1, 'view_book');
INSERT INTO `auth_permission` VALUES (38, 'Can view 图书分类', 2, 'view_bookcategory');
INSERT INTO `auth_permission` VALUES (39, 'Can view 书籍标签', 3, 'view_booktag');
INSERT INTO `auth_permission` VALUES (40, 'Can view 分类目录', 4, 'view_category');
INSERT INTO `auth_permission` VALUES (41, 'Can view 教程列表', 5, 'view_courses');
INSERT INTO `auth_permission` VALUES (42, 'Can view 菜单栏', 6, 'view_meanlist');
INSERT INTO `auth_permission` VALUES (43, 'Can view 网站留言', 7, 'view_messages');
INSERT INTO `auth_permission` VALUES (44, 'Can view 我的影单', 8, 'view_movie');
INSERT INTO `auth_permission` VALUES (45, 'Can view 电影分类', 9, 'view_moviecategory');
INSERT INTO `auth_permission` VALUES (46, 'Can view 电影标签', 10, 'view_movietag');
INSERT INTO `auth_permission` VALUES (47, 'Can view 文章列表', 11, 'view_post');
INSERT INTO `auth_permission` VALUES (48, 'Can view 标签列表', 12, 'view_tag');
INSERT INTO `auth_permission` VALUES (49, 'Can add 自定义代码', 13, 'add_customcode');
INSERT INTO `auth_permission` VALUES (50, 'Can change 自定义代码', 13, 'change_customcode');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 自定义代码', 13, 'delete_customcode');
INSERT INTO `auth_permission` VALUES (52, 'Can add 友情链接', 14, 'add_friendlinks');
INSERT INTO `auth_permission` VALUES (53, 'Can change 友情链接', 14, 'change_friendlinks');
INSERT INTO `auth_permission` VALUES (54, 'Can delete 友情链接', 14, 'delete_friendlinks');
INSERT INTO `auth_permission` VALUES (55, 'Can add SEO设置', 15, 'add_seo');
INSERT INTO `auth_permission` VALUES (56, 'Can change SEO设置', 15, 'change_seo');
INSERT INTO `auth_permission` VALUES (57, 'Can delete SEO设置', 15, 'delete_seo');
INSERT INTO `auth_permission` VALUES (58, 'Can add 站点信息', 16, 'add_siteinfo');
INSERT INTO `auth_permission` VALUES (59, 'Can change 站点信息', 16, 'change_siteinfo');
INSERT INTO `auth_permission` VALUES (60, 'Can delete 站点信息', 16, 'delete_siteinfo');
INSERT INTO `auth_permission` VALUES (61, 'Can add 社交账号', 17, 'add_social');
INSERT INTO `auth_permission` VALUES (62, 'Can change 社交账号', 17, 'change_social');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 社交账号', 17, 'delete_social');
INSERT INTO `auth_permission` VALUES (64, 'Can view 自定义代码', 13, 'view_customcode');
INSERT INTO `auth_permission` VALUES (65, 'Can view 友情链接', 14, 'view_friendlinks');
INSERT INTO `auth_permission` VALUES (66, 'Can view SEO设置', 15, 'view_seo');
INSERT INTO `auth_permission` VALUES (67, 'Can view 站点信息', 16, 'view_siteinfo');
INSERT INTO `auth_permission` VALUES (68, 'Can view 社交账号', 17, 'view_social');
INSERT INTO `auth_permission` VALUES (69, 'Can add 我的评论', 18, 'add_comment');
INSERT INTO `auth_permission` VALUES (70, 'Can change 我的评论', 18, 'change_comment');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 我的评论', 18, 'delete_comment');
INSERT INTO `auth_permission` VALUES (72, 'Can view 我的评论', 18, 'view_comment');
INSERT INTO `auth_permission` VALUES (73, 'Can add notification', 19, 'add_notification');
INSERT INTO `auth_permission` VALUES (74, 'Can change notification', 19, 'change_notification');
INSERT INTO `auth_permission` VALUES (75, 'Can delete notification', 19, 'delete_notification');
INSERT INTO `auth_permission` VALUES (76, 'Can view notification', 19, 'view_notification');
INSERT INTO `auth_permission` VALUES (77, 'Can add Bookmark', 20, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (78, 'Can change Bookmark', 20, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (79, 'Can delete Bookmark', 20, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (80, 'Can add User Setting', 21, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (81, 'Can change User Setting', 21, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (82, 'Can delete User Setting', 21, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (83, 'Can add User Widget', 22, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (84, 'Can change User Widget', 22, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (85, 'Can delete User Widget', 22, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (86, 'Can add log entry', 23, 'add_log');
INSERT INTO `auth_permission` VALUES (87, 'Can change log entry', 23, 'change_log');
INSERT INTO `auth_permission` VALUES (88, 'Can delete log entry', 23, 'delete_log');
INSERT INTO `auth_permission` VALUES (89, 'Can view Bookmark', 20, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (90, 'Can view log entry', 23, 'view_log');
INSERT INTO `auth_permission` VALUES (91, 'Can view User Setting', 21, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (92, 'Can view User Widget', 22, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can add log entry', 24, 'add_logentry');
INSERT INTO `auth_permission` VALUES (94, 'Can change log entry', 24, 'change_logentry');
INSERT INTO `auth_permission` VALUES (95, 'Can delete log entry', 24, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (96, 'Can view log entry', 24, 'view_logentry');
INSERT INTO `auth_permission` VALUES (97, 'Can add permission', 25, 'add_permission');
INSERT INTO `auth_permission` VALUES (98, 'Can change permission', 25, 'change_permission');
INSERT INTO `auth_permission` VALUES (99, 'Can delete permission', 25, 'delete_permission');
INSERT INTO `auth_permission` VALUES (100, 'Can add group', 26, 'add_group');
INSERT INTO `auth_permission` VALUES (101, 'Can change group', 26, 'change_group');
INSERT INTO `auth_permission` VALUES (102, 'Can delete group', 26, 'delete_group');
INSERT INTO `auth_permission` VALUES (103, 'Can add user', 27, 'add_user');
INSERT INTO `auth_permission` VALUES (104, 'Can change user', 27, 'change_user');
INSERT INTO `auth_permission` VALUES (105, 'Can delete user', 27, 'delete_user');
INSERT INTO `auth_permission` VALUES (106, 'Can view group', 26, 'view_group');
INSERT INTO `auth_permission` VALUES (107, 'Can view permission', 25, 'view_permission');
INSERT INTO `auth_permission` VALUES (108, 'Can view user', 27, 'view_user');
INSERT INTO `auth_permission` VALUES (109, 'Can add content type', 28, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (110, 'Can change content type', 28, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (111, 'Can delete content type', 28, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (112, 'Can view content type', 28, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (113, 'Can add session', 29, 'add_session');
INSERT INTO `auth_permission` VALUES (114, 'Can change session', 29, 'change_session');
INSERT INTO `auth_permission` VALUES (115, 'Can delete session', 29, 'delete_session');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$100000$115YxmXr6HOS$kcYPWvuhYeRV2cDMrKNVqohrlLTaZ9mSLvTQUMRpiYE=', '2019-09-23 09:17:05.803596', 1, 'IT老王', '', '', 'cctvjiatao@163.com', 1, 1, '2019-09-15 22:22:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_book
-- ----------------------------
DROP TABLE IF EXISTS `blog_book`;
CREATE TABLE `blog_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `score` decimal(2,1) NOT NULL,
  `created_time` date DEFAULT NULL,
  `time_consuming` varchar(100) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_book_category_id_bbe7f5c4_fk_blog_bookcategory_id` (`category_id`),
  CONSTRAINT `blog_book_category_id_bbe7f5c4_fk_blog_bookcategory_id` FOREIGN KEY (`category_id`) REFERENCES `blog_bookcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_book
-- ----------------------------
BEGIN;
INSERT INTO `blog_book` VALUES (1, '论语新解', '钱穆', 'books/book_lunyuxinjie.jpg', 9.0, '2019-09-16', '2019/09/16', '3', 1);
COMMIT;

-- ----------------------------
-- Table structure for blog_book_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_book_tag`;
CREATE TABLE `blog_book_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `booktag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_book_tag_book_id_booktag_id_89e4abb1_uniq` (`book_id`,`booktag_id`),
  KEY `blog_book_tag_booktag_id_e42c6960_fk_blog_booktag_id` (`booktag_id`),
  CONSTRAINT `blog_book_tag_book_id_d99bdad3_fk_blog_book_id` FOREIGN KEY (`book_id`) REFERENCES `blog_book` (`id`),
  CONSTRAINT `blog_book_tag_booktag_id_e42c6960_fk_blog_booktag_id` FOREIGN KEY (`booktag_id`) REFERENCES `blog_booktag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_book_tag
-- ----------------------------
BEGIN;
INSERT INTO `blog_book_tag` VALUES (1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for blog_bookcategory
-- ----------------------------
DROP TABLE IF EXISTS `blog_bookcategory`;
CREATE TABLE `blog_bookcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_bookcategory
-- ----------------------------
BEGIN;
INSERT INTO `blog_bookcategory` VALUES (1, '国学');
INSERT INTO `blog_bookcategory` VALUES (2, '教育');
INSERT INTO `blog_bookcategory` VALUES (3, '科技');
INSERT INTO `blog_bookcategory` VALUES (4, '商业');
INSERT INTO `blog_bookcategory` VALUES (5, '经济');
INSERT INTO `blog_bookcategory` VALUES (6, 'IT');
COMMIT;

-- ----------------------------
-- Table structure for blog_booktag
-- ----------------------------
DROP TABLE IF EXISTS `blog_booktag`;
CREATE TABLE `blog_booktag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_booktag
-- ----------------------------
BEGIN;
INSERT INTO `blog_booktag` VALUES (1, '经典');
INSERT INTO `blog_booktag` VALUES (2, '前沿');
COMMIT;

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
BEGIN;
INSERT INTO `blog_category` VALUES (1, '创业');
INSERT INTO `blog_category` VALUES (2, '职场');
INSERT INTO `blog_category` VALUES (3, '健康');
INSERT INTO `blog_category` VALUES (4, '科技');
INSERT INTO `blog_category` VALUES (5, '国学');
INSERT INTO `blog_category` VALUES (6, '时事');
INSERT INTO `blog_category` VALUES (7, '金融');
INSERT INTO `blog_category` VALUES (8, '培训');
INSERT INTO `blog_category` VALUES (9, '投资');
COMMIT;

-- ----------------------------
-- Table structure for blog_courses
-- ----------------------------
DROP TABLE IF EXISTS `blog_courses`;
CREATE TABLE `blog_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `introduce` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `comments` int(10) unsigned NOT NULL,
  `numbers` int(10) unsigned NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_courses_author_id_51d6b15d_fk_auth_user_id` (`author_id`),
  CONSTRAINT `blog_courses_author_id_51d6b15d_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_courses_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_courses_article`;
CREATE TABLE `blog_courses_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_courses_article_courses_id_post_id_fb906a47_uniq` (`courses_id`,`post_id`),
  KEY `blog_courses_article_post_id_faa58bb8_fk_blog_post_id` (`post_id`),
  CONSTRAINT `blog_courses_article_courses_id_a136836f_fk_blog_courses_id` FOREIGN KEY (`courses_id`) REFERENCES `blog_courses` (`id`),
  CONSTRAINT `blog_courses_article_post_id_faa58bb8_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_meanlist
-- ----------------------------
DROP TABLE IF EXISTS `blog_meanlist`;
CREATE TABLE `blog_meanlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_meanlist
-- ----------------------------
BEGIN;
INSERT INTO `blog_meanlist` VALUES (1, '每日资讯', 'archives', NULL);
INSERT INTO `blog_meanlist` VALUES (2, 'IT技术', NULL, NULL);
INSERT INTO `blog_meanlist` VALUES (3, '电影', 'movies', NULL);
INSERT INTO `blog_meanlist` VALUES (4, '读书', 'books', NULL);
INSERT INTO `blog_meanlist` VALUES (5, '留言', 'messages', NULL);
COMMIT;

-- ----------------------------
-- Table structure for blog_messages
-- ----------------------------
DROP TABLE IF EXISTS `blog_messages`;
CREATE TABLE `blog_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_messages_admin_id_694f73fa_fk_auth_user_id` (`admin_id`),
  CONSTRAINT `blog_messages_admin_id_694f73fa_fk_auth_user_id` FOREIGN KEY (`admin_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_messages
-- ----------------------------
BEGIN;
INSERT INTO `blog_messages` VALUES (1, '请问可以注册后发表文章吗？', 1);
COMMIT;

-- ----------------------------
-- Table structure for blog_movie
-- ----------------------------
DROP TABLE IF EXISTS `blog_movie`;
CREATE TABLE `blog_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `director` varchar(100) NOT NULL,
  `actor` varchar(100) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `score` decimal(2,1) NOT NULL,
  `release_time` date NOT NULL,
  `created_time` date NOT NULL,
  `length_time` int(10) unsigned NOT NULL,
  `watch_time` date NOT NULL,
  `pid` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_movie_category_id_53ed0a3a_fk_blog_moviecategory_id` (`category_id`),
  CONSTRAINT `blog_movie_category_id_53ed0a3a_fk_blog_moviecategory_id` FOREIGN KEY (`category_id`) REFERENCES `blog_moviecategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_movie
-- ----------------------------
BEGIN;
INSERT INTO `blog_movie` VALUES (1, '杀人回忆', '奉俊昊', '宋康昊', 'movies/movie_sharenhuiyi.jpg', 8.8, '2003-05-02', '2019-09-23', 131, '2019-09-20', '', 1);
INSERT INTO `blog_movie` VALUES (2, '那家伙的声音', '朴镇彪', '薛耿求 金南珠', 'movies/movie_najiahuodeshengyin.jpg', 7.5, '2007-02-01', '2019-09-23', 122, '2019-09-22', '', 1);
INSERT INTO `blog_movie` VALUES (3, '孩子们', '李圭满', '朴勇宇 柳承龙 成东日 朱进模 成志娄', 'movies/movie_haizimen.jpg', 7.4, '2011-02-17', '2019-09-23', 132, '2019-09-24', '', 1);
INSERT INTO `blog_movie` VALUES (4, '一级机密', '洪基善', '金相庆 金玉彬 崔武成 崔奎华 金炳哲', 'movies/movie_yijijimi.jpg', 7.2, '2017-07-20', '2019-09-23', 101, '2019-09-28', '', 1);
COMMIT;

-- ----------------------------
-- Table structure for blog_movie_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_movie_tag`;
CREATE TABLE `blog_movie_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `movietag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_movie_tag_movie_id_movietag_id_bb3d0edb_uniq` (`movie_id`,`movietag_id`),
  KEY `blog_movie_tag_movietag_id_962e19f2_fk_blog_movietag_id` (`movietag_id`),
  CONSTRAINT `blog_movie_tag_movie_id_8136471f_fk_blog_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `blog_movie` (`id`),
  CONSTRAINT `blog_movie_tag_movietag_id_962e19f2_fk_blog_movietag_id` FOREIGN KEY (`movietag_id`) REFERENCES `blog_movietag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_movie_tag
-- ----------------------------
BEGIN;
INSERT INTO `blog_movie_tag` VALUES (1, 1, 1);
INSERT INTO `blog_movie_tag` VALUES (2, 2, 1);
INSERT INTO `blog_movie_tag` VALUES (3, 3, 1);
INSERT INTO `blog_movie_tag` VALUES (4, 4, 1);
COMMIT;

-- ----------------------------
-- Table structure for blog_moviecategory
-- ----------------------------
DROP TABLE IF EXISTS `blog_moviecategory`;
CREATE TABLE `blog_moviecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_moviecategory
-- ----------------------------
BEGIN;
INSERT INTO `blog_moviecategory` VALUES (1, '真实事件');
COMMIT;

-- ----------------------------
-- Table structure for blog_movietag
-- ----------------------------
DROP TABLE IF EXISTS `blog_movietag`;
CREATE TABLE `blog_movietag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_movietag
-- ----------------------------
BEGIN;
INSERT INTO `blog_movietag` VALUES (1, '韩国');
COMMIT;

-- ----------------------------
-- Table structure for blog_post
-- ----------------------------
DROP TABLE IF EXISTS `blog_post`;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `excerpt` varchar(200) NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `words` int(10) unsigned NOT NULL,
  `status` varchar(1) NOT NULL,
  `stick` varchar(1) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`),
  KEY `blog_post_category_id_c326dbf8_fk_blog_category_id` (`category_id`),
  CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_post_category_id_c326dbf8_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_post
-- ----------------------------
BEGIN;
INSERT INTO `blog_post` VALUES (1, '【资讯】雄安新区构建“四位一体”智能城市系统', '![](/media/editor/xiongan_20190916070657701360.jpg)\r\n9月13日下午至14日，河北省省委书记、省人大常委会主任王东峰在雄安新区连续召开河北雄安新区规划建设工作领导小组专题会议。会议强调，要加强卫星信息传输、感知系统、5G基站、通讯和宽带技术等智能基础设施建设，推进互联网、物联网、局域网建设，建立雄安新区信息中心、超算中心、大数据交易中心、指挥调度中心，打造高标准雄安“智慧大脑”。\r\n\r\n会议强调，要扎实推进雄安智能城市建设，建立健全智能城市标准体系、终端使用标准体系、技术标准体系，构建天上、地上、地下、终端“四位一体”智能城市系统。要加强卫星信息传输、感知系统、5G基站、通讯和宽带技术等智能基础设施建设，推进互联网、物联网、局域网建设，建立雄安新区信息中心、超算中心、大数据交易中心、指挥调度中心，打造高标准雄安“智慧大脑”。要强化终端利用，提高现代办公、城市管理、工程建设、公共交通、惠民服务、企业诚信体系和社会征信体系建设等领域智能化水平，建立全域覆盖、万物互联的终端应用系统。要开展对网络建设和运行的监督检测，加强信息化体系安全保护，切实防范化解风险，确保雄安新区智能城市系统高效安全运行。', '2019-09-14 23:02:00.000000', '2019-09-16 02:56:53.785672', '扎实推进雄安智能城市建设，建立健全智能城市标准体系、终端使用标准体系、技术标准体系，构建天上、地上、地下、终端“四位一体”智能城市系统。', 1, 525, 'p', 'n', 1, 6);
INSERT INTO `blog_post` VALUES (2, '【资讯】天津将出台氢能产业发展行动方案 2022年总产值预计超百亿元', '![天津氢能源](/media/editor/tianjin_20190916071238320092.jpg)\r\n9月15日，天津市发改委编制的《天津市氢能产业发展行动方案（2019—2022年）》中提出了天津市氢能产业发展的顶层设计。据悉，到2022年，天津市将初步打造形成氢能全产业链发展格局，预计行业总产值将突破百亿元。在充分吸取专家意见基础上，天津市发改委将对《行动方案》进一步修改完善，本月报经天津市政府审定后出台。\r\n\r\n《行动方案》提出了18项重点任务，旨在依托京津冀协同发展区位优势，聚焦制约氢能产业发展的核心问题，通过引导产业链和创新链深度融合，为经济发展培育新的增长点。根据《行动方案》，天津将打造三个试点示范区，重点在交通领域推广应用氢燃料电池物流车、公交车、叉车等，并配套建设商业加氢站，保障气源安全稳定供应。此外，《行动方案》还制定了保障措施及配套财政支持政策，将对天津进一步优化营商环境，加快招引行业优势企业起到重要推动作用。', '2019-09-15 23:09:00.000000', '2019-09-16 02:56:42.739864', '9月15日，天津市发改委编制的《天津市氢能产业发展行动方案（2019—2022年）》中提出了天津市氢能产业发展的顶层设计。', 4, 425, 'p', 'n', 1, 6);
INSERT INTO `blog_post` VALUES (3, '【读书】论语新解', '## 学而篇第一\r\n### （一）\r\n> 子曰：“学而时习之，不亦说乎？有朋自远方来，不亦乐乎？人不知而不愠，不亦君子乎？”\r\n\r\n先生说：“学能时时反复习之，我心不很觉欣畅吗？有许多朋友从远而来，我心不更感快乐吗？别人不知道我，我心不存些微怫郁不欢之意，不真是一位修养有成德的君子吗？”', '2019-09-16 02:39:00.000000', '2019-09-16 02:57:06.951450', '子曰：“学而时习之，不亦说乎？有朋自远方来，不亦乐乎？人不知而不愠，不亦君子乎？”', 7, 137, 'p', 'n', 1, 5);
INSERT INTO `blog_post` VALUES (4, '【投资】人往往高估一年的变化，但低估五年的变化', '“人往往会高估一年时间发生的变化，但低估五年时间发生的变化。”\r\n\r\n这句话不知道是谁的原创，有说是彼得·德鲁克，也有看到引用比尔·盖茨，李开复、薛兆丰等等总之很多人都说过。不过我最早是从《东吴相对论》吴伯凡那边听到的，当时觉得醍醐灌顶。\r\n\r\n（一）\r\n\r\n最近的一次感慨，是关于新能源车。\r\n\r\n因为工作关系，时不时会使用滴滴。越来越经常打到的，是新能源车。自己开车的时候，也发现路上代表新能源的绿色车牌越来越多，包括长安、北汽、比亚迪，乃至长城的欧拉，什么云度汽车（我至今不太了解这家），间或看到的特斯拉、蔚来、小鹏之类，都觉得还挺惊艳的。\r\n\r\n这还只是在三四线城市，有些一线城市，好像燃油车早就禁牌了吧？是不是满街电动？\r\n\r\n以前看到绿牌车还觉得挺新奇，现在开车在路上似乎不看到绿牌都难。而且，有点气人的是，绿牌的车牌号总是更好，尽管不少似乎是“骗”补贴的烂车。\r\n\r\n有一天跟滴滴师傅聊天。问这车能开多长啊？300公里。哦，那在城里开都没啥问题……充电得多久啊？一个小时。都哪里充啊？就刚才接你那个山头那边就有一个充电站。哦？那现在这种充电站不多吧？师傅说：是你们不知道而已，其实到处都有。\r\n\r\n我才突然想起文章开头那句话：人往往会高估一年时间发生的变化，但低估五年时间发生的变化。\r\n\r\n大家想想身边刚看到头几辆新能源车的时候，是哪一年？到现在，差不多也是五年左右吧。我们是不是迎来了新能源车的一个拐点呢？\r\n\r\n曾经我并不太看好新能源车，确实很多垃圾车型在“骗补”，实质的技术上并没什么真正突破，出来的产品也缺乏诚意。但是随着时间推移，积累的量变很可能会导致质变，包括技术的改进和升级迭代，政策的落地施行，基础设施的完善，等等。突然意识到，乘用车这个市场，天翻地覆的那一刻，可能就在不远的前方了。\r\n\r\n毕竟，一旦充电跟加油差不多方便的话，也看不太出电动车替代燃油车的阻碍了。想当年，就政令一下，城里禁了摩托车，电动助力车自然而然地蓬勃发展起来了，不过用了几年时间。\r\n\r\n（二）\r\n\r\n再遥想一下智能手机的发展路径。\r\n\r\n苹果公司第一代的iPhone在2007年发布，然后开始进入了3G时代，又发布了第二代的iPhone 3G，是在2008年6月。\r\n\r\n而功能机霸主诺基亚（Nokia），甚至在iPhone面世之后，它也仍推出了E系列等热卖的商务机型。但后来的故事大家都知道了，跟不上时代，就被时代无情地碾压。2013年9月，诺基亚委身卖给了微软。\r\n\r\n你看一下从苹果iPhone的诞生到诺基亚的陨落，间隔差不多也就五年左右。而在变化刚开的那一年，也就是08年、09年那阵子，我还去买了诺基亚的E71——全键盘却不觉大，还挺轻薄的，用起来得心应手——全然未感受到大变革即将来临。\r\n\r\n既然说到智能手机……\r\n\r\n华为的P系列首款机型P1大概是2012年发售，Mate系列首款机型大概是2013年发售。彼时，三星的Galaxy系列旗舰大概是出到S3、S4，在Android 阵营中如日中天。\r\n\r\n五年过后……反正到了2019年华为手机的销售份额已经是全球第一了；而三星2018年的时候在中国市场销售份额就不到1%了，溃败得如此之迅速，很多业内人士都有点错愕，毕竟人家的手机质量还是保持在一线水准，怎么在国内就卖成这样了？\r\n\r\n只用了五年，有些公司就翻天覆地。究竟发生了什么？甚至都说不大清楚。\r\n\r\n（三）\r\n\r\n然后我们再来说一说5G。\r\n\r\n说5G之前，先说说4G。2013年12月工信部向三家运营商发放了4G牌照，所以2014年可谓中国4G元年。五年后的今天，除了手机市场的格局沧海桑田之外，我们的生活方式也都发生了巨大改变。\r\n\r\n比如……你还记得上一次使用现金是什么时候吗？如今连菜市场买菜、路边停车等等都手机支付替代了。前几天小孩开学订阅期刊，要带钱到学校去交，我愣是在家里东拼西凑了半天零钱。\r\n\r\n起初谁又能想到一个无线通信技术的升级换代，竟能对金融领域造成如此大的变革？\r\n\r\n所以5G很可能也会是类似的道理。我们现在往往看不清变化的方向，但是变化仍然会难以阻挡地发生。过个一年，你可能觉得失望，平平无奇；过个五年，蓦然回首，发现好多东西都彻底不一样了。\r\n\r\n站在当下，我们绝大部分人确实是多半看不清5G未来发展和影响的。\r\n\r\n大家还记得3G刚推出的时候，运营商宣传的3G卖点是什么吗？是视频通话。结果呢，运营商的视频通话业务几乎全部胎死腹中。待到4G时代，反而是微信、苹果的FaceTime这些发展起来，以及我没怎么关注但知道已经火得不行的直播行业。\r\n\r\n这两年你听过的5G卖点又是什么？有说VR的。但我认为5G时代的VR很可能就像3G时的视频通话一样是个伪需求。有说无人智能驾驶的，但从技术难度和覆盖难度来看，估计五年还远远不够……\r\n\r\n前期我是看衰5G的。我对运营商这一行还算熟悉。4G投入才多久？覆盖还有多少死角？5G的应用又在哪里？设备商比如华为当然极力推动5G，但我知道运营商其实都不太想建5G网络，效益根本看不到。现在几乎所有主流的业内预测都说，国内5G还得3到5年才能有像样的网络。\r\n\r\n只不过，科技方面的预测向来容易打脸。让我们来看两个著名的案例：\r\n\r\n我觉得全世界可能只能卖出五台计算机吧。——沃森，IBM主席，1943\r\n\r\n\"I think there is a world market for maybe five computers.\" -- Thomas Watson, chairman of IBM, 1943\r\n\r\n640K内存妥妥够用了。——比尔·盖茨，1981\r\n\r\n\"640K ought to be enough for anybody.\" -- Bill Gates, 1981\r\n\r\n可想而知，下一代通讯技术肯定也会颠覆我们当前的生活。当然具体的时间跨度可能不止五年。但相信五年也足以发生许多事情了。\r\n\r\n我们不妨畅想一下，5G真正会带来哪些变化？\r\n\r\n首先，网速其实并不是4G的痛点。4G技术已经比我们很多人家里用的有线宽带更快了。相反，速度快了之后，很多用户更担心不小心产生高额流量费用——所以未来运营商几乎肯定会出现按网速/带宽收费的模式。\r\n\r\n4G的痛点我认为有两个。第一个是覆盖能力，这方面5G并不能更好地解决，反而频段更高，穿透更差。所以姑且按下不表。\r\n\r\n4G的第二个痛点是承载能力。肯定有人遇到过，比如一场爆满的演唱会现场，如果很多人都开高清视频直播……目前的情况是，有时连微信都不见得发得出去。\r\n\r\n5G的三大特性或者说优势：高速率、大容量、低时延。其中，很可能“大容量”才真正击中4G的痛点。\r\n\r\n未来，会是一个万物互联的社会，而5G为它提供了基础设施网络。无论是汽车、电动助力车、家用电器、安防监控、工业传感设备，乃至跑鞋、书包等等，恐怕都会联上网。\r\n\r\n值得提醒的是，诸如很多通用传感器、RFID芯片及读写器等产业，必然会大规模发展，但是并不存在太大的投资机会，因为未来那些都是最最基本的东西了，门槛极低，就好比现在做个充电宝之类的，能赚啥钱？\r\n\r\n无论是单机时代的微软，互联网时代和移动互联网时代的FAANG（Facebook+Amazon+Apple+Netflix+Google），国内的腾讯和阿里巴巴，真正赚钱的，似乎都是做系统和做平台的。\r\n\r\n五年之后，谁又会成为5G和万物互联的枢纽和霸主呢？小米？华为？抑或某家尚未崭露头角的新星？\r\n\r\n（四）\r\n\r\n投资的人生，好像也没有几个五年。\r\n\r\n我们高估过哪些短期变化，又低估过哪些长期变化呢？\r\n\r\n还记得曾经造就过一时中国首富的太阳能产业吗？经历各种亏损和幻灭，其实后来，中国的太阳能产业技术和制造能力确实成长起来了，领先全球，并且牢牢把握着市场份额。\r\n\r\n当前热炒5G概念股票的，当然基本都是傻子和投机客——尽管5G也必然在历经岁月之后改变我们的世界。\r\n\r\n新能源车？中国制造能否真的如许多人期望的那样，实现“弯道超车”？正如同家用电器和智能手机走过的路那般？\r\n\r\n……\r\n\r\n除了产业方面，还有市场方面。\r\n\r\n大家知道美国的股市参与者是以机构为主，而A股是以散户为主。但是这个结构什么时候开始变化了么？量变何时能积累成质变呢？大家可以自己去找找数据。\r\n\r\n再说个事情：港股通。2014年11月沪港通正式开通，南下资金逐渐流入港股市场……转眼，也快五年了。这五年里，港股表现依然比较低迷，AH价差甚至还有所扩大，但是未来谁又敢说不会来一场惊天巨变呢？\r\n\r\n许多大变化的发生，都不可能一蹴而就，然而水滴石穿也是亘古就有的道理。\r\n\r\n我们不应该高估短期变化，更不能低估长期变化。\r\n\r\n就投资而言，更重要的还是留意那些细小但能够日积月累的变化，不要着急做判断、下结论，因为这个世界的惯性实在太大；只需多一些耐心，它们终将汇成滔滔大河，冲刷我们既有的现实社会，最终形成一块崭新平原。', '2019-09-17 03:23:00.000000', '2019-09-17 03:25:59.634021', '这句话不知道是谁的原创，有说是彼得·德鲁克，也有看到引用比尔·盖茨，李开复、薛兆丰等等总之很多人都说过。不过我最早是从《东吴相对论》吴伯凡那边听到的，当时觉得醍醐灌顶。', 1, 3560, 'p', 'n', 1, 9);
INSERT INTO `blog_post` VALUES (5, '【资讯】国内首个在线住宿平台服务团体标准在京发布', '9月23日讯，据中证网消息，我国在线住宿领域首个团体标准《在线住宿平台服务规范》（以下简称“《规范》”）在京发布，旨在提升在线住宿服务水平，保障消费者权益，强化平台自律。《规范》的发布和实施将对引导行业发展，推动协同治理起到积极促进作用。适用的对象包括开展在线经营活动的酒店、旅馆、客栈、民宿等各类住宿设施。\r\n\r\n\r\n![](/media/editor/zufang_20190923223654924667.jpg)\r\n\r\n其中，对在线住宿平台以及平台内经营者的行为提出了具体要求，内容涵盖在线住宿服务的全流程，涉及基本行为规范、信息提供与审核、产品信息展示、预订服务、经营者线上服务管理、评价管理、用户权益保护、应急机制、信息安全与隐私保护等方面。\r\n\r\n规范中对搜索结果展示、产品和服务定价、先行赔付和快速理赔等提出了具体要求。强调“在同等交易条件下，平台上同一产品或者服务的价格应保持一致”。针对交易纠纷和用户权益受损问题，要求平台应建立先行赔付机制和快速理赔通道，经核实经营者确实存在过错的，平台应向用户先行赔付，包括退还预付款项或者赔偿损失。\r\n\r\n以拓宽租户社交圈为特色的的海外青年共享公寓“Tripalink”、同性恋公寓“FUNX自由青年社区”、酒店客房服务平台提供商“猴得住”等项目，在互联网+住宿模式爆发增长的同时，《在线住宿平台服务规范》的发布，完善了在线住宿领域的监管，提出了提高服务水平的要求，或将为在线住宿领域带来新的机会。', '2019-09-23 14:30:00.000000', '2019-09-23 14:38:34.916833', '《在线住宿平台服务规范》的发布，完善了在线住宿领域的监管，提出了提高服务水平的要求，或将为在线住宿领域带来新的机会。', 1, 619, 'p', 'n', 1, 6);
INSERT INTO `blog_post` VALUES (6, '【创业】超2亿人的“单身经济”，正在崛起', '数以亿计的单身人士背后有着巨大的市场需求。\r\n\r\n日本老人租妻子组建共享家庭的话题曾在网上引发热议。据报道，日本独居老人以每次花费4万日元（约2500元）的方式租老婆孩子来排解孤独。\r\n\r\n如果这样的孤独消费你未曾经历过，那么友唱KTV、陌陌APP、呷哺呷哺火锅、胶囊酒店你一定不陌生。“独乐”消费形式正在我们身边悄然兴起。\r\n\r\n### 中国单身成年人口超2亿\r\n\r\n据民政部的数据显示：2018年中国单身成年人口已经超过2亿，独居成年人口超过7700万。\r\n\r\n今年2月份，智联招聘联合珍爱网调研并发布了《2018年职场人婚恋观调研报告》（简称《报告》）调研数据显示：参与调研的职场人中，68.33%处于单身状态。\r\n\r\n其中，海口的单身率最高，87.5%职场人是单身\r\n\r\n![](/media/editor/danshenjingji1_20190923224612691169.jpg)\r\n\r\n如今，城市白领单身现象越来越普遍。今年3月智联招聘发布的《2019年白领生活状况调研报告》调研数据显示：白领婚姻状况中“未婚且单身”占比最高，为40.18%。其中，男生白领的单身比例略高于女性，为43.04%；女性单身比例为38.59%。\r\n\r\n虽然互联网渗透到各个角落，白领们认识异性的途径却有些传统，主要是通过“工作认识”和“朋友介绍”，分别占比28.58%与23.46%。还有14.67%的白领则表示“基本没有接触异性的途径”。另外，极光大数据的调查也显示，多数单身人士人数为交际圈窄是单身的主要原因。\r\n\r\n![](/media/editor/danshenjingji2_20190923224713617461.jpg)\r\n\r\n数据也显示，超四成白领认为婚姻不能将就，并对30岁不结婚的现象表示理解，还有14%的白领认为不结婚可以享受自由。\r\n\r\n### “十级孤独”是怎样的体验，“单身经济”引关注\r\n“一个人逛超市，一个人去餐厅吃饭，一个人去咖啡厅，一个人看电影，一个人吃火锅，一个人去练歌房唱歌，一个人去看海，一个人去游乐园，一个人搬家，一个人去做手术”。这是网络上流传的一份“孤独等级表”。“一个人去做手术”被视为最高等级——十级孤独。\r\n\r\n![](/media/editor/danshenjingji3_20190923224848664955.jpg)\r\n\r\n“单身经济”如何定义？有单身人群注重生活质量，崇尚高品质消费生活而带来的商机。\r\n\r\n中国黄金集团首席经济学家万喆认为，孤独经济是适应人口的变化而生的。“社会人口结构出现了一定的变化，需求层次就出现变化，比如，如果出生率特别高，那么就有婴儿经济；如果老龄化严重，那么就会出现老龄经济；现在单身的人变多，就会形成孤独经济。”\r\n\r\n### 单身经济背后的商机\r\n阿里巴巴2017年发布的《中国空巢青年图鉴》也显示，中国的“空巢青年”群体已经超过半亿，且孤独人口多分布于高薪职业，其中金融、互联网IT、教育位居前三，这说明大部分孤独人群具有较高的消费能力。\r\n\r\n宠物经济作为单身消费的代表，其所带动的宠物主粮、零食、保健品、用品以及医疗产品市场都包含了巨大的消费潜力。狗民网发布的《2018年中国宠物行业白皮书》显示，2018年中国宠物（猫狗）消费市场规模达到1708亿，同比增长27%。白皮书还显示，养宠省市的繁荣程度也和独居人口分布最多的城市成正比。家住北京朝阳区的独居女生小刘称：“即便养宠物又累又费钱，但是还是有很多人都在养，其实不是猫狗需要我们，而是我们离不开它们。”\r\n\r\n迷你KTV也是单身一族排遣寂寞的“良药”。艾媒咨询数据显示，2017年中国迷你KTV市场规模增至35.2亿元，其中单身人群占比高达35.6%。在传统KTV市场疲软的背景下，迷你KTV正是抓住了单身经济和碎片化消费的需求。\r\n\r\n除了宠物经济和迷你KTV，单身经济还出现在现代社会中的方方面面，一人食餐厅、胶囊酒店，一人旅行等吃住行的孤单消费都应运而生。\r\n\r\n### “一个人”能扛起多大的消费市场？\r\n“第二份半价”，是我们常见的这是商家促销手法。而对于单人消费者来讲，这似乎不太“友好”。如今，针对“单人经济”的专属服务来了。在浙江绍兴市区某大型商场，一家火锅店推出单人锅底，和传统火锅动辄四五十元一份的锅底不同，单人锅锅底十几元一份，让“一个人”吃火锅变得更为轻松便捷。\r\n\r\n第一财经商业数据中心（CBNData）联合口碑发布的《2018生活消费趋势报告》显示，“单人的自我乐活模式”正引领一场全新生活方式的变革。近年来，迷你练歌房、一个人看电影等针对一个人的经济也越来越多。\r\n\r\n日前，国金消费研究中心发布的2019年《单身经济专题分析报告》指出，“花钱买方便”是单身消费的动向之一：靠近社区、高品控的便利店是更适合单身群体的购物场景，同时，外卖是单身青年们的饮食首选，这甚至影响了95后男孩小陈在租房上的选择。小陈说：“环境一定要好一点，麦当劳、肯德基、德克士配送范围一定要在里面。”\r\n\r\n![](/media/editor/danshenjingji4_20190923225026012906.jpg)\r\n\r\n在众多消费者都要买上一笔的“双十一”，“一个人”的影响力也已经脱颖而出。去年“双十一”多家网络销售平台数据显示，“一人份”商品在销售“爆款”中蹿红。\r\n\r\n阿里巴巴集团公众与客户沟通部曹颉介绍，功能细分的迷你家电新物种已经成为单身人士“标配”。曹颉表示：“‘单身经济’的走热首先反应在一个‘小’字上，一个人生活需要的家电家具更迷你，但相应的功能性需求并没有减少，因此，大到冰箱、烤箱、洗衣机，小到餐具、日常饮食，品牌商将注意力放在更小的包装和更贴心的设计上，以求适应独居消费者对于生活品质的追求。比如专供女士用来冰镇面膜、小规格酒的180公升以下迷你小冰箱卖得非常好。”\r\n\r\n在线下，一家大型电器卖场的工作人员潘越也表示，这种适合独居人士的单身小家电，销量也在增长。潘越说：“它的容量比较小，这些小电饭煲、微波炉200多元就可以买到，上午小型扫地机器人已经卖好几台了。”\r\n\r\n有媒体这样给单身群体“画像”：\r\n\r\n收入水平上，除了在一线城市新一代消费者月收入在1万-2万元区间内占比较高之外，伴随城市等级的降低，3000-6000元月收入的占比越来越高，月入6000-8000元上下可能是1985-1995年单身年轻人更为确切的收入情况\r\n\r\n![](/media/editor/danshenjingji5_20190923225126438666.jpg)\r\n\r\n家庭环境上，属于中国第一代和第二代独生子女，父母基本为上世纪60-70年代出生，目前基本上都处在在职状态，无赡养老人的压力。自己挣钱自己花，部分父母每月甚至还能提供资金支持。\r\n\r\n消费观念上，资产价格高企，“与其攒钱买房，不如及时行乐”成为很多单身群体“口头禅”。\r\n\r\n个人决策会体现出更多的情绪化与感性化，对价格的敏感程度也会降低，更注重产品品质和安全，追求舒适、便利的购物环境，敢消费甚至超前消费成为群体“标签”。\r\n\r\n除了商品和服务消费，国金消费研究中心2019年《单身经济专题分析报告》还表明，“单人经济”消费者为了悦己而消费，“一个人”旅游，追求更高体验感；为了“买寄托”而消费，“一个人”养宠物，寻求“亲人”般的陪伴；为了“未来”而消费，“一个人”购买非学历教育充实、提升自我。\r\n\r\n![](/media/editor/danshenjingji6_20190923225142102120.jpg)\r\n\r\n数以亿计的单身人士背后是巨大的市场需求。“在消费升级的浪潮之下，中国广大三四五线城市的消费者，以小镇青年为代表的下沉市场消费者也展示出强大的全新需求。”\r\n\r\n除了主打“一个人”，也有专家指出，“单人经济”“单身经济”这类的“孤独经济”其亮点不在于孤独经济本身，而在于所向往的“团圆经济”，因此，一些让不认识的人能互相接触的团体活动也可以说是一种“孤独经济”。\r\n\r\n“单身群体是拉动消费升级的主力大军，这个趋势将会持续很长一段时间。”有观点认为，越来越多的新业态出现和快速发展也凸显出单身人士作为消费新势力的崛起，未来单身群体带动的消费体量将会进一步增加，单身人群也将越来越多地成为商家发力的重点。\r\n\r\n甚至在网络上，有人调侃，各方都已经瞄准单身人士，除了爱情。', '2019-09-23 14:44:00.000000', '2019-09-23 14:53:41.886115', '据民政部的数据显示：2018年中国单身成年人口已经超过2亿，独居成年人口超过7700万。', 1, 3403, 'p', 'n', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for blog_post_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_post_tag`;
CREATE TABLE `blog_post_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_tag_post_id_tag_id_ba2a5f83_uniq` (`post_id`,`tag_id`),
  KEY `blog_post_tag_tag_id_2bbd31e4_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_post_tag_post_id_a5c00319_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  CONSTRAINT `blog_post_tag_tag_id_2bbd31e4_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_post_tag
-- ----------------------------
BEGIN;
INSERT INTO `blog_post_tag` VALUES (1, 1, 6);
INSERT INTO `blog_post_tag` VALUES (2, 2, 6);
INSERT INTO `blog_post_tag` VALUES (4, 3, 8);
INSERT INTO `blog_post_tag` VALUES (5, 4, 5);
INSERT INTO `blog_post_tag` VALUES (6, 5, 6);
INSERT INTO `blog_post_tag` VALUES (7, 6, 5);
COMMIT;

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
BEGIN;
INSERT INTO `blog_tag` VALUES (1, '文青');
INSERT INTO `blog_tag` VALUES (2, '80后');
INSERT INTO `blog_tag` VALUES (3, '90后');
INSERT INTO `blog_tag` VALUES (4, '生活');
INSERT INTO `blog_tag` VALUES (5, '正经事');
INSERT INTO `blog_tag` VALUES (6, '政策');
INSERT INTO `blog_tag` VALUES (7, '搞笑');
INSERT INTO `blog_tag` VALUES (8, '读书');
INSERT INTO `blog_tag` VALUES (9, '电影');
COMMIT;

-- ----------------------------
-- Table structure for comment_comment
-- ----------------------------
DROP TABLE IF EXISTS `comment_comment`;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `text` longtext NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (24, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (26, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (25, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (27, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (1, 'blog', 'book');
INSERT INTO `django_content_type` VALUES (2, 'blog', 'bookcategory');
INSERT INTO `django_content_type` VALUES (3, 'blog', 'booktag');
INSERT INTO `django_content_type` VALUES (4, 'blog', 'category');
INSERT INTO `django_content_type` VALUES (5, 'blog', 'courses');
INSERT INTO `django_content_type` VALUES (6, 'blog', 'meanlist');
INSERT INTO `django_content_type` VALUES (7, 'blog', 'messages');
INSERT INTO `django_content_type` VALUES (8, 'blog', 'movie');
INSERT INTO `django_content_type` VALUES (9, 'blog', 'moviecategory');
INSERT INTO `django_content_type` VALUES (10, 'blog', 'movietag');
INSERT INTO `django_content_type` VALUES (11, 'blog', 'post');
INSERT INTO `django_content_type` VALUES (12, 'blog', 'tag');
INSERT INTO `django_content_type` VALUES (18, 'comment', 'comment');
INSERT INTO `django_content_type` VALUES (28, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (19, 'notifications', 'notification');
INSERT INTO `django_content_type` VALUES (29, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (13, 'setting', 'customcode');
INSERT INTO `django_content_type` VALUES (14, 'setting', 'friendlinks');
INSERT INTO `django_content_type` VALUES (15, 'setting', 'seo');
INSERT INTO `django_content_type` VALUES (16, 'setting', 'siteinfo');
INSERT INTO `django_content_type` VALUES (17, 'setting', 'social');
INSERT INTO `django_content_type` VALUES (20, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (21, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'userwidget');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-09-15 22:18:38.305342');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2019-09-15 22:18:38.629052');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2019-09-15 22:18:38.697023');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-09-15 22:18:38.709940');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2019-09-15 22:18:38.762585');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2019-09-15 22:18:38.786145');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2019-09-15 22:18:38.820764');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2019-09-15 22:18:38.831544');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2019-09-15 22:18:38.854221');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2019-09-15 22:18:38.856507');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2019-09-15 22:18:38.874465');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2019-09-15 22:18:38.899635');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0009_alter_user_last_name_max_length', '2019-09-15 22:18:38.935860');
INSERT INTO `django_migrations` VALUES (14, 'blog', '0001_initial', '2019-09-15 22:18:39.712688');
INSERT INTO `django_migrations` VALUES (15, 'comment', '0001_initial', '2019-09-15 22:18:39.852260');
INSERT INTO `django_migrations` VALUES (16, 'notifications', '0001_initial', '2019-09-15 22:18:39.968572');
INSERT INTO `django_migrations` VALUES (17, 'notifications', '0002_auto_20150224_1134', '2019-09-15 22:18:40.056231');
INSERT INTO `django_migrations` VALUES (18, 'notifications', '0003_notification_data', '2019-09-15 22:18:40.099469');
INSERT INTO `django_migrations` VALUES (19, 'notifications', '0004_auto_20150826_1508', '2019-09-15 22:18:40.115301');
INSERT INTO `django_migrations` VALUES (20, 'notifications', '0005_auto_20160504_1520', '2019-09-15 22:18:40.142709');
INSERT INTO `django_migrations` VALUES (21, 'notifications', '0006_indexes', '2019-09-15 22:18:40.256945');
INSERT INTO `django_migrations` VALUES (22, 'sessions', '0001_initial', '2019-09-15 22:18:40.291606');
INSERT INTO `django_migrations` VALUES (23, 'setting', '0001_initial', '2019-09-15 22:18:40.398367');
INSERT INTO `django_migrations` VALUES (24, 'xadmin', '0001_initial', '2019-09-15 22:18:40.579368');
INSERT INTO `django_migrations` VALUES (25, 'xadmin', '0002_log', '2019-09-15 22:18:40.656136');
INSERT INTO `django_migrations` VALUES (26, 'xadmin', '0003_auto_20160715_0100', '2019-09-15 22:18:40.690962');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('52gq022yibkcep7hbbcvkaq810jag2y3', 'YTJmZDk3ZmI1YmY0OGNkMzE3NzMzOWUxZTI0MzMwNzczYmViYWZmZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTk1MmM4MWNiZDk2MTY5MWFhZTRhMGVjMDY3ODdjZjc0OWYwMzI3IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsInBvc3QiXSwiIl19', '2019-10-07 14:53:42.820056');
INSERT INTO `django_session` VALUES ('bdxcjsdj2o2jx8igyfc4hosg7igirl7l', 'YTJmZDk3ZmI1YmY0OGNkMzE3NzMzOWUxZTI0MzMwNzczYmViYWZmZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTk1MmM4MWNiZDk2MTY5MWFhZTRhMGVjMDY3ODdjZjc0OWYwMzI3IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsInBvc3QiXSwiIl19', '2019-10-01 03:26:00.368938');
INSERT INTO `django_session` VALUES ('uir8g5jgvninox3by4xiaw8xll4y74ag', 'MTI0MmZlMDgyOThiNzg1MWViYzlmNTk2YzMxNmVjZTEwODgwNDU4ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTk1MmM4MWNiZDk2MTY5MWFhZTRhMGVjMDY3ODdjZjc0OWYwMzI3IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsIm1vdmllY2F0ZWdvcnkiXSwiIl19', '2019-10-07 09:31:21.250367');
COMMIT;

-- ----------------------------
-- Table structure for notifications_notification
-- ----------------------------
DROP TABLE IF EXISTS `notifications_notification`;
CREATE TABLE `notifications_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(20) NOT NULL,
  `unread` tinyint(1) NOT NULL,
  `actor_object_id` varchar(255) NOT NULL,
  `verb` varchar(255) NOT NULL,
  `description` longtext,
  `target_object_id` varchar(255) DEFAULT NULL,
  `action_object_object_id` varchar(255) DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `action_object_content_type_id` int(11) DEFAULT NULL,
  `actor_content_type_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `target_content_type_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `emailed` tinyint(1) NOT NULL,
  `data` longtext,
  PRIMARY KEY (`id`),
  KEY `notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co` (`action_object_content_type_id`),
  KEY `notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co` (`actor_content_type_id`),
  KEY `notifications_notification_recipient_id_d055f3f0_fk_auth_user_id` (`recipient_id`),
  KEY `notifications_notifi_target_content_type__ccb24d88_fk_django_co` (`target_content_type_id`),
  KEY `notifications_notification_deleted_b32b69e6` (`deleted`),
  KEY `notifications_notification_emailed_23a5ad81` (`emailed`),
  KEY `notifications_notification_public_1bc30b1c` (`public`),
  KEY `notifications_notification_unread_cce4be30` (`unread`),
  CONSTRAINT `notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co` FOREIGN KEY (`action_object_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co` FOREIGN KEY (`actor_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notifi_target_content_type__ccb24d88_fk_django_co` FOREIGN KEY (`target_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notification_recipient_id_d055f3f0_fk_auth_user_id` FOREIGN KEY (`recipient_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setting_customcode
-- ----------------------------
DROP TABLE IF EXISTS `setting_customcode`;
CREATE TABLE `setting_customcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statistics` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting_customcode
-- ----------------------------
BEGIN;
INSERT INTO `setting_customcode` VALUES (1, '<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?6ee0763a6899e587470fe1124fa7238c\";\r\n  var s = document.getElementsByTagName(\"script\")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>');
COMMIT;

-- ----------------------------
-- Table structure for setting_friendlinks
-- ----------------------------
DROP TABLE IF EXISTS `setting_friendlinks`;
CREATE TABLE `setting_friendlinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `link` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting_friendlinks
-- ----------------------------
BEGIN;
INSERT INTO `setting_friendlinks` VALUES (1, '牛氏圆柔筋骨堂', 'http://www.0532zhenggu.com');
INSERT INTO `setting_friendlinks` VALUES (2, '玩Android', 'https://www.wanandroid.com');
INSERT INTO `setting_friendlinks` VALUES (3, '慕课网', 'https://www.imooc.com');
COMMIT;

-- ----------------------------
-- Table structure for setting_seo
-- ----------------------------
DROP TABLE IF EXISTS `setting_seo`;
CREATE TABLE `setting_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `keywords` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setting_siteinfo
-- ----------------------------
DROP TABLE IF EXISTS `setting_siteinfo`;
CREATE TABLE `setting_siteinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` date NOT NULL,
  `record_info` varchar(100) NOT NULL,
  `development_info` varchar(100) NOT NULL,
  `arrange_info` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting_siteinfo
-- ----------------------------
BEGIN;
INSERT INTO `setting_siteinfo` VALUES (1, '2018-09-16', '京ICP备19016663号', '基于Django2.0和Python3.6开发', '使用Ubuntu+Uwsgi+Nginx部署于阿里云');
COMMIT;

-- ----------------------------
-- Table structure for setting_social
-- ----------------------------
DROP TABLE IF EXISTS `setting_social`;
CREATE TABLE `setting_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `github` varchar(200) NOT NULL,
  `wei_bo` varchar(200) NOT NULL,
  `zhi_hu` varchar(200) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `wechat` varchar(50) NOT NULL,
  `official_wechat` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting_social
-- ----------------------------
BEGIN;
INSERT INTO `setting_social` VALUES (1, 'https://github.com/jt1024', 'https://weibo.com/', 'https://www.zhihu.com', '154924540', 'tao_1024M', 'IT老王很年轻');
COMMIT;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_log` VALUES (1, '2019-09-15 22:36:36.158411', '127.0.0.1', '1', 'MeanList object (1)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (2, '2019-09-15 22:38:13.133725', '127.0.0.1', '2', 'MeanList object (2)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (3, '2019-09-15 22:39:00.502031', '127.0.0.1', '3', 'MeanList object (3)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (4, '2019-09-15 22:39:10.962125', '127.0.0.1', '4', 'MeanList object (4)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (5, '2019-09-15 22:39:31.580194', '127.0.0.1', '5', 'MeanList object (5)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (6, '2019-09-15 22:43:18.033649', '127.0.0.1', '1', '创业', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (7, '2019-09-15 22:43:24.029520', '127.0.0.1', '2', '职场', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (8, '2019-09-15 22:43:30.222338', '127.0.0.1', '3', '健康', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (9, '2019-09-15 22:43:35.822694', '127.0.0.1', '4', '科技', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (10, '2019-09-15 22:43:40.188884', '127.0.0.1', '5', '国学', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (11, '2019-09-15 22:44:06.783992', '127.0.0.1', '6', '新闻', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (12, '2019-09-15 22:44:24.085815', '127.0.0.1', '7', '金融', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (13, '2019-09-15 22:44:29.621648', '127.0.0.1', '8', '培训', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (14, '2019-09-15 22:59:27.334374', '127.0.0.1', '1', '文青', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (15, '2019-09-15 22:59:37.880080', '127.0.0.1', '2', '80后', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (16, '2019-09-15 22:59:45.389128', '127.0.0.1', '3', '90后', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (17, '2019-09-15 22:59:56.013339', '127.0.0.1', '4', '生活', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (18, '2019-09-15 23:00:22.895938', '127.0.0.1', '5', '正经事', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (19, '2019-09-15 23:01:46.513606', '127.0.0.1', '6', '时事', 'change', '修改 name', 4, 1);
INSERT INTO `xadmin_log` VALUES (20, '2019-09-15 23:02:04.870565', '127.0.0.1', '6', '政策', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (21, '2019-09-15 23:02:19.137564', '127.0.0.1', '7', '搞笑', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (22, '2019-09-15 23:07:35.034469', '127.0.0.1', '1', '雄安新区构建“四位一体”智能城市系统', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (23, '2019-09-15 23:08:57.375242', '127.0.0.1', '1', '雄安新区构建“四位一体”智能城市系统', 'change', '修改 body', 11, 1);
INSERT INTO `xadmin_log` VALUES (24, '2019-09-15 23:11:50.596751', '127.0.0.1', '2', '天津将出台氢能产业发展行动方案 2022年总产值预计超百亿元', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (25, '2019-09-15 23:14:25.362395', '127.0.0.1', '2', '天津将出台氢能产业发展行动方案 2022年总产值预计超百亿元', 'change', '修改 body', 11, 1);
INSERT INTO `xadmin_log` VALUES (26, '2019-09-15 23:15:47.822640', '127.0.0.1', '1', '雄安新区构建“四位一体”智能城市系统', 'change', '修改 created_time', 11, 1);
INSERT INTO `xadmin_log` VALUES (27, '2019-09-15 23:16:54.433784', '127.0.0.1', '1', 'IT老王', 'change', '修改 last_login 和 username', 27, 1);
INSERT INTO `xadmin_log` VALUES (28, '2019-09-15 23:19:14.120363', '127.0.0.1', '1', 'Messages object (1)', 'create', '已添加', 7, 1);
INSERT INTO `xadmin_log` VALUES (29, '2019-09-16 00:19:47.347243', '127.0.0.1', '1', 'SiteInfo object (1)', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (30, '2019-09-16 00:20:34.656867', '127.0.0.1', '1', 'FriendLinks object (1)', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (31, '2019-09-16 00:21:09.837941', '127.0.0.1', '2', 'FriendLinks object (2)', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (32, '2019-09-16 00:21:43.065772', '127.0.0.1', '3', 'FriendLinks object (3)', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (33, '2019-09-16 00:24:19.910570', '127.0.0.1', '1', 'Social object (1)', 'create', '已添加', 17, 1);
INSERT INTO `xadmin_log` VALUES (34, '2019-09-16 02:28:43.231424', '127.0.0.1', '1', '国学', 'create', '已添加', 2, 1);
INSERT INTO `xadmin_log` VALUES (35, '2019-09-16 02:28:48.695333', '127.0.0.1', '2', '教育', 'create', '已添加', 2, 1);
INSERT INTO `xadmin_log` VALUES (36, '2019-09-16 02:28:52.588933', '127.0.0.1', '3', '科技', 'create', '已添加', 2, 1);
INSERT INTO `xadmin_log` VALUES (37, '2019-09-16 02:28:56.471355', '127.0.0.1', '4', '商业', 'create', '已添加', 2, 1);
INSERT INTO `xadmin_log` VALUES (38, '2019-09-16 02:29:05.072797', '127.0.0.1', '5', '经济', 'create', '已添加', 2, 1);
INSERT INTO `xadmin_log` VALUES (39, '2019-09-16 02:29:11.061161', '127.0.0.1', '6', 'IT', 'create', '已添加', 2, 1);
INSERT INTO `xadmin_log` VALUES (40, '2019-09-16 02:29:31.125124', '127.0.0.1', '1', '经典', 'create', '已添加', 3, 1);
INSERT INTO `xadmin_log` VALUES (41, '2019-09-16 02:29:37.220561', '127.0.0.1', '2', '前沿', 'create', '已添加', 3, 1);
INSERT INTO `xadmin_log` VALUES (42, '2019-09-16 02:38:08.110324', '127.0.0.1', '1', '论语新解', 'create', '已添加', 1, 1);
INSERT INTO `xadmin_log` VALUES (43, '2019-09-16 02:50:22.296080', '127.0.0.1', '3', '【读书】论语新解', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (44, '2019-09-16 02:50:31.934265', '127.0.0.1', '8', '读书', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (45, '2019-09-16 02:50:37.579619', '127.0.0.1', '9', '电影', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (46, '2019-09-16 02:50:55.679701', '127.0.0.1', '3', '【读书】论语新解', 'change', '修改 tag', 11, 1);
INSERT INTO `xadmin_log` VALUES (47, '2019-09-16 02:51:06.714935', '127.0.0.1', '3', '【读书】论语新解', 'change', '修改 status', 11, 1);
INSERT INTO `xadmin_log` VALUES (48, '2019-09-16 02:52:35.077431', '127.0.0.1', '1', '论语新解', 'change', '修改 pid', 1, 1);
INSERT INTO `xadmin_log` VALUES (49, '2019-09-16 02:55:38.347368', '127.0.0.1', '3', '【读书】论语新解', 'change', '修改 body', 11, 1);
INSERT INTO `xadmin_log` VALUES (50, '2019-09-16 02:56:42.855077', '127.0.0.1', '2', '【资讯】天津将出台氢能产业发展行动方案 2022年总产值预计超百亿元', 'change', '修改 title', 11, 1);
INSERT INTO `xadmin_log` VALUES (51, '2019-09-16 02:56:53.918419', '127.0.0.1', '1', '【资讯】雄安新区构建“四位一体”智能城市系统', 'change', '修改 title', 11, 1);
INSERT INTO `xadmin_log` VALUES (52, '2019-09-16 02:57:07.036351', '127.0.0.1', '3', '【读书】论语新解', 'change', '修改 status', 11, 1);
INSERT INTO `xadmin_log` VALUES (53, '2019-09-16 02:57:53.222580', '127.0.0.1', '1', 'FriendLinks object (1)', 'change', '修改 link', 14, 1);
INSERT INTO `xadmin_log` VALUES (54, '2019-09-16 03:05:37.874102', '127.0.0.1', '1', 'CustomCode object (1)', 'create', '已添加', 13, 1);
INSERT INTO `xadmin_log` VALUES (55, '2019-09-17 03:23:40.603201', '127.0.0.1', '9', '投资', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (56, '2019-09-17 03:25:45.418867', '127.0.0.1', '4', '人往往高估一年的变化，但低估五年的变化', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (57, '2019-09-17 03:26:00.266303', '127.0.0.1', '4', '【投资】人往往高估一年的变化，但低估五年的变化', 'change', '修改 title', 11, 1);
INSERT INTO `xadmin_log` VALUES (58, '2019-09-23 09:17:37.073661', '127.0.0.1', '1', '真实事件改编', 'create', '已添加', 9, 1);
INSERT INTO `xadmin_log` VALUES (59, '2019-09-23 09:17:56.967526', '127.0.0.1', '1', '韩国', 'create', '已添加', 10, 1);
INSERT INTO `xadmin_log` VALUES (60, '2019-09-23 09:20:20.717726', '127.0.0.1', '1', '杀人回忆', 'create', '已添加', 8, 1);
INSERT INTO `xadmin_log` VALUES (61, '2019-09-23 09:20:30.729643', '127.0.0.1', '1', '杀人回忆', 'change', '没有数据变化', 8, 1);
INSERT INTO `xadmin_log` VALUES (62, '2019-09-23 09:24:07.312178', '127.0.0.1', '2', '那家伙的声音', 'create', '已添加', 8, 1);
INSERT INTO `xadmin_log` VALUES (63, '2019-09-23 09:26:40.888886', '127.0.0.1', '3', '孩子们', 'create', '已添加', 8, 1);
INSERT INTO `xadmin_log` VALUES (64, '2019-09-23 09:26:59.354120', '127.0.0.1', '1', '杀人回忆', 'change', '修改 watch_time', 8, 1);
INSERT INTO `xadmin_log` VALUES (65, '2019-09-23 09:29:47.114978', '127.0.0.1', '4', '一级机密', 'create', '已添加', 8, 1);
INSERT INTO `xadmin_log` VALUES (66, '2019-09-23 09:31:21.166567', '127.0.0.1', '1', '真实事件', 'change', '修改 name', 9, 1);
INSERT INTO `xadmin_log` VALUES (67, '2019-09-23 14:38:14.634556', '127.0.0.1', '5', '国内首个在线住宿平台服务团体标准在京发布', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (68, '2019-09-23 14:38:35.035973', '127.0.0.1', '5', '【资讯】国内首个在线住宿平台服务团体标准在京发布', 'change', '修改 title', 11, 1);
INSERT INTO `xadmin_log` VALUES (69, '2019-09-23 14:53:19.331121', '127.0.0.1', '6', '超2亿人的“单身经济”，正在崛起', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (70, '2019-09-23 14:53:42.706102', '127.0.0.1', '6', '【创业】超2亿人的“单身经济”，正在崛起', 'change', '修改 title', 11, 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
