/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : onlineshop_db

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2020-04-20 13:42:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`tel`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`addr`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`delstatus`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`memberid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=7

;

-- ----------------------------
-- Records of address
-- ----------------------------
BEGIN;
INSERT INTO `address` VALUES ('2', '11', '13897091122', '11', '1', '8'), ('3', '丁国华', '13809741223', '金地中心城112号', '0', '8'), ('4', '张三', '13809561122', '洪山区解放大道112号', '0', '8'), ('6', '陈晨', '13098711223', '金地中心城88号', '0', '9'), ('7', '项国华', '13908761122', '金地中心城112号', '0', '10');
COMMIT;

-- ----------------------------
-- Table structure for `backproduct`
-- ----------------------------
DROP TABLE IF EXISTS `backproduct`;
CREATE TABLE `backproduct` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`memberid`  int(11) NULL DEFAULT NULL ,
`productid`  int(11) NULL DEFAULT NULL ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`shstatus`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`savetime`  datetime NULL DEFAULT NULL ,
`orderid`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of backproduct
-- ----------------------------
BEGIN;
INSERT INTO `backproduct` VALUES ('8', '10', '25', '22222', '已退货', '2020-03-27 11:59:20', '18'), ('9', '8', '46', '不喜欢', '已退货', '2020-04-05 12:25:43', '30'), ('10', '8', '46', '不好用', '已退货', '2020-04-06 14:52:15', '32');
COMMIT;

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`memberid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`productid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`num`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=14

;

-- ----------------------------
-- Records of cart
-- ----------------------------
BEGIN;
INSERT INTO `cart` VALUES ('9', '8', '40', '1'), ('10', '8', '39', '1'), ('11', '8', '45', '1'), ('12', '8', '42', '1'), ('13', '8', '37', '1');
COMMIT;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`fatherid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`delstatus`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=54

;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES ('35', '电子产品', '0', '0'), ('36', '服装', '0', '0'), ('37', '男装', '36', '0'), ('39', '手机', '35', '0'), ('40', '电脑', '35', '0'), ('44', '女装', '36', '0'), ('45', '童装', '36', '0'), ('46', '耳机', '35', '0'), ('47', '个人护理', '0', '0'), ('48', '面部护理', '47', '0'), ('49', '洗发护发', '47', '0'), ('50', '口腔护理', '47', '0'), ('51', '家居用品', '0', '0'), ('52', '家具', '51', '0'), ('53', '家装', '51', '0'), ('54', '厨具', '51', '0');
COMMIT;

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`memberid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`productid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`pf`  int(255) NULL DEFAULT NULL ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES ('2', '10', '25', '5', '不错，很好用');
COMMIT;

-- ----------------------------
-- Table structure for `dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`ddno`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`memberid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`total`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`savetime`  datetime NULL DEFAULT NULL ,
`fkfs`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shrname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`zffs`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`shraddr`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`fkstatus`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`fhstatus`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=29

;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
BEGIN;
INSERT INTO `dingdan` VALUES ('23', '576342', '8', '79.2', '2020-04-03 11:53:48', '货到支付', null, '银行卡', '金地中心城112号  丁国华  13809741223', '已付款', '交易完成'), ('24', '858489', '8', '2920.0', '2020-04-03 11:54:37', '货到支付', null, '微信', '洪山区解放大道112号  张三  13809561122', '已付款', '交易完成'), ('26', '955419', '8', '5438.4', '2020-04-05 12:21:47', '当前支付', null, '微信', '洪山区解放大道112号  张三  13809561122', '已付款', '交易完成'), ('27', '696245', '8', '703.2', '2020-04-06 14:47:49', '当前支付', null, '微信', '洪山区解放大道112号  张三  13809561122', '已付款', '交易完成'), ('28', '186477', '8', '1271.2', '2020-04-14 11:50:05', '当前支付', null, '银行卡', '金地中心城112号  丁国华  13809741223', '已付款', '交易完成'), ('29', '731623', '9', '799.0', '2020-04-14 12:05:13', '当前支付', null, '支付宝', '金地中心城88号  陈晨  13098711223', '已付款', '未发货');
COMMIT;

-- ----------------------------
-- Table structure for `dingdanmsg`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanmsg`;
CREATE TABLE `dingdanmsg` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`ddno`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`memberid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`productid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`num`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`xjtotal`  double(255,2) NULL DEFAULT NULL ,
`status`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`savetime`  datetime NULL DEFAULT NULL ,
`thstatus`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=36

;

-- ----------------------------
-- Records of dingdanmsg
-- ----------------------------
BEGIN;
INSERT INTO `dingdanmsg` VALUES ('25', '576342', '8', '29', '1', '79.20', '已发货', '2020-04-03 00:00:00', '可退货'), ('26', '858489', '8', '22', '1', '1240.00', '已发货', '2020-04-03 00:00:00', '可退货'), ('27', '858489', '8', '25', '1', '1680.00', '已发货', '2020-04-03 00:00:00', '可退货'), ('28', '457905', '8', '25', '1', '1680.00', '已发货', '2020-04-03 00:00:00', '可退货'), ('29', '457905', '8', '22', '1', '1240.00', '已发货', '2020-04-03 00:00:00', '可退货'), ('30', '955419', '8', '46', '1', '639.20', '已发货', '2020-04-05 00:00:00', '已退货'), ('31', '955419', '8', '43', '1', '4799.20', '已发货', '2020-04-05 00:00:00', '可退货'), ('32', '696245', '8', '46', '1', '639.20', '已发货', '2020-04-06 00:00:00', '已退货'), ('33', '696245', '8', '40', '1', '64.00', '已发货', '2020-04-06 00:00:00', '可退货'), ('34', '186477', '8', '22', '1', '1240.00', '已发货', '2020-04-14 00:00:00', '可退货'), ('35', '186477', '8', '38', '1', '31.20', '已发货', '2020-04-14 00:00:00', '可退货'), ('36', '731623', '9', '47', '1', '799.00', '未发货', '2020-04-14 00:00:00', null);
COMMIT;

-- ----------------------------
-- Table structure for `fav`
-- ----------------------------
DROP TABLE IF EXISTS `fav`;
CREATE TABLE `fav` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`memberid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`productid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of fav
-- ----------------------------
BEGIN;
INSERT INTO `fav` VALUES ('1', '8', '38');
COMMIT;

-- ----------------------------
-- Table structure for `imgadv`
-- ----------------------------
DROP TABLE IF EXISTS `imgadv`;
CREATE TABLE `imgadv` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`filename`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of imgadv
-- ----------------------------
BEGIN;
INSERT INTO `imgadv` VALUES ('2', '1584166515487.jpg'), ('3', '1585883241977.jpg');
COMMIT;

-- ----------------------------
-- Table structure for `inventory`
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`productid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`num`  int(11) NULL DEFAULT NULL ,
`flag`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=60

;

-- ----------------------------
-- Records of inventory
-- ----------------------------
BEGIN;
INSERT INTO `inventory` VALUES ('1', '25', '10', 'in'), ('2', '24', '10', 'in'), ('3', '23', '10', 'in'), ('4', '22', '10', 'in'), ('5', '21', '10', 'in'), ('6', '23', '1', 'out'), ('7', '24', '1', 'out'), ('8', '22', '2', 'out'), ('9', '22', '1', 'out'), ('10', '22', '1', 'out'), ('11', '22', '1', 'out'), ('12', '22', '1', 'out'), ('13', '22', '1', 'in'), ('14', '22', '1', 'in'), ('15', '22', '2', 'out'), ('16', '22', '2', 'in'), ('17', '25', '1', 'out'), ('18', '25', '1', 'out'), ('19', '28', '10', 'in'), ('20', '27', '10', 'in'), ('21', '27', '1', 'out'), ('22', '28', '2', 'out'), ('23', '25', '1', 'in'), ('24', '22', '1', 'out'), ('25', '22', '1', 'out'), ('26', '22', '1', 'out'), ('27', '22', '1', 'out'), ('28', '22', '1', 'out'), ('29', '25', '1', 'out'), ('30', '25', '1', 'out'), ('31', '22', '1', 'out'), ('32', '46', '10', 'in'), ('33', '45', '10', 'in'), ('34', '44', '22', 'in'), ('35', '43', '22', 'in'), ('36', '42', '45', 'in'), ('37', '41', '53', 'in'), ('38', '40', '43', 'in'), ('39', '39', '34', 'in'), ('40', '38', '42', 'in'), ('41', '37', '12', 'in'), ('42', '36', '234', 'in'), ('43', '35', '34', 'in'), ('44', '34', '56', 'in'), ('45', '33', '546', 'in'), ('46', '32', '45', 'in'), ('47', '31', '45', 'in'), ('48', '30', '56', 'in'), ('49', '29', '7', 'in'), ('50', '22', '234', 'in'), ('51', '43', '1', 'out'), ('52', '46', '1', 'out'), ('53', '29', '1', 'out'), ('54', '46', '1', 'in'), ('55', '40', '1', 'out'), ('56', '46', '1', 'out'), ('57', '46', '1', 'in'), ('58', '38', '1', 'out'), ('59', '22', '1', 'out'), ('60', '47', '10', 'in');
COMMIT;

-- ----------------------------
-- Table structure for `loginip`
-- ----------------------------
DROP TABLE IF EXISTS `loginip`;
CREATE TABLE `loginip` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`ipaddr`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`savetime`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=4

;

-- ----------------------------
-- Records of loginip
-- ----------------------------
BEGIN;
INSERT INTO `loginip` VALUES ('1', 'ding', '127.0.0.1', '2020-04-14 11:46:35'), ('2', 'ding', '127.0.0.1', '2020-04-14 11:47:15'), ('3', 'cheng', '127.0.0.1', '2020-04-14 12:04:50'), ('4', 'cheng', '127.0.0.1', '2020-04-19 14:37:07');
COMMIT;

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`upass`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`nickname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`tel`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`yue`  double(255,2) NULL DEFAULT NULL ,
`delstatus`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`filename`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`lev`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=12

;

-- ----------------------------
-- Records of member
-- ----------------------------
BEGIN;
INSERT INTO `member` VALUES ('8', 'ding', '123', '一个普通人', '13877665521', 'ding@126.com', '0.00', '0', '1584089830255.png', '高级会员'), ('9', 'cheng', '123', '陈晨', '13809763312', 'cheng@126.com', '0.00', '0', '1584197670386.png', '普通用户'), ('10', 'xiang', 'xiang123', '项国华', '13908761123', 'xiang@126.com', '0.00', '0', '1585281272494.png', '会员'), ('11', 'wang', '2628qa', 'nike', '15161460223', '2dd@126.com', '0.00', '0', '1586757877005.jpg', '普通用户'), ('12', 'lei', 'lei123', 'word', '13562377892', '3366@123.com', '0.00', '0', '1586772034265.jpg', '普通用户');
COMMIT;

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`productname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`filename`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`fid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`sid`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`price`  double(255,2) NULL DEFAULT NULL ,
`tjprice`  double(255,2) NULL DEFAULT NULL ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`savetime`  datetime NULL DEFAULT NULL ,
`delstatus`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`istj`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=47

;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` VALUES ('21', '联想S550', '1584193037490.jpg', '35', '40', '3499.00', null, '<span style=\"color:#666666;font-family:Arial, \" font-size:16px;font-weight:700;background-color:#ffffff;\"=\"\"><span style=\"color:#666666;font-family:Arial, \" font-size:16px;font-weight:700;background-color:#ffffff;\"=\"\">联想(Lenovo) S550 14英寸 AMD锐龙版(全新12nm)轻薄笔记本电脑(R5-3500U 8G 512G PCIE IPS)太空灰</span></span>', '2020-03-26 11:14:02', '0', 'no'), ('22', '新锐A20-3140S2N', '1584192867723.jpg', '35', '40', '1550.00', null, '<span style=\"color:#666666;font-family:Arial, \" font-size:16px;font-weight:700;background-color:#ffffff;\"=\"\"><span style=\"color:#666666;font-family:Arial, \" font-size:16px;font-weight:700;background-color:#ffffff;\"=\"\">&nbsp;新锐A20-3140S2N 一体机台式电脑21.5英寸 Intel 四核</span></span>', '2020-03-26 11:24:04', '0', 'yes'), ('25', '联想ThinkPad E480', '1584166770020.jpg', '35', '40', '2799.00', '2100.00', '<span style=\"color:#E4393C;font-family:\" font-size:22px;background-color:#f3f3f3;\"=\"\"><span style=\"color:#666666;font-family:Arial, \" font-size:16px;font-weight:700;background-color:#ffffff;\"=\"\">联想ThinkPad E480（2XCD）英特尔酷睿i3 14英寸轻薄窄边框笔记本电脑（i3-7020U 4G 500G FHD Win10）银</span></span>', '2020-03-26 14:37:22', '0', 'yes'), ('27', '卫衣男连帽稻草人', '1585280397465.jpg', '36', '37', '119.00', null, '<span style=\"color:#666666;font-family:Arial, &quot;font-size:16px;font-weight:700;background-color:#FFFFFF;\">卫衣男连帽稻草人2020新品春季加绒男士纯棉纯色宽松情侣运动卫衣上衣外套男 黑色 2XL</span>', '2020-03-27 11:40:10', '0', 'no'), ('28', '睡衣女春秋冬', '1585280911290.jpg', '36', '44', '89.00', null, '<span style=\"color:#666666;font-family:Arial, &quot;font-size:16px;font-weight:700;background-color:#FFFFFF;\">茵淇娜 睡衣女春秋冬季长袖冬天可外穿翻领纯色开衫棉质居家女士套装家居服 T6297 L【建议100-120斤】</span>', '2020-03-27 11:48:45', '0', 'no'), ('29', '百搭宽松短袖T恤', '1585281760510.jpg', '36', '44', '99.00', '0.00', '<span style=\"color:#666666;font-family:Arial, &quot;font-size:16px;font-weight:700;background-color:#FFFFFF;\">红粉宣言2020夏季新款百搭宽松短袖T恤女舒适大码女装 砖红色 XXL</span>', '2020-03-27 12:02:53', '0', 'no'), ('30', '花印水漾洁净洗面乳', '1586059029147.jpg', '47', '48', '39.00', '22.00', '<span style=\"color:#999999;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;background-color:#FFFFFF;\">花印水漾洁净洗面乳150g（又名花印水漾洁净洗面奶）</span>', '2020-04-05 11:58:22', '0', 'yes'), ('31', '花印水漾洁净洗面乳150g（又名花印水漾洁净洗面奶）', '1586059177804.jpg', '47', '48', '199.00', '180.00', '<span style=\"color:#999999;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;background-color:#FFFFFF;\">水嫩精纯平衡保湿喷雾70ml*1（百雀羚、三生花喷雾随机发）</span>', '2020-04-05 12:00:06', '0', 'no'), ('32', '阿芙AFU祛闭口粉刺马鞭草酮迷迭香纯露', '1586059236220.jpg', '47', '48', '99.00', null, '<span style=\"color:#999999;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;background-color:#FFFFFF;\">马鞭草酮迷迭香纯露125ml × 1</span>', '2020-04-05 12:00:52', '0', 'no'), ('33', '亚缇克兰(URTEKRAM)冷泉补水舒活喷雾150ml三瓶装', '1586059286961.jpg', '47', '48', '159.00', null, '<span style=\"color:#999999;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;background-color:#FFFFFF;\">冷泉补水舒活喷雾150ml三瓶</span>', '2020-04-05 12:02:01', '0', 'no'), ('34', '卡诗（KERASTASE）菁纯亮泽经典香氛护发油', '1586059384682.jpg', '47', '49', '326.00', null, '<span style=\"color:#999999;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;background-color:#FFFFFF;\">菁纯亮泽经典香氛护发油 100ml × 1</span>', '2020-04-05 12:03:25', '0', 'no'), ('35', '法国馥绿德雅(Rene Furterer)复合精油强健洗发露', '1586059427299.jpg', '47', '49', '328.00', null, '<span style=\"color:#999999;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;background-color:#FFFFFF;\">复合精油强健洗发露 600 ml*1</span>', '2020-04-05 12:04:09', '0', 'no'), ('36', '欧莱雅（LOREAL）沙龙专属 净油平衡洗发水', '1586059470789.jpg', '47', '49', '139.00', null, '<span style=\"color:#999999;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;background-color:#FFFFFF;\">洗发水500mlx1</span><br />\r\n<span style=\"color:#999999;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;background-color:#FFFFFF;\">205x70x70mm</span>', '2020-04-05 12:04:55', '0', 'no'), ('37', '李施德林（Listerine）漱口水 天然橙味', '1586059566008.jpg', '47', '50', '88.90', null, '<span style=\"color:#999999;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;background-color:#FFFFFF;\">漱口水x3<span>&nbsp;</span></span><br />\r\n<span style=\"color:#999999;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;background-color:#FFFFFF;\">100*150*30mm</span>', '2020-04-05 12:06:33', '0', 'no'), ('38', '佳洁士（Crest）3D钻亮炫白牙膏小肉桂愈感美白双支装', '1586059620852.jpg', '47', '50', '39.00', null, '<span style=\"color:#999999;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;background-color:#FFFFFF;\">佳洁士3D钻亮炫白牙膏愈感美白双支装116g*2</span>', '2020-04-05 12:07:25', '0', 'no'), ('39', '北极绒女童打底裤春秋季连裤袜冬季加绒加厚保暖跳舞打底裤', '1586059712992.jpg', '36', '45', '33.00', null, '<ul class=\"parameter2 p-parameter-list\" style=\"color:#666666;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;text-align:start;text-indent:0px;background-color:#FFFFFF;\">\r\n	<li>\r\n		商品名称：北极绒女童打底裤春秋季连裤袜冬季加绒加厚保暖跳舞打底裤子外穿儿童袜子白色舞蹈袜 白色薄绒连脚680D XL码 建议身高 130-150cm\r\n	</li>\r\n	<li>\r\n		商品编号：35763284589\r\n	</li>\r\n	<li>\r\n		店铺：<span>&nbsp;</span><a href=\"https://mall.jd.com/index-627523.html\" target=\"_blank\">北极绒祥内专卖店</a>\r\n	</li>\r\n	<li>\r\n		商品毛重：1.0kg\r\n	</li>\r\n	<li>\r\n		货号：儿童加厚\r\n	</li>\r\n	<li>\r\n		厚度：加绒\r\n	</li>\r\n	<li>\r\n		裤门襟：其它\r\n	</li>\r\n	<li>\r\n		安全等级：B类\r\n	</li>\r\n	<li>\r\n		适用性别：女\r\n	</li>\r\n	<li>\r\n		适用年龄：1-3岁，3-6岁，9-12岁，12岁以上\r\n	</li>\r\n	<li>\r\n		裤长：长裤\r\n	</li>\r\n	<li>\r\n		适用季节：冬季\r\n	</li>\r\n	<li>\r\n		分类：打底裤\r\n	</li>\r\n	<li>\r\n		裤腰：双裤腰\r\n	</li>\r\n	<li>\r\n		上市时间：2018冬季\r\n	</li>\r\n</ul>', '2020-04-05 12:08:53', '0', 'no'), ('40', '童装女童裤子加绒冬装百搭弹力儿童牛仔裤', '1586059754838.jpg', '36', '45', '88.00', '80.00', '<ul class=\"parameter2 p-parameter-list\" style=\"color:#666666;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;text-align:start;text-indent:0px;background-color:#FFFFFF;\">\r\n	<li>\r\n		商品名称：童装女童裤子加绒冬装百搭弹力儿童牛仔裤 加厚休闲铅笔裤保暖小脚裤秋冬季中大童棉裤小女孩学生裤子 蓝色 150码 建议身高140-150cm\r\n	</li>\r\n	<li>\r\n		商品编号：36865110163\r\n	</li>\r\n	<li>\r\n		店铺：<span>&nbsp;</span><a href=\"https://mall.jd.com/index-712070.html\" target=\"_blank\">童偎旗舰店</a>\r\n	</li>\r\n	<li>\r\n		商品毛重：1.0kg\r\n	</li>\r\n	<li>\r\n		货号：GLX螺纹牛仔裤\r\n	</li>\r\n	<li>\r\n		厚度：加绒\r\n	</li>\r\n	<li>\r\n		分类：牛仔裤\r\n	</li>\r\n	<li>\r\n		适用年龄：3-6岁，6-9岁，9-12岁\r\n	</li>\r\n	<li>\r\n		裤门襟：皮筋\r\n	</li>\r\n	<li>\r\n		安全等级：B类\r\n	</li>\r\n	<li>\r\n		是否有腰带：无腰带\r\n	</li>\r\n	<li>\r\n		适用性别：女\r\n	</li>\r\n	<li>\r\n		裤腰：中腰\r\n	</li>\r\n	<li>\r\n		裤长：长裤\r\n	</li>\r\n	<li>\r\n		适用季节：冬季\r\n	</li>\r\n	<li>\r\n		填充物：聚酯纤维\r\n	</li>\r\n	<li>\r\n		是否可开档：闭档\r\n	</li>\r\n	<li>\r\n		上市时间：2018冬季\r\n	</li>\r\n</ul>', '2020-04-05 12:09:40', '0', 'yes'), ('41', '华为 HUAWEI Mate 30 5G ', '1586060309978.jpg', '35', '39', '4498.00', null, '<ul class=\"parameter2 p-parameter-list\" style=\"color:#666666;font-family:tahoma, arial, \" sans-serif;font-size:12px;font-style:normal;font-weight:400;text-align:start;text-indent:0px;background-color:#ffffff;\"=\"\" u5b8bu4f53,=\"\" gb\",=\"\" sans=\"\" \"hiragino=\"\" yahei\",=\"\" microsoft=\"\">\r\n<li>\r\n	商品名称：华为Mate 30 5G\r\n</li>\r\n<li>\r\n	商品编号：100009177422\r\n</li>\r\n<li>\r\n	商品毛重：0.6kg\r\n</li>\r\n<li>\r\n	商品产地：中国大陆\r\n</li>\r\n<li>\r\n	CPU型号：其他\r\n</li>\r\n<li>\r\n	运行内存：8GB\r\n</li>\r\n<li>\r\n	机身存储：128GB\r\n</li>\r\n<li>\r\n	存储卡：NM存储卡\r\n</li>\r\n<li>\r\n	摄像头数量：后置三摄\r\n</li>\r\n<li>\r\n	后摄主摄像素：4000万像素\r\n</li>\r\n<li>\r\n	前摄主摄像素：2400万像素\r\n</li>\r\n<li>\r\n	主屏幕尺寸（英寸）：6.62英寸 备注：显示屏采用圆角设计，按照标准矩形测量时，屏幕的对角线长度是6.62英寸（实际可视区域略小）\r\n</li>\r\n<li>\r\n	分辨率：全高清FHD+\r\n</li>\r\n<li>\r\n	屏幕比例：其它屏幕比例\r\n</li>\r\n<li>\r\n	屏幕前摄组合：刘海屏\r\n</li>\r\n<li>\r\n	充电器：10V/4A；5V/2A；9V/2A\r\n</li>\r\n<li>\r\n	热点：5G\r\n</li>\r\n<li>\r\n	游戏性能：发烧级\r\n</li>\r\n<li>\r\n	操作系统：Android(安卓)\r\n</li>\r\n	</ul>\r\n<br class=\"Apple-interchange-newline\" />', '2020-04-05 12:11:33', '0', 'no'), ('42', '荣耀9X ', '1586059950134.jpg', '35', '39', '1298.00', null, '<ul class=\"parameter2 p-parameter-list\" style=\"color:#666666;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;text-align:start;text-indent:0px;background-color:#FFFFFF;\">\r\n	<li>\r\n		商品名称：华为荣耀9X\r\n	</li>\r\n	<li>\r\n		商品编号：100006947212\r\n	</li>\r\n	<li>\r\n		商品毛重：420.00g\r\n	</li>\r\n	<li>\r\n		商品产地：中国大陆\r\n	</li>\r\n	<li>\r\n		CPU型号：麒麟810\r\n	</li>\r\n	<li>\r\n		运行内存：6GB\r\n	</li>\r\n	<li>\r\n		机身存储：64GB\r\n	</li>\r\n	<li>\r\n		存储卡：支持MicroSD(TF)\r\n	</li>\r\n	<li>\r\n		摄像头数量：后置双摄\r\n	</li>\r\n	<li>\r\n		后摄主摄像素：4800万像素\r\n	</li>\r\n	<li>\r\n		前摄主摄像素：1600万像素\r\n	</li>\r\n	<li>\r\n		主屏幕尺寸（英寸）：6.59英寸\r\n	</li>\r\n	<li>\r\n		分辨率：全高清FHD+\r\n	</li>\r\n	<li>\r\n		屏幕比例：其它屏幕比例\r\n	</li>\r\n	<li>\r\n		屏幕前摄组合：弹出式摄像头，极点屏\r\n	</li>\r\n	<li>\r\n		充电器：5V/2A\r\n	</li>\r\n	<li>\r\n		热点：超高屏占比，弹出式摄像头\r\n	</li>\r\n	<li>\r\n		特殊功能：语音识别(文字语音互转)\r\n	</li>\r\n	<li>\r\n		操作系统：Android(安卓)\r\n	</li>\r\n</ul>', '2020-04-05 12:12:56', '0', 'no'), ('43', 'Apple iPhone 11 (A2223) ', '1586059998325.jpg', '35', '39', '5999.00', null, '<ul class=\"parameter2 p-parameter-list\" style=\"color:#666666;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;text-align:start;text-indent:0px;background-color:#FFFFFF;\">\r\n	<li>\r\n		商品名称：AppleiPhone 11\r\n	</li>\r\n	<li>\r\n		商品编号：100008348542\r\n	</li>\r\n	<li>\r\n		商品毛重：470.00g\r\n	</li>\r\n	<li>\r\n		商品产地：中国大陆\r\n	</li>\r\n	<li>\r\n		CPU型号：其他\r\n	</li>\r\n	<li>\r\n		运行内存：其它内存\r\n	</li>\r\n	<li>\r\n		机身存储：128GB\r\n	</li>\r\n	<li>\r\n		存储卡：不支持存储卡\r\n	</li>\r\n	<li>\r\n		摄像头数量：后置双摄\r\n	</li>\r\n	<li>\r\n		后摄主摄像素：1200万像素\r\n	</li>\r\n	<li>\r\n		前摄主摄像素：1200万像素\r\n	</li>\r\n	<li>\r\n		主屏幕尺寸（英寸）：6.1英寸\r\n	</li>\r\n	<li>\r\n		分辨率：其它分辨率\r\n	</li>\r\n	<li>\r\n		屏幕比例：其它屏幕比例\r\n	</li>\r\n	<li>\r\n		屏幕前摄组合：刘海屏\r\n	</li>\r\n	<li>\r\n		充电器：其他\r\n	</li>\r\n	<li>\r\n		热点：人脸识别\r\n	</li>\r\n	<li>\r\n		操作系统：iOS(Apple)\r\n	</li>\r\n	<li>\r\n		特殊功能：语音命令\r\n	</li>\r\n</ul>', '2020-04-05 12:13:39', '0', 'yes'), ('44', '维肯 耳机入耳式有线线控耳麦', '1586060117753.jpg', '35', '46', '39.00', null, '<ul class=\"parameter2 p-parameter-list\" style=\"color:#666666;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;text-align:start;text-indent:0px;background-color:#FFFFFF;\">\r\n	<li>\r\n		商品名称：维肯（Viken）维肯原装耳机通用荣耀9i8x vivoz1/z3/x23 红米note7\r\n	</li>\r\n	<li>\r\n		商品编号：21861303049\r\n	</li>\r\n	<li>\r\n		店铺：<span>&nbsp;</span><a href=\"https://mall.jd.com/index-663635.html\" target=\"_blank\">维肯旗舰店</a>\r\n	</li>\r\n	<li>\r\n		商品毛重：100.00g\r\n	</li>\r\n	<li>\r\n		连接类型：有线\r\n	</li>\r\n	<li>\r\n		用途：手机耳机\r\n	</li>\r\n</ul>', '2020-04-05 12:15:36', '0', 'no'), ('45', '语安（YUAN） 真无线蓝牙耳机', '1586060164649.jpg', '35', '46', '76.00', null, '<ul class=\"parameter2 p-parameter-list\" style=\"color:#666666;font-family:tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;font-size:12px;font-style:normal;font-weight:400;text-align:start;text-indent:0px;background-color:#FFFFFF;\">\r\n	<li>\r\n		商品名称：语安（YUAN）i9s-tws\r\n	</li>\r\n	<li>\r\n		商品编号：31358031642\r\n	</li>\r\n	<li>\r\n		店铺：<span>&nbsp;</span><a href=\"https://yuan520.jd.com/\" target=\"_blank\">语安旗舰店</a>\r\n	</li>\r\n	<li>\r\n		商品毛重：50.00g\r\n	</li>\r\n	<li>\r\n		商品产地：中国大陆\r\n	</li>\r\n	<li>\r\n		连接类型：无线（蓝牙）\r\n	</li>\r\n	<li>\r\n		用途：手机耳机\r\n	</li>\r\n</ul>', '2020-04-05 12:16:25', '0', 'no'), ('46', '荣耀（HONOR）FlyPods 3 无线耳机 ', '1586060209133.png', '35', '46', '799.00', null, '<ul class=\"parameter2 p-parameter-list\" style=\"color:#666666;font-family:tahoma, arial, \" sans-serif;font-size:12px;font-style:normal;font-weight:400;text-align:start;text-indent:0px;background-color:#ffffff;\"=\"\" u5b8bu4f53,=\"\" gb\",=\"\" sans=\"\" \"hiragino=\"\" yahei\",=\"\" microsoft=\"\">\r\n<li>\r\n	商品名称：华为荣耀FlyPods 3\r\n</li>\r\n<li>\r\n	商品编号：100011463186\r\n</li>\r\n<li>\r\n	商品毛重：250.00g\r\n</li>\r\n<li>\r\n	商品产地：中国大陆\r\n</li>\r\n<li>\r\n	连接类型：无线（蓝牙）\r\n</li>\r\n<li>\r\n	用途：音乐耳机\r\n</li>\r\n<li>\r\n	佩戴方式：真无线\r\n</li>\r\n	</ul>', '2020-04-05 12:17:09', '1', 'yes'), ('47', '荣耀（HONOR）FlyPods 3 无线耳机', '1586837027513.png', '35', '46', '799.00', null, '<ul class=\"parameter2 p-parameter-list\" style=\"color: rgb(102, 102, 102); font-family: &amp;quot;sans serif&amp;quot;,tahoma,verdana,helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\" microsoft=\"\" yahei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" u5b8bu4f53,=\"\" sans-serif;font-size:12px;font-style:normal;font-weight:400;text-align:start;text-indent:0px;background-color:#ffffff;\"=\"\">\r\n<li>\r\n	商品名称：华为荣耀FlyPods 3\r\n</li>\r\n<li>\r\n	商品编号：100011463186\r\n</li>\r\n<li>\r\n	商品毛重：250.00g\r\n</li>\r\n<li>\r\n	商品产地：中国大陆\r\n</li>\r\n<li>\r\n	连接类型：无线（蓝牙）\r\n</li>\r\n<li>\r\n	用途：音乐耳机\r\n</li>\r\n<li>\r\n	佩戴方式：真无线\r\n</li>\r\n	</ul>', '2020-04-14 12:03:56', '0', 'no');
COMMIT;

-- ----------------------------
-- Table structure for `sysuser`
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`upass`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`utype`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`delstatus`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`tname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`tel`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=4

;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
BEGIN;
INSERT INTO `sysuser` VALUES ('1', 'admin', '123', '管理员', '0', 'admin', '13888888888', 'admin@126.com'), ('2', 'sp', '123', '商品管理员', '0', '丁国华', '13809763322', 'ding@126.com'), ('3', 'ck', '123', '仓库管理员', '0', '项国华', '13908761122', 'xiang@126.com'), ('4', 'dd', '123', '订单管理员', '0', '订单管理员1', '13809761122', 'dd@126.com');
COMMIT;

-- ----------------------------
-- Auto increment value for `address`
-- ----------------------------
ALTER TABLE `address` AUTO_INCREMENT=7;

-- ----------------------------
-- Auto increment value for `cart`
-- ----------------------------
ALTER TABLE `cart` AUTO_INCREMENT=14;

-- ----------------------------
-- Auto increment value for `category`
-- ----------------------------
ALTER TABLE `category` AUTO_INCREMENT=54;

-- ----------------------------
-- Auto increment value for `comment`
-- ----------------------------
ALTER TABLE `comment` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for `dingdan`
-- ----------------------------
ALTER TABLE `dingdan` AUTO_INCREMENT=29;

-- ----------------------------
-- Auto increment value for `dingdanmsg`
-- ----------------------------
ALTER TABLE `dingdanmsg` AUTO_INCREMENT=36;

-- ----------------------------
-- Auto increment value for `fav`
-- ----------------------------
ALTER TABLE `fav` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `imgadv`
-- ----------------------------
ALTER TABLE `imgadv` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for `inventory`
-- ----------------------------
ALTER TABLE `inventory` AUTO_INCREMENT=60;

-- ----------------------------
-- Auto increment value for `loginip`
-- ----------------------------
ALTER TABLE `loginip` AUTO_INCREMENT=4;

-- ----------------------------
-- Auto increment value for `member`
-- ----------------------------
ALTER TABLE `member` AUTO_INCREMENT=12;

-- ----------------------------
-- Auto increment value for `product`
-- ----------------------------
ALTER TABLE `product` AUTO_INCREMENT=47;

-- ----------------------------
-- Auto increment value for `sysuser`
-- ----------------------------
ALTER TABLE `sysuser` AUTO_INCREMENT=4;
