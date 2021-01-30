-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-01-30 20:29:27
-- 服务器版本： 5.7.26
-- PHP 版本： 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `laravel`
--

-- --------------------------------------------------------

--
-- 表的结构 `adverts`
--

CREATE TABLE `adverts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广告标题',
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片链接',
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '跳转链接',
  `sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `position_id` int(11) NOT NULL COMMENT '位置ID',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '广告描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `keywords` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键词',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `thumb` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缩略图',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(11) NOT NULL COMMENT '资讯ID',
  `tag_id` int(11) NOT NULL COMMENT '标签ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `adcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '行政编码',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名字',
  `center` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '经纬度',
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '级别',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `icons`
--

CREATE TABLE `icons` (
  `id` int(10) UNSIGNED NOT NULL,
  `unicode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'unicode 字符',
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类名',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `icons`
--

INSERT INTO `icons` (`id`, `unicode`, `class`, `name`, `sort`, `created_at`, `updated_at`) VALUES
(1, '&#xe6c9;', 'layui-icon-rate-half', '半星', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(2, '&#xe67b;', 'layui-icon-rate', '星星-空心', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(3, '&#xe67a;', 'layui-icon-rate-solid', '星星-实心', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(4, '&#xe678;', 'layui-icon-cellphone', '手机', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(5, '&#xe679;', 'layui-icon-vercode', '验证码', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(6, '&#xe677;', 'layui-icon-login-wechat', '微信', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(7, '&#xe676;', 'layui-icon-login-qq', 'QQ', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(8, '&#xe675;', 'layui-icon-login-weibo', '微博', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(9, '&#xe673;', 'layui-icon-password', '密码', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(10, '&#xe66f;', 'layui-icon-username', '用户名', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(11, '&#xe9aa;', 'layui-icon-refresh-3', '刷新-粗', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(12, '&#xe672;', 'layui-icon-auz', '授权', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(13, '&#xe66b;', 'layui-icon-spread-left', '左向右伸缩菜单', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(14, '&#xe668;', 'layui-icon-shrink-right', '右向左伸缩菜单', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(15, '&#xe6b1;', 'layui-icon-snowflake', '雪花', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(16, '&#xe702;', 'layui-icon-tips', '提示说明', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(17, '&#xe66e;', 'layui-icon-note', '便签', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(18, '&#xe68e;', 'layui-icon-home', '主页', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(19, '&#xe674;', 'layui-icon-senior', '高级', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(20, '&#xe669;', 'layui-icon-refresh', '刷新', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(21, '&#xe666;', 'layui-icon-refresh-1', '刷新', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(22, '&#xe66c;', 'layui-icon-flag', '旗帜', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(23, '&#xe66a;', 'layui-icon-theme', '主题', 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(24, '&#xe667;', 'layui-icon-notice', '消息-通知', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(25, '&#xe7ae;', 'layui-icon-website', '网站', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(26, '&#xe665;', 'layui-icon-console', '控制台', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(27, '&#xe664;', 'layui-icon-face-surprised', '表情-惊讶', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(28, '&#xe716;', 'layui-icon-set', '设置-空心', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(29, '&#xe656;', 'layui-icon-template-1', '模板', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(30, '&#xe653;', 'layui-icon-app', '应用', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(31, '&#xe663;', 'layui-icon-template', '模板', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(32, '&#xe6c6;', 'layui-icon-praise', '赞', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(33, '&#xe6c5;', 'layui-icon-tread', '踩', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(34, '&#xe662;', 'layui-icon-male', '男', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(35, '&#xe661;', 'layui-icon-female', '女', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(36, '&#xe660;', 'layui-icon-camera', '相机-空心', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(37, '&#xe65d;', 'layui-icon-camera-fill', '相机-实心', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(38, '&#xe65f;', 'layui-icon-more', '菜单-水平', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(39, '&#xe671;', 'layui-icon-more-vertical', '菜单-垂直', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(40, '&#xe65e;', 'layui-icon-rmb', '金额-人民币', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(41, '&#xe659;', 'layui-icon-dollar', '金额-美元', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(42, '&#xe735;', 'layui-icon-diamond', '钻石-等级', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(43, '&#xe756;', 'layui-icon-fire', '火', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(44, '&#xe65c;', 'layui-icon-return', '返回', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(45, '&#xe715;', 'layui-icon-location', '位置-地图', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(46, '&#xe705;', 'layui-icon-read', '办公-阅读', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(47, '&#xe6b2;', 'layui-icon-survey', '调查', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(48, '&#xe6af;', 'layui-icon-face-smile', '表情-微笑', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(49, '&#xe69c;', 'layui-icon-face-cry', '表情-哭泣', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(50, '&#xe698;', 'layui-icon-cart-simple', '购物车', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(51, '&#xe657;', 'layui-icon-cart', '购物车', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(52, '&#xe65b;', 'layui-icon-next', '下一页', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(53, '&#xe65a;', 'layui-icon-prev', '上一页', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(54, '&#xe681;', 'layui-icon-upload-drag', '上传-空心-拖拽', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(55, '&#xe67c;', 'layui-icon-upload', '上传-实心', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(56, '&#xe601;', 'layui-icon-download-circle', '下载-圆圈', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(57, '&#xe857;', 'layui-icon-component', '组件', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(58, '&#xe655;', 'layui-icon-file-b', '文件-粗', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(59, '&#xe770;', 'layui-icon-user', '用户', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(60, '&#xe670;', 'layui-icon-find-fill', '发现-实心', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(61, '&#xe63d;', 'layui-icon-loading', 'loading', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(62, '&#xe63e;', 'layui-icon-loading-1', 'loading', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(63, '&#xe654;', 'layui-icon-add-1', '添加', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(64, '&#xe652;', 'layui-icon-play', '播放', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(65, '&#xe651;', 'layui-icon-pause', '暂停', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(66, '&#xe6fc;', 'layui-icon-headset', '音频-耳机', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(67, '&#xe6ed;', 'layui-icon-video', '视频', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(68, '&#xe688;', 'layui-icon-voice', '语音-声音', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(69, '&#xe645;', 'layui-icon-speaker', '消息-通知-喇叭', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(70, '&#xe64f;', 'layui-icon-fonts-del', '删除线', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(71, '&#xe64e;', 'layui-icon-fonts-code', '代码', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(72, '&#xe64b;', 'layui-icon-fonts-html', 'HTML', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(73, '&#xe62b;', 'layui-icon-fonts-strong', '字体加粗', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(74, '&#xe64d;', 'layui-icon-unlink', '删除链接', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(75, '&#xe64a;', 'layui-icon-picture', '图片', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(76, '&#xe64c;', 'layui-icon-link', '链接', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(77, '&#xe650;', 'layui-icon-face-smile-b', '表情-笑-粗', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(78, '&#xe649;', 'layui-icon-align-left', '左对齐', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(79, '&#xe648;', 'layui-icon-align-right', '右对齐', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(80, '&#xe647;', 'layui-icon-align-center', '居中对齐', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(81, '&#xe646;', 'layui-icon-fonts-u', '字体-下划线', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(82, '&#xe644;', 'layui-icon-fonts-i', '字体-斜体', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(83, '&#xe62a;', 'layui-icon-tabs', 'Tabs 选项卡', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(84, '&#xe643;', 'layui-icon-radio', '单选框-选中', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(85, '&#xe63f;', 'layui-icon-circle', '单选框-候选', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(86, '&#xe642;', 'layui-icon-edit', '编辑', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(87, '&#xe641;', 'layui-icon-share', '分享', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(88, '&#xe640;', 'layui-icon-delete', '删除', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(89, '&#xe63c;', 'layui-icon-form', '表单', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(90, '&#xe63b;', 'layui-icon-cellphone-fine', '手机-细体', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(91, '&#xe63a;', 'layui-icon-dialogue', '聊天 对话 沟通', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(92, '&#xe639;', 'layui-icon-fonts-clear', '文字格式化', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(93, '&#xe638;', 'layui-icon-layer', '窗口', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(94, '&#xe637;', 'layui-icon-date', '日期', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(95, '&#xe636;', 'layui-icon-water', '水 下雨', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(96, '&#xe635;', 'layui-icon-code-circle', '代码-圆圈', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(97, '&#xe634;', 'layui-icon-carousel', '轮播组图', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(98, '&#xe633;', 'layui-icon-prev-circle', '翻页', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(99, '&#xe632;', 'layui-icon-layouts', '布局', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(100, '&#xe631;', 'layui-icon-util', '工具', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(101, '&#xe630;', 'layui-icon-templeate-1', '选择模板', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(102, '&#xe62f;', 'layui-icon-upload-circle', '上传-圆圈', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(103, '&#xe62e;', 'layui-icon-tree', '树', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(104, '&#xe62d;', 'layui-icon-table', '表格', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(105, '&#xe62c;', 'layui-icon-chart', '图表', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(106, '&#xe629;', 'layui-icon-chart-screen', '图标 报表 屏幕', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(107, '&#xe628;', 'layui-icon-engine', '引擎', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(108, '&#xe625;', 'layui-icon-triangle-d', '下三角', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(109, '&#xe623;', 'layui-icon-triangle-r', '右三角', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(110, '&#xe621;', 'layui-icon-file', '文件', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(111, '&#xe620;', 'layui-icon-set-sm', '设置-小型', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(112, '&#xe61f;', 'layui-icon-add-circle', '添加-圆圈', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(113, '&#xe61c;', 'layui-icon-404', '404', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(114, '&#xe60b;', 'layui-icon-about', '关于', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(115, '&#xe619;', 'layui-icon-up', '箭头 向上', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(116, '&#xe61a;', 'layui-icon-down', '箭头 向下', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(117, '&#xe603;', 'layui-icon-left', '箭头 向左', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(118, '&#xe602;', 'layui-icon-right', '箭头 向右', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(119, '&#xe617;', 'layui-icon-circle-dot', '圆点', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(120, '&#xe615;', 'layui-icon-search', '搜索', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(121, '&#xe614;', 'layui-icon-set-fill', '设置-实心', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(122, '&#xe613;', 'layui-icon-group', '群组', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(123, '&#xe612;', 'layui-icon-friends', '好友', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(124, '&#xe611;', 'layui-icon-reply-fill', '回复 评论 实心', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(125, '&#xe60f;', 'layui-icon-menu-fill', '菜单 隐身 实心', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(126, '&#xe60e;', 'layui-icon-log', '记录', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(127, '&#xe60d;', 'layui-icon-picture-fine', '图片-细体', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(128, '&#xe60c;', 'layui-icon-face-smile-fine', '表情-笑-细体', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(129, '&#xe60a;', 'layui-icon-list', '列表', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(130, '&#xe609;', 'layui-icon-release', '发布 纸飞机', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(131, '&#xe605;', 'layui-icon-ok', '对 OK', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(132, '&#xe607;', 'layui-icon-help', '帮助', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(133, '&#xe606;', 'layui-icon-chat', '客服', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(134, '&#xe604;', 'layui-icon-top', 'top 置顶', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(135, '&#xe600;', 'layui-icon-star', '收藏-空心', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(136, '&#xe658;', 'layui-icon-star-fill', '收藏-实心', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(137, '&#x1007;', 'layui-icon-close-fill', '关闭-实心', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(138, '&#x1006;', 'layui-icon-close', '关闭-空心', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(139, '&#x1005;', 'layui-icon-ok-circle', '正确', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16'),
(140, '&#xe608;', 'layui-icon-add-circle-fine', '添加-圆圈-细体', 0, '2021-01-30 12:02:16', '2021-01-30 12:02:16');

-- --------------------------------------------------------

--
-- 表的结构 `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `remember_token` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '记住我',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '消息内容',
  `read` int(11) NOT NULL DEFAULT '1' COMMENT '1-未读，2-已读',
  `send_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '消息发送者UUID，1表示系统发送',
  `accept_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息接收者UUID',
  `flag` int(11) NOT NULL COMMENT '消息对应关系：12-系统推送给后台，13-系统推送给前台,22-后台推送给后台，23-后台推送给前台，32-前台推送给后台，33-前台推送给前台，',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_26_171101_create_district_table', 1),
(4, '2018_05_04_090903_create_members_table', 1),
(5, '2018_05_04_103656_create_tags_table', 1),
(6, '2018_05_04_134703_create_categories_table', 1),
(7, '2018_05_04_135258_create_articles_table', 1),
(8, '2018_05_07_160110_create_article_tag_table', 1),
(9, '2018_05_14_091108_create_sites_table', 1),
(10, '2018_05_14_115332_create_table_positions', 1),
(11, '2018_05_14_115355_create_table_adverts', 1),
(12, '2018_05_31_162020_create_icons_table', 1),
(13, '2018_06_07_092825_create_messages_table', 1),
(14, '2018_06_25_014048_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- 表的结构 `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_id`, `model_type`) VALUES
(1, 1, 'App\\Models\\User'),
(2, 1, 'App\\Models\\User'),
(3, 1, 'App\\Models\\User'),
(4, 1, 'App\\Models\\User'),
(5, 1, 'App\\Models\\User'),
(6, 1, 'App\\Models\\User'),
(7, 1, 'App\\Models\\User'),
(8, 1, 'App\\Models\\User'),
(9, 1, 'App\\Models\\User'),
(10, 1, 'App\\Models\\User'),
(11, 1, 'App\\Models\\User'),
(12, 1, 'App\\Models\\User'),
(13, 1, 'App\\Models\\User'),
(14, 1, 'App\\Models\\User'),
(15, 1, 'App\\Models\\User'),
(16, 1, 'App\\Models\\User'),
(17, 1, 'App\\Models\\User'),
(18, 1, 'App\\Models\\User'),
(19, 1, 'App\\Models\\User'),
(20, 1, 'App\\Models\\User'),
(21, 1, 'App\\Models\\User'),
(22, 1, 'App\\Models\\User'),
(23, 1, 'App\\Models\\User'),
(24, 1, 'App\\Models\\User'),
(25, 1, 'App\\Models\\User'),
(26, 1, 'App\\Models\\User'),
(27, 1, 'App\\Models\\User'),
(28, 1, 'App\\Models\\User'),
(29, 1, 'App\\Models\\User'),
(30, 1, 'App\\Models\\User'),
(31, 1, 'App\\Models\\User'),
(32, 1, 'App\\Models\\User'),
(33, 1, 'App\\Models\\User'),
(34, 1, 'App\\Models\\User'),
(35, 1, 'App\\Models\\User'),
(36, 1, 'App\\Models\\User'),
(37, 1, 'App\\Models\\User'),
(38, 1, 'App\\Models\\User'),
(39, 1, 'App\\Models\\User'),
(40, 1, 'App\\Models\\User'),
(41, 1, 'App\\Models\\User'),
(42, 1, 'App\\Models\\User'),
(43, 1, 'App\\Models\\User'),
(44, 1, 'App\\Models\\User'),
(45, 1, 'App\\Models\\User'),
(46, 1, 'App\\Models\\User'),
(47, 1, 'App\\Models\\User'),
(48, 1, 'App\\Models\\User'),
(49, 1, 'App\\Models\\User'),
(50, 1, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- 表的结构 `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
(1, 1, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- 表的结构 `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路由名称',
  `icon_id` int(11) DEFAULT NULL COMMENT '图标ID',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `display_name`, `route`, `icon_id`, `parent_id`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'system.manage', 'web', '系统管理', '', 100, 0, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(2, 'system.user', 'web', '用户管理', 'admin.user', 123, 1, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(3, 'system.user.create', 'web', '添加用户', 'admin.user.create', 1, 2, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(4, 'system.user.edit', 'web', '编辑用户', 'admin.user.edit', 1, 2, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(5, 'system.user.destroy', 'web', '删除用户', 'admin.user.destroy', 1, 2, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(6, 'system.user.role', 'web', '分配角色', 'admin.user.role', 1, 2, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(7, 'system.user.permission', 'web', '分配权限', 'admin.user.permission', 1, 2, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(8, 'system.role', 'web', '角色管理', 'admin.role', 121, 1, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(9, 'system.role.create', 'web', '添加角色', 'admin.role.create', 1, 8, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(10, 'system.role.edit', 'web', '编辑角色', 'admin.role.edit', 1, 8, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(11, 'system.role.destroy', 'web', '删除角色', 'admin.role.destroy', 1, 8, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(12, 'system.role.permission', 'web', '分配权限', 'admin.role.permission', 1, 8, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(13, 'system.permission', 'web', '权限管理', 'admin.permission', 12, 1, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(14, 'system.permission.create', 'web', '添加权限', 'admin.permission.create', 1, 13, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(15, 'system.permission.edit', 'web', '编辑权限', 'admin.permission.edit', 1, 13, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(16, 'system.permission.destroy', 'web', '删除权限', 'admin.permission.destroy', 1, 13, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(17, 'zixun.manage', 'web', '资讯管理', '', 100, 0, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(18, 'zixun.category', 'web', '分类管理', 'admin.category', 29, 17, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(19, 'zixun.category.create', 'web', '添加分类', 'admin.category.create', 1, 18, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(20, 'zixun.category.edit', 'web', '编辑分类', 'admin.category.edit', 1, 18, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(21, 'zixun.category.destroy', 'web', '删除分类', 'admin.category.destroy', 1, 18, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(22, 'zixun.tag', 'web', '标签管理', 'admin.tag', 15, 17, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(23, 'zixun.tag.create', 'web', '添加标签', 'admin.tag.create', 1, 22, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(24, 'zixun.tag.edit', 'web', '编辑标签', 'admin.tag.edit', 1, 22, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(25, 'zixun.tag.destroy', 'web', '删除标签', 'admin.tag.destroy', 1, 22, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(26, 'zixun.article', 'web', '文章管理', 'admin.article', 89, 17, 0, '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(27, 'zixun.article.create', 'web', '添加文章', 'admin.article.create', 1, 26, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(28, 'zixun.article.edit', 'web', '编辑文章', 'admin.article.edit', 1, 26, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(29, 'zixun.article.destroy', 'web', '删除文章', 'admin.article.destroy', 1, 26, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(30, 'config.manage', 'web', '配置管理', '', 28, 0, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(31, 'config.site', 'web', '站点配置', 'admin.site', 25, 30, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(32, 'config.site.update', 'web', '更新配置', 'admin.site.update', 1, 31, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(33, 'config.position', 'web', '广告位置', 'admin.position', 30, 30, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(34, 'config.position.create', 'web', '添加广告位', 'admin.position.create', 1, 33, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(35, 'config.position.edit', 'web', '编辑广告位', 'admin.position.edit', 1, 33, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(36, 'config.position.destroy', 'web', '删除广告位', 'admin.position.destroy', 1, 33, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(37, 'config.advert', 'web', '广告信息', 'admin.advert', 107, 30, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(38, 'config.advert.create', 'web', '添加信息', 'admin.advert.create', 1, 37, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(39, 'config.advert.edit', 'web', '编辑信息', 'admin.advert.edit', 1, 37, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(40, 'config.advert.destroy', 'web', '删除信息', 'admin.advert.destroy', 1, 37, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(41, 'member.manage', 'web', '会员管理', '', 59, 0, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(42, 'member.member', 'web', '账号管理', 'admin.member', 10, 41, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(43, 'member.member.create', 'web', '添加账号', 'admin.member.create', 1, 42, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(44, 'member.member.edit', 'web', '编辑账号', 'admin.member.edit', 1, 42, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(45, 'member.member.destroy', 'web', '删除账号', 'admin.member.destroy', 1, 42, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(46, 'message.manage', 'web', '消息管理', '', 24, 0, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(47, 'message.message.mine', 'web', '我的消息', 'admin.message.mine', 124, 46, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(48, 'message.message', 'web', '消息管理', 'admin.message', 24, 46, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(49, 'message.message.create', 'web', '推送消息', 'admin.message.create', 1, 48, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(50, 'message.message.destroy', 'web', '删除消息', 'admin.message.destroy', 1, 48, 0, '2021-01-30 12:02:15', '2021-01-30 12:02:15');

-- --------------------------------------------------------

--
-- 表的结构 `positions`
--

CREATE TABLE `positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置名称',
  `sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'root', 'web', '超级管理员', '2021-01-30 12:02:14', '2021-01-30 12:02:14'),
(2, 'business', 'web', '商务', '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(3, 'assessor', 'web', '审核员', '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(4, 'channel', 'web', '渠道专员', '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(5, 'editor', 'web', '编辑人员', '2021-01-30 12:02:15', '2021-01-30 12:02:15'),
(6, 'admin', 'web', '管理员', '2021-01-30 12:02:15', '2021-01-30 12:02:15');

-- --------------------------------------------------------

--
-- 表的结构 `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sites`
--

CREATE TABLE `sites` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `phone`, `name`, `email`, `password`, `remember_token`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 'root', '18908221080', '超级管理员', 'root@dgg.net', '$2y$10$gJePFGEEx98S3IsJ4qkLPeigri0Rljm/1KA9XV7yZ2JCiDHDHmOx2', NULL, 'd62229e3-3f0f-3acb-bbb5-43d1f297f865', '2021-01-30 12:02:14', '2021-01-30 12:02:14');

--
-- 转储表的索引
--

--
-- 表的索引 `adverts`
--
ALTER TABLE `adverts`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- 表的索引 `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- 表的索引 `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- 表的索引 `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `adverts`
--
ALTER TABLE `adverts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- 使用表AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- 使用表AUTO_INCREMENT `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
