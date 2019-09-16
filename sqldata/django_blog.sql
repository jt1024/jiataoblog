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

 Date: 16/09/2019 08:26:47
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
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$100000$115YxmXr6HOS$kcYPWvuhYeRV2cDMrKNVqohrlLTaZ9mSLvTQUMRpiYE=', '2019-09-16 00:03:03.849572', 1, 'IT老王', '', '', 'cctvjiatao@163.com', 1, 1, '2019-09-15 22:22:00.000000');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_bookcategory
-- ----------------------------
DROP TABLE IF EXISTS `blog_bookcategory`;
CREATE TABLE `blog_bookcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_booktag
-- ----------------------------
DROP TABLE IF EXISTS `blog_booktag`;
CREATE TABLE `blog_booktag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_moviecategory
-- ----------------------------
DROP TABLE IF EXISTS `blog_moviecategory`;
CREATE TABLE `blog_moviecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_movietag
-- ----------------------------
DROP TABLE IF EXISTS `blog_movietag`;
CREATE TABLE `blog_movietag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_post
-- ----------------------------
BEGIN;
INSERT INTO `blog_post` VALUES (1, '雄安新区构建“四位一体”智能城市系统', '![](/media/editor/xiongan_20190916070657701360.jpg)\r\n9月13日下午至14日，河北省省委书记、省人大常委会主任王东峰在雄安新区连续召开河北雄安新区规划建设工作领导小组专题会议。会议强调，要加强卫星信息传输、感知系统、5G基站、通讯和宽带技术等智能基础设施建设，推进互联网、物联网、局域网建设，建立雄安新区信息中心、超算中心、大数据交易中心、指挥调度中心，打造高标准雄安“智慧大脑”。\r\n\r\n会议强调，要扎实推进雄安智能城市建设，建立健全智能城市标准体系、终端使用标准体系、技术标准体系，构建天上、地上、地下、终端“四位一体”智能城市系统。要加强卫星信息传输、感知系统、5G基站、通讯和宽带技术等智能基础设施建设，推进互联网、物联网、局域网建设，建立雄安新区信息中心、超算中心、大数据交易中心、指挥调度中心，打造高标准雄安“智慧大脑”。要强化终端利用，提高现代办公、城市管理、工程建设、公共交通、惠民服务、企业诚信体系和社会征信体系建设等领域智能化水平，建立全域覆盖、万物互联的终端应用系统。要开展对网络建设和运行的监督检测，加强信息化体系安全保护，切实防范化解风险，确保雄安新区智能城市系统高效安全运行。', '2019-09-14 23:02:00.000000', '2019-09-15 23:15:47.735410', '扎实推进雄安智能城市建设，建立健全智能城市标准体系、终端使用标准体系、技术标准体系，构建天上、地上、地下、终端“四位一体”智能城市系统。', 1, 525, 'p', 'n', 1, 6);
INSERT INTO `blog_post` VALUES (2, '天津将出台氢能产业发展行动方案 2022年总产值预计超百亿元', '![天津氢能源](/media/editor/tianjin_20190916071238320092.jpg)\r\n9月15日，天津市发改委编制的《天津市氢能产业发展行动方案（2019—2022年）》中提出了天津市氢能产业发展的顶层设计。据悉，到2022年，天津市将初步打造形成氢能全产业链发展格局，预计行业总产值将突破百亿元。在充分吸取专家意见基础上，天津市发改委将对《行动方案》进一步修改完善，本月报经天津市政府审定后出台。\r\n\r\n《行动方案》提出了18项重点任务，旨在依托京津冀协同发展区位优势，聚焦制约氢能产业发展的核心问题，通过引导产业链和创新链深度融合，为经济发展培育新的增长点。根据《行动方案》，天津将打造三个试点示范区，重点在交通领域推广应用氢燃料电池物流车、公交车、叉车等，并配套建设商业加氢站，保障气源安全稳定供应。此外，《行动方案》还制定了保障措施及配套财政支持政策，将对天津进一步优化营商环境，加快招引行业优势企业起到重要推动作用。', '2019-09-15 23:09:00.000000', '2019-09-15 23:14:25.262540', '9月15日，天津市发改委编制的《天津市氢能产业发展行动方案（2019—2022年）》中提出了天津市氢能产业发展的顶层设计。', 3, 425, 'p', 'n', 1, 6);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_post_tag
-- ----------------------------
BEGIN;
INSERT INTO `blog_post_tag` VALUES (1, 1, 6);
INSERT INTO `blog_post_tag` VALUES (2, 2, 6);
COMMIT;

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
INSERT INTO `django_session` VALUES ('52gq022yibkcep7hbbcvkaq810jag2y3', 'NDg4YmJmZjQ5ZTRjMWQ2MzY3NTI2NWVmZGM1NmVmNDM3NGI1OWEyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MTk1MmM4MWNiZDk2MTY5MWFhZTRhMGVjMDY3ODdjZjc0OWYwMzI3IiwiTElTVF9RVUVSWSI6W1sic2V0dGluZyIsInNvY2lhbCJdLCIiXX0=', '2019-09-30 00:25:06.152830');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
INSERT INTO `setting_friendlinks` VALUES (1, '牛氏圆柔筋骨堂', 'https://www.0532zhenggu.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

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
