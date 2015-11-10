/*
Navicat MySQL Data Transfer

Source Server         : jbl
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : wbht

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2015-08-27 09:27:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `alk`
-- ----------------------------
DROP TABLE IF EXISTS `alk`;
CREATE TABLE `alk` (
  `id` int(11) NOT NULL auto_increment,
  `casetitle` varchar(255) default NULL COMMENT '标题',
  `casecontent` text COMMENT '案例',
  `keyword` varchar(255) default NULL COMMENT '关键词',
  `taxtype` varchar(255) default NULL COMMENT '税种',
  `area` varchar(255) default NULL COMMENT '地区',
  `note` text COMMENT '备注',
  `gonghao` varchar(255) default NULL COMMENT '工号',
  `companyName` varchar(255) default NULL,
  `usertype` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alk
-- ----------------------------
INSERT INTO `alk` VALUES ('304', '土地出让金返还', '某企业通过招拍挂获得一块土地，政府同意返还一定比例的土地出让金，该企业在当地有一个关联公司，经协商政府同意以奖励投资的名义返还到该关联企业。因土地出让金交纳与返还主体不是同一公司，大大降低了将返还款直接调减土地成本的风险。', '出让金返还', '土地增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('307', '接受土地出资', '某房地产企业A在已开发项目拟连片开发一项目，但该地块为另一公司B所有，双方协商合资开发，B将土地以评估价格5000万入股A成立的项目开发公司C，取得50%股权，该土地原取得成本为2000万。C公司土地增值税前扣除成本为5000万。', '土地出资', '土地增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('308', '直接转让土地使用权怎么计算土地增值税？', 'A公司为自然人投资设立的房地产公司，注册资本1 000万元，于2008年取得了一块土地使用权，成本1 000万元，尚未进行开发。B公司有意购买该土地使用权，出价1 800万元。营业税=（1 800-1 000）×5%=40（万元）；可抵扣金额为1 040万元，适用税率40%，A公司应纳土地增值税=（1 800-­1 040）×40%-1 040×5%=252（万元）。', '直接转让土地使用权', '土地增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('309', '123', '123', '123', '企业所得税', '北京', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('310', '123', '123', '123', '企业所得税', '北京', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('311', '23', '23', '23', '营业税及其附加', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('312', '23', '23', '23', '营业税及其附加', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('313', '34', '34', '34', '营业税及其附加', '北京', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('314', '34', '34', '34', '营业税及其附加', '北京', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('315', '1', '1', '1', '营业税及其附加', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('316', '222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', '2', '3', '营业税及其附加', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('317', '33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333', '2', '3', '营业税及其附加', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('318', '1', '1', '1', '营业税及其附加', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('319', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '11', '1', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('320', '222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', '11', '1', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('321', '3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333', '11', '1', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('322', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '1', '1', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('323', '2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', '2', '2', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('324', '2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', '2', '2', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('325', '1', '1', '1', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('326', '1', '1', '1', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('327', '1', '1', '1', '企业所得税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('328', '2', '2', '2', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('329', '3', '3', '3', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('330', '4', '4', '4', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('331', '5', '5', '5', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('332', '6', '6', '6', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('333', '7', '7', '7', '增值税', '北京', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('334', '8', '8', '8', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('335', '9', '9', '9', '印花税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('336', '8', '8', '8', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('337', '9', '9', '9', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('338', 'a', 'a', 'a', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('339', 's', 's', 's', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('340', 'd', 'd', 'd', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('341', 'f', 'f', 'f', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('342', 'g', 'g', 'g', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('343', 'e', 'e', 'e', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('344', 'r', 'r', 'r', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('345', 'r', 'r', 'r', '增值税', '北京', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('346', 't', 't', 't', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('347', 'y', 'y', 'y', '增值税', '全国', '', '001', '微软', 'superadmin');
INSERT INTO `alk` VALUES ('348', '111', '111', '111', '企业所得税', '上海', '111', '001', '微软', 'superadmin');

-- ----------------------------
-- Table structure for `fgk`
-- ----------------------------
DROP TABLE IF EXISTS `fgk`;
CREATE TABLE `fgk` (
  `id` int(11) NOT NULL auto_increment,
  `fgnumber` longtext COMMENT '法规文号',
  `fgtw` longtext COMMENT '法规条文',
  `keyword` text COMMENT '关键词',
  `taxtype` varchar(255) default NULL COMMENT '税种',
  `area` varchar(255) default NULL COMMENT '适用地区',
  `content` longtext COMMENT '全文',
  `note` longtext COMMENT '备注',
  `gonghao` varchar(255) default NULL COMMENT '输入员工号',
  `companyName` varchar(255) default NULL COMMENT '输入员的公司',
  `usertype` varchar(255) default NULL COMMENT '员工的地位',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fgk
-- ----------------------------
INSERT INTO `fgk` VALUES ('134', '大地税函[2008]188号', '第一条（一）“纳税人应当凭政府或政府有关部门下发的《土地批件》、《土地出让金缴费证明》以及财政、土地管理等部门出具的土地出让金缴纳收据、土地使用权购置发票、政府或政府部门出具的相关证明等合法有效凭据，计算取得土地使用权所支付的金额。凡取得票据或者其他资料，但未实际支付土地出让金或购置土地使用权价款或支付土地出让金、购置土地使用权价款后又返还的，不允许计入扣除项目。”\n', '土地出让金返还', '土地增值税', '大连', '大地税函[2008]188号.doc|/alidata/server/tomcat-7.0.54/webapps/wbht/大地税函[2008]188号.doc', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('137', '财税[2006]21号', '第五条规定：“对于以土地（房地产）作价入股进行投资或联营的，凡所投资、联营的企业从事房地产开发的，或者房地产开发企业以其建造的商品房进行投资和联营的，均不适用财税字[1995]48号文第一条暂免征收土地增值税的规定。”', '土地投资', '土地增值税', '全国', '财税[2006]21号.doc|/alidata/server/tomcat-7.0.54/webapps/wbht/财税[2006]21号.doc', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('138', '土地增值税暂行条例', '第二条：转让国有土地使用权、地上建筑物及其附着物并取得收入的单位和个人，为土地增值税的纳税义务人。', '土地增值税纳税义务人', '土地增值税', '全国', '土地增值税暂行条例.doc|/alidata/server/tomcat-7.0.54/webapps/wbht/土地增值税暂行条例.doc', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('139', '国税函[2000]687号', '鉴于深圳市能源集团有限公司和深圳能源投资股份有限公司一次性共同转让深圳能源（钦州）实业有限公司100 ％的股权，且这些以股权形式表现的资产主要是土地使用权、地上建筑物及附着物，经研究，对此应按土地增值税的规定征税。', '转让股权征收土地增值税', '土地增值税', '内蒙', '国税函[2000]687号.doc|/alidata/server/tomcat-7.0.54/webapps/wbht/国税函[2000]687号.doc', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('140', '国税函发[1995]110号', '《关于印发〈土地增值税宣传提纲〉的通知》（国税函发[1995]110号）第六条第一款规定：“对取得土地或房地产使用权后，未进行开发即转让的，计算其增值额时，只允许扣除取得土地使用权时支付的地价款、交纳的有关费用，以及在转让环节缴纳的税金。”', '未进行开发即转让土地使用权', '土地增值税', '全国', '国税函发[1995]110号.doc|/alidata/server/tomcat-7.0.54/webapps/wbht/国税函发[1995]110号.doc', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('141', '123', '123', '123', '土地增值税', '全国', '123.txt|D:\\Java\\apache-tomcat-7.0.47\\webapps\\wbht\\fileupload/123.txt', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('142', '23333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333', '444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444445555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555', '34', '土地增值税', '北京', '23333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333.txt|D:\\Java\\apache-tomcat-7.0.47\\webapps\\wbht\\fileupload/23333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333.txt', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('143', '3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333', '4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555566666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666', '34', '土地增值税', '青岛', '3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333.txt|D:\\Java\\apache-tomcat-7.0.47\\webapps\\wbht\\fileupload/3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333.txt', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('144', '1', '1', '1', '土地增值税', '全国', '1.DOC|/alidata/server/tomcat-7.0.54/webapps/wbht/fileupload/1.DOC', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('145', '2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', '2222222222222', '1', '土地增值税', '全国', '2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.doc|/alidata/server/tomcat-7.0.54/webapps/wbht/fileupload/2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.doc', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('146', '33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333', '2222222222222', '1', '土地增值税', '全国', '33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333.doc|/alidata/server/tomcat-7.0.54/webapps/wbht/fileupload/33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333.doc', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('147', '1', '1', '1', '土地增值税', '全国', '1.doc|/alidata/server/tomcat-7.0.54/webapps/wbht/fileupload/1.doc', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('148', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '1', '1', '土地增值税', '全国', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111|/alidata/server/tomcat-7.0.54/webapps/wbht/fileupload/11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('149', '222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', '1', '1', '土地增值税', '全国', '222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222|/alidata/server/tomcat-7.0.54/webapps/wbht/fileupload/222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('150', '33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333', '1', '1', '土地增值税', '全国', '33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333|/alidata/server/tomcat-7.0.54/webapps/wbht/fileupload/33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('151', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '11', '1', '土地增值税', '全国', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111.doc|/alidata/server/tomcat-7.0.54/webapps/wbht/fileupload/111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111.doc', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('152', '222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', '11', '1', '土地增值税', '全国', '222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.doc|/alidata/server/tomcat-7.0.54/webapps/wbht/fileupload/222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.doc', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('153', '1', '1', '1', '土地增值税', '全国', '1.doc|/alidata/server/tomcat-7.0.54/webapps/wbht/fileupload/1.doc', '', '001', '微软', 'superadmin');
INSERT INTO `fgk` VALUES ('154', '11', '11', '11', '土地使用税', '上海', '11.gif|D:\\Java\\apache-tomcat-7.0.61\\webapps\\wbht\\fileupload/11.gif', '11', '001', '微软', 'superadmin');

-- ----------------------------
-- Table structure for `ht`
-- ----------------------------
DROP TABLE IF EXISTS `ht`;
CREATE TABLE `ht` (
  `id` varchar(255) NOT NULL,
  `firstnode` varchar(255) default NULL COMMENT '一级结点',
  `secondnode` varchar(255) default NULL COMMENT '二级结点',
  `htlx` varchar(255) default NULL COMMENT '合同类型',
  `gslx` varchar(255) default NULL COMMENT '公司类型',
  `keyword` varchar(255) default NULL,
  `note` text COMMENT '备注',
  `yaodian` text COMMENT '要点',
  `al` text COMMENT '案例',
  `gonghao` varchar(255) default NULL,
  `companyName` varchar(255) default NULL,
  `usertype` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ht
-- ----------------------------
INSERT INTO `ht` VALUES ('20150610205918702', '公司设立', '企业设计', '123', '外资', '123', '', '123', '123;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709212651163', '公司设立', '企业设计', '1', '外资、内资、上市', '1', '', '1', '1;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709212742241', '公司设立', '企业设计', '1', '外资、内资、上市', '1', '', '1', '1;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709212757552', '公司设立', '企业设计', '2', '外资、内资、上市', '2', '', '2', '2;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709212816318', '公司设立', '企业设计', '3', '外资、内资、上市', '3', '', '2', '3;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709212831320', '公司设立', '企业设计', '4', '外资、内资、上市', '4', '', '4', '4;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709212850025', '公司设立', '企业设计', '5', '外资、内资、上市', '5', '', '5', '5;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709212907105', '公司设立', '企业设计', '6', '外资、内资、上市', '6', '', '6', '6;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709212925742', '公司设立', '企业设计', '7', '外资、内资、上市', '7', '7', '7', '7;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709212940024', '公司设立', '企业设计', '8', '外资、内资、上市', '8', '', '8', '8;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709212959845', '公司设立', '企业设计', '9', '外资、内资、上市', '9', '', '9', '9;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709213014125', '公司设立', '企业设计', '8', '外资、内资、上市', '8', '', '8', '8;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709213030860', '公司设立', '企业设计', '9', '外资、内资、上市', '9', '', '9', '9;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709213046251', '公司设立', '企业设计', 'a', '外资、内资、上市', 'a', '', 'a', 'a;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709213104666', '公司设立', '企业设计', 's', '外资、内资、上市', 's', '', 's', 's;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709213122333', '公司设立', '企业设计', 'd', '外资、内资、上市', 'd', '', 'd', 'd;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709213137157', '公司设立', '企业设计', 'f', '外资、内资、上市', 'f', '', 'f', 'f;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709213155606', '公司设立', '企业设计', 'gg', '外资、内资、上市', 'g', '', 'g', 'g;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709213213118', '公司设立', '企业设计', 'ee', '外资、内资、上市', 'e', '', 'e', 'e;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709213230432', '公司设立', '企业设计', 'r', '外资、内资、上市', 'r', '', 'r', 'r;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709213257056', '公司设立', '企业设计', 'r', '外资、内资、上市', 'r', '', 'r', 'r;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709213313028', '公司设立', '企业设计', 't', '外资、内资、上市', 't', '', 't', 't;', '001', '微软', 'superadmin');
INSERT INTO `ht` VALUES ('20150709213326463', '公司设立', '企业设计', 'y', '外资、内资、上市', 'y', '', 'y', 'y;', '001', '微软', 'superadmin');

-- ----------------------------
-- Table structure for `ht_tax`
-- ----------------------------
DROP TABLE IF EXISTS `ht_tax`;
CREATE TABLE `ht_tax` (
  `tax_id` int(11) NOT NULL auto_increment,
  `chd1` text,
  `chd2` text,
  `chd3` text,
  `tj1` text,
  `tj2` text,
  `tj3` text,
  `wq` text,
  `fx` text,
  `al` text,
  `fg` text,
  `ht_taxtype` varchar(255) default NULL,
  `ht_id` varchar(255) default NULL,
  PRIMARY KEY  (`tax_id`),
  KEY `ht_id` (`ht_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ht_tax
-- ----------------------------
INSERT INTO `ht_tax` VALUES ('49', '我们', '一直', '也是一', '自己也是', '在家', '直存在着', '一些问题', '上的人', '是不是很', '这些', '营业税', '20141101120033082');
INSERT INTO `ht_tax` VALUES ('50', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141101120033082');
INSERT INTO `ht_tax` VALUES ('51', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141101120033082');
INSERT INTO `ht_tax` VALUES ('52', '', '', '', '', '', '', '', '', '', '', '增值税', '20141101120033082');
INSERT INTO `ht_tax` VALUES ('53', '', '', '', '', '', '', '', '', '', '', '契税', '20141101120033082');
INSERT INTO `ht_tax` VALUES ('54', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141101120033082');
INSERT INTO `ht_tax` VALUES ('55', '', '', '', '', '', '', '', '', '', '', '房产税', '20141101120033082');
INSERT INTO `ht_tax` VALUES ('56', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141101120033082');
INSERT INTO `ht_tax` VALUES ('57', '', '', '', '', '', '', '', '', '', '', '印花税', '20141101120033082');
INSERT INTO `ht_tax` VALUES ('64', 'hbiuk', '', '', '', '', '', '', '', '', '', '营业税', '20141105202432801');
INSERT INTO `ht_tax` VALUES ('65', 'jkoi', '', '', '', '', '', '', '', '', '', '企业所得税', '20141105202432801');
INSERT INTO `ht_tax` VALUES ('66', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141105202432801');
INSERT INTO `ht_tax` VALUES ('67', '', '', '', '', '', '', '', '', '', '', '增值税', '20141105202432801');
INSERT INTO `ht_tax` VALUES ('68', '', '', '', '', '', '', '', '', '', '', '契税', '20141105202432801');
INSERT INTO `ht_tax` VALUES ('69', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141105202432801');
INSERT INTO `ht_tax` VALUES ('70', '', '', '', '', '', '', '', '', '', '', '房产税', '20141105202432801');
INSERT INTO `ht_tax` VALUES ('71', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141105202432801');
INSERT INTO `ht_tax` VALUES ('72', 'yu', '', '', '', '', '', '', '', '', '', '印花税', '20141105202432801');
INSERT INTO `ht_tax` VALUES ('79', '', '', '', '', '', '', '', '', '', '', '营业税', '20141106114337201');
INSERT INTO `ht_tax` VALUES ('80', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141106114337201');
INSERT INTO `ht_tax` VALUES ('81', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141106114337201');
INSERT INTO `ht_tax` VALUES ('82', '', '', '', '', '', '', '', '', '', '', '增值税', '20141106114337201');
INSERT INTO `ht_tax` VALUES ('83', '', '', '', '', '', '', '', '', '', '', '契税', '20141106114337201');
INSERT INTO `ht_tax` VALUES ('84', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141106114337201');
INSERT INTO `ht_tax` VALUES ('85', '', '', '', '', '', '', '', '', '', '', '房产税', '20141106114337201');
INSERT INTO `ht_tax` VALUES ('86', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141106114337201');
INSERT INTO `ht_tax` VALUES ('87', '', '', '', '', '', '', '', '', '', '', '印花税', '20141106114337201');
INSERT INTO `ht_tax` VALUES ('94', '123', '', '', '123', '', '', '我', '', '', '', '营业税', '20141108204002574');
INSERT INTO `ht_tax` VALUES ('95', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141108204002574');
INSERT INTO `ht_tax` VALUES ('96', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141108204002574');
INSERT INTO `ht_tax` VALUES ('97', '', '', '', '', '', '', '', '', '', '', '增值税', '20141108204002574');
INSERT INTO `ht_tax` VALUES ('98', '', '', '', '', '', '', '', '', '', '', '契税', '20141108204002574');
INSERT INTO `ht_tax` VALUES ('99', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141108204002574');
INSERT INTO `ht_tax` VALUES ('100', '', '', '', '', '', '', '', '', '', '', '房产税', '20141108204002574');
INSERT INTO `ht_tax` VALUES ('101', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141108204002574');
INSERT INTO `ht_tax` VALUES ('102', '', '', '', '', '', '', '', '', '', '税法;民法', '印花税', '20141108204002574');
INSERT INTO `ht_tax` VALUES ('109', '', '', '', '', '', '', '', '', '', '', '营业税', '20141111164152284');
INSERT INTO `ht_tax` VALUES ('110', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141111164152284');
INSERT INTO `ht_tax` VALUES ('111', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141111164152284');
INSERT INTO `ht_tax` VALUES ('112', '', '', '', '', '', '', '', '', '', '', '增值税', '20141111164152284');
INSERT INTO `ht_tax` VALUES ('113', '', '', '', '', '', '', '', '', '', '', '契税', '20141111164152284');
INSERT INTO `ht_tax` VALUES ('114', '的我', '', '', '', '', '', '', '', '', '', '个人所得税', '20141111164152284');
INSERT INTO `ht_tax` VALUES ('115', '', '', '', '', '', '', '', '', '', '', '房产税', '20141111164152284');
INSERT INTO `ht_tax` VALUES ('116', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141111164152284');
INSERT INTO `ht_tax` VALUES ('117', '', '', '', '', '', '', '', '', '', '', '印花税', '20141111164152284');
INSERT INTO `ht_tax` VALUES ('169', '', '', '', '', '', '', '', '', '', '', '营业税', '20141113222129665');
INSERT INTO `ht_tax` VALUES ('170', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141113222129665');
INSERT INTO `ht_tax` VALUES ('171', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141113222129665');
INSERT INTO `ht_tax` VALUES ('172', '', '', '', '', '', '', '', '', '', '', '增值税', '20141113222129665');
INSERT INTO `ht_tax` VALUES ('173', '', '', '', '', '', '', '', '', '', '', '契税', '20141113222129665');
INSERT INTO `ht_tax` VALUES ('174', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141113222129665');
INSERT INTO `ht_tax` VALUES ('175', '', '', '', '', '', '', '', '', '', '', '房产税', '20141113222129665');
INSERT INTO `ht_tax` VALUES ('176', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141113222129665');
INSERT INTO `ht_tax` VALUES ('177', '', '', '', '', '', '', '', '', '', '', '印花税', '20141113222129665');
INSERT INTO `ht_tax` VALUES ('184', '', '', '', '', '', '', '', '', '', '', '营业税', '20141113222854542');
INSERT INTO `ht_tax` VALUES ('185', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141113222854542');
INSERT INTO `ht_tax` VALUES ('186', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141113222854542');
INSERT INTO `ht_tax` VALUES ('187', '', '', '', '', '', '', '', '', '', '', '增值税', '20141113222854542');
INSERT INTO `ht_tax` VALUES ('188', '', '', '', '', '', '', '', '', '', '', '契税', '20141113222854542');
INSERT INTO `ht_tax` VALUES ('189', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141113222854542');
INSERT INTO `ht_tax` VALUES ('190', '', '', '', '', '', '', '', '', '', '', '房产税', '20141113222854542');
INSERT INTO `ht_tax` VALUES ('191', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141113222854542');
INSERT INTO `ht_tax` VALUES ('192', '', '', '', '', '', '', '', '', '', '', '印花税', '20141113222854542');
INSERT INTO `ht_tax` VALUES ('214', '', '', '', '', '', '', '', '', '', '', '营业税', '20141114002057760');
INSERT INTO `ht_tax` VALUES ('215', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141114002057760');
INSERT INTO `ht_tax` VALUES ('216', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141114002057760');
INSERT INTO `ht_tax` VALUES ('217', '', '', '', '', '', '', '', '', '', '', '增值税', '20141114002057760');
INSERT INTO `ht_tax` VALUES ('218', '', '', '', '', '', '', '', '', '', '', '契税', '20141114002057760');
INSERT INTO `ht_tax` VALUES ('219', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141114002057760');
INSERT INTO `ht_tax` VALUES ('220', '', '', '', '', '', '', '', '', '', '', '房产税', '20141114002057760');
INSERT INTO `ht_tax` VALUES ('221', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141114002057760');
INSERT INTO `ht_tax` VALUES ('222', '', '', '', '', '', '', '', '', '', '', '印花税', '20141114002057760');
INSERT INTO `ht_tax` VALUES ('244', '', '', '', '', '', '', '', '', '', '', '营业税', '20141114215603154');
INSERT INTO `ht_tax` VALUES ('245', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141114215603154');
INSERT INTO `ht_tax` VALUES ('246', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141114215603154');
INSERT INTO `ht_tax` VALUES ('247', '', '', '', '', '', '', '', '', '', '', '增值税', '20141114215603154');
INSERT INTO `ht_tax` VALUES ('248', '', '', '', '', '', '', '', '', '', '', '契税', '20141114215603154');
INSERT INTO `ht_tax` VALUES ('249', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141114215603154');
INSERT INTO `ht_tax` VALUES ('250', '', '', '', '', '', '', '', '', '', '', '房产税', '20141114215603154');
INSERT INTO `ht_tax` VALUES ('251', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141114215603154');
INSERT INTO `ht_tax` VALUES ('252', '', '', '', '', '', '', '', '', '', '', '印花税', '20141114215603154');
INSERT INTO `ht_tax` VALUES ('259', '', '', '', '', '', '', '', '', '', '', '营业税', '20141114215936160');
INSERT INTO `ht_tax` VALUES ('260', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141114215936160');
INSERT INTO `ht_tax` VALUES ('261', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141114215936160');
INSERT INTO `ht_tax` VALUES ('262', '', '', '', '', '', '', '', '', '', '', '增值税', '20141114215936160');
INSERT INTO `ht_tax` VALUES ('263', '', '', '', '', '', '', '', '', '', '', '契税', '20141114215936160');
INSERT INTO `ht_tax` VALUES ('264', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141114215936160');
INSERT INTO `ht_tax` VALUES ('265', '', '', '', '', '', '', '', '', '', '', '房产税', '20141114215936160');
INSERT INTO `ht_tax` VALUES ('266', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141114215936160');
INSERT INTO `ht_tax` VALUES ('267', '', '', '', '', '', '', '', '', '', '', '印花税', '20141114215936160');
INSERT INTO `ht_tax` VALUES ('274', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', '营业税', '20141114215955714');
INSERT INTO `ht_tax` VALUES ('275', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141114215955714');
INSERT INTO `ht_tax` VALUES ('276', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141114215955714');
INSERT INTO `ht_tax` VALUES ('277', '', '', '', '', '', '', '', '', '', '', '增值税', '20141114215955714');
INSERT INTO `ht_tax` VALUES ('278', '', '', '', '', '', '', '', '', '', '', '契税', '20141114215955714');
INSERT INTO `ht_tax` VALUES ('279', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141114215955714');
INSERT INTO `ht_tax` VALUES ('280', '', '', '', '', '', '', '', '', '', '', '房产税', '20141114215955714');
INSERT INTO `ht_tax` VALUES ('281', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141114215955714');
INSERT INTO `ht_tax` VALUES ('282', '', '', '', '', '', '', '', '', '', '', '印花税', '20141114215955714');
INSERT INTO `ht_tax` VALUES ('289', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', '营业税', '20141114220101145');
INSERT INTO `ht_tax` VALUES ('290', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', '企业所得税', '20141114220101145');
INSERT INTO `ht_tax` VALUES ('291', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', '土地增值税', '20141114220101145');
INSERT INTO `ht_tax` VALUES ('292', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', '增值税', '20141114220101145');
INSERT INTO `ht_tax` VALUES ('293', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', '契税', '20141114220101145');
INSERT INTO `ht_tax` VALUES ('294', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', '个人所得税', '20141114220101145');
INSERT INTO `ht_tax` VALUES ('295', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', '', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', '房产税', '20141114220101145');
INSERT INTO `ht_tax` VALUES ('296', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', '土地使用税', '20141114220101145');
INSERT INTO `ht_tax` VALUES ('297', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', 'table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }table{ table-layout:fixed; } td{ word-wrap:break-word; }', '印花税', '20141114220101145');
INSERT INTO `ht_tax` VALUES ('364', 'nn', '', '', 'nn', '', '', '', '', null, '', '营业税', '20141115135750030');
INSERT INTO `ht_tax` VALUES ('365', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141115135750030');
INSERT INTO `ht_tax` VALUES ('366', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141115135750030');
INSERT INTO `ht_tax` VALUES ('367', '', '', '', '', '', '', '', '', '', '', '增值税', '20141115135750030');
INSERT INTO `ht_tax` VALUES ('368', '', '', '', '', '', '', '', '', '', '', '契税', '20141115135750030');
INSERT INTO `ht_tax` VALUES ('369', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141115135750030');
INSERT INTO `ht_tax` VALUES ('370', '', '', '', '', '', '', '', '', '', '', '房产税', '20141115135750030');
INSERT INTO `ht_tax` VALUES ('371', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141115135750030');
INSERT INTO `ht_tax` VALUES ('372', '', '', '', '', '', '', '', '', '', '', '印花税', '20141115135750030');
INSERT INTO `ht_tax` VALUES ('379', '', '', '', '', '', '', '1', '1', '2;22;', '', '营业税', '20141115140318386');
INSERT INTO `ht_tax` VALUES ('380', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141115140318386');
INSERT INTO `ht_tax` VALUES ('381', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141115140318386');
INSERT INTO `ht_tax` VALUES ('382', '', '', '', '', '', '', '', '', '', '', '增值税', '20141115140318386');
INSERT INTO `ht_tax` VALUES ('383', '', '', '', '', '', '', '', '', '', '', '契税', '20141115140318386');
INSERT INTO `ht_tax` VALUES ('384', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141115140318386');
INSERT INTO `ht_tax` VALUES ('385', '', '', '', '', '', '', '', '', '', '', '房产税', '20141115140318386');
INSERT INTO `ht_tax` VALUES ('386', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141115140318386');
INSERT INTO `ht_tax` VALUES ('387', '', '', '', '', '', '', '', '', '', '', '印花税', '20141115140318386');
INSERT INTO `ht_tax` VALUES ('394', '55', '', '', '55', '', '', '', '', '6;66;', '', '营业税', '20141115140839257');
INSERT INTO `ht_tax` VALUES ('395', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141115140839257');
INSERT INTO `ht_tax` VALUES ('396', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141115140839257');
INSERT INTO `ht_tax` VALUES ('397', '', '', '', '', '', '', '', '', '', '', '增值税', '20141115140839257');
INSERT INTO `ht_tax` VALUES ('398', '', '', '', '', '', '', '', '', '', '', '契税', '20141115140839257');
INSERT INTO `ht_tax` VALUES ('399', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141115140839257');
INSERT INTO `ht_tax` VALUES ('400', '', '', '', '', '', '', '', '', '', '', '房产税', '20141115140839257');
INSERT INTO `ht_tax` VALUES ('401', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141115140839257');
INSERT INTO `ht_tax` VALUES ('402', '', '', '', '', '', '', '', '', '', '', '印花税', '20141115140839257');
INSERT INTO `ht_tax` VALUES ('439', '', '', '', '', '', '', '', '', '', '', '营业税', '20141115225602816');
INSERT INTO `ht_tax` VALUES ('440', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141115225602816');
INSERT INTO `ht_tax` VALUES ('441', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141115225602816');
INSERT INTO `ht_tax` VALUES ('442', '', '', '', '', '', '', '', '', '', '', '增值税', '20141115225602816');
INSERT INTO `ht_tax` VALUES ('443', '', '', '', '', '', '', '', '', '123;1233;', '', '契税', '20141115225602816');
INSERT INTO `ht_tax` VALUES ('444', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141115225602816');
INSERT INTO `ht_tax` VALUES ('445', '', '', '', '', '', '', '', '', '', '', '房产税', '20141115225602816');
INSERT INTO `ht_tax` VALUES ('446', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141115225602816');
INSERT INTO `ht_tax` VALUES ('447', '', '', '', '', '', '', '', '', '', '', '印花税', '20141115225602816');
INSERT INTO `ht_tax` VALUES ('574', '', '', '', '', '', '', '', '', '', '', '营业税', '20141201184808061');
INSERT INTO `ht_tax` VALUES ('575', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141201184808061');
INSERT INTO `ht_tax` VALUES ('576', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141201184808061');
INSERT INTO `ht_tax` VALUES ('577', '', '', '', '', '', '', '', '', '', '', '增值税', '20141201184808061');
INSERT INTO `ht_tax` VALUES ('578', '', '', '', '', '', '', '', '', '', '', '契税', '20141201184808061');
INSERT INTO `ht_tax` VALUES ('579', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141201184808061');
INSERT INTO `ht_tax` VALUES ('580', '', '', '', '', '', '', '', '', '', '', '房产税', '20141201184808061');
INSERT INTO `ht_tax` VALUES ('581', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141201184808061');
INSERT INTO `ht_tax` VALUES ('582', '', '', '', '', '', '', '', '', '', '', '印花税', '20141201184808061');
INSERT INTO `ht_tax` VALUES ('604', '', '', '', '', '', '', '', '', '', '', '营业税', '20141201203338348');
INSERT INTO `ht_tax` VALUES ('605', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141201203338348');
INSERT INTO `ht_tax` VALUES ('606', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141201203338348');
INSERT INTO `ht_tax` VALUES ('607', '', '', '', '', '', '', '', '', '', '', '增值税', '20141201203338348');
INSERT INTO `ht_tax` VALUES ('608', '', '', '', '', '', '', '', '', '', '', '契税', '20141201203338348');
INSERT INTO `ht_tax` VALUES ('609', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141201203338348');
INSERT INTO `ht_tax` VALUES ('610', '', '', '', '', '', '', '', '', '', '', '房产税', '20141201203338348');
INSERT INTO `ht_tax` VALUES ('611', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141201203338348');
INSERT INTO `ht_tax` VALUES ('612', '', '', '', '', '', '', '', '', '', '', '印花税', '20141201203338348');
INSERT INTO `ht_tax` VALUES ('619', '', '', '', '', '', '', '', '', '', '', '营业税', '20141204123004446');
INSERT INTO `ht_tax` VALUES ('620', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141204123004446');
INSERT INTO `ht_tax` VALUES ('621', 'sad', 'sad', 'sad', 'sa', 'sad', 'sad', 'sad', 'asd', 'asdsad;', 'asdfg;', '土地增值税', '20141204123004446');
INSERT INTO `ht_tax` VALUES ('622', '', '', '', '', '', '', '', '', '', '', '增值税', '20141204123004446');
INSERT INTO `ht_tax` VALUES ('623', '', '', '', '', '', '', '', '', '', '', '契税', '20141204123004446');
INSERT INTO `ht_tax` VALUES ('624', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141204123004446');
INSERT INTO `ht_tax` VALUES ('625', '', '', '', '', '', '', '', '', '', '', '房产税', '20141204123004446');
INSERT INTO `ht_tax` VALUES ('626', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141204123004446');
INSERT INTO `ht_tax` VALUES ('627', '', '', '', '', '', '', '', '', '', '', '印花税', '20141204123004446');
INSERT INTO `ht_tax` VALUES ('634', '', '', '', '', '', '', '', '', '', '', '营业税', '20141204124609452');
INSERT INTO `ht_tax` VALUES ('635', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141204124609452');
INSERT INTO `ht_tax` VALUES ('636', '456', '456', '456', '456', '546', '456', '456', '456', '456;', '456;', '土地增值税', '20141204124609452');
INSERT INTO `ht_tax` VALUES ('637', '', '', '', '', '', '', '', '', '', '', '增值税', '20141204124609452');
INSERT INTO `ht_tax` VALUES ('638', '', '', '', '', '', '', '', '', '', '', '契税', '20141204124609452');
INSERT INTO `ht_tax` VALUES ('639', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141204124609452');
INSERT INTO `ht_tax` VALUES ('640', '', '', '', '', '', '', '', '', '', '', '房产税', '20141204124609452');
INSERT INTO `ht_tax` VALUES ('641', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141204124609452');
INSERT INTO `ht_tax` VALUES ('642', '', '', '', '', '', '', '', '', '', '', '印花税', '20141204124609452');
INSERT INTO `ht_tax` VALUES ('649', '', '', '', '', '', '', '', '', '', '', '营业税', '20141204125642203');
INSERT INTO `ht_tax` VALUES ('650', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141204125642203');
INSERT INTO `ht_tax` VALUES ('651', 'jk', 'jk', 'jk', 'jk', 'jk', 'jk', 'jk', 'jk', '', 'jk;', '土地增值税', '20141204125642203');
INSERT INTO `ht_tax` VALUES ('652', '', '', '', '', '', '', '', '', '', '', '增值税', '20141204125642203');
INSERT INTO `ht_tax` VALUES ('653', '', '', '', '', '', '', '', '', '', '', '契税', '20141204125642203');
INSERT INTO `ht_tax` VALUES ('654', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141204125642203');
INSERT INTO `ht_tax` VALUES ('655', '', '', '', '', '', '', '', '', '', '', '房产税', '20141204125642203');
INSERT INTO `ht_tax` VALUES ('656', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141204125642203');
INSERT INTO `ht_tax` VALUES ('657', '', '', '', '', '', '', '', '', '', '', '印花税', '20141204125642203');
INSERT INTO `ht_tax` VALUES ('664', '', '', '', '', '', '', '', '', '', '', '营业税', '20141204131146563');
INSERT INTO `ht_tax` VALUES ('665', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141204131146563');
INSERT INTO `ht_tax` VALUES ('666', 'ww', 'ww', 'ww', 'ww', 'ww', 'ww', 'ww', 'ww', 'ww;', 'www;', '土地增值税', '20141204131146563');
INSERT INTO `ht_tax` VALUES ('667', '', '', '', '', '', '', '', '', '', '', '增值税', '20141204131146563');
INSERT INTO `ht_tax` VALUES ('668', '', '', '', '', '', '', '', '', '', '', '契税', '20141204131146563');
INSERT INTO `ht_tax` VALUES ('669', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141204131146563');
INSERT INTO `ht_tax` VALUES ('670', '', '', '', '', '', '', '', '', '', '', '房产税', '20141204131146563');
INSERT INTO `ht_tax` VALUES ('671', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141204131146563');
INSERT INTO `ht_tax` VALUES ('672', '', '', '', '', '', '', '', '', '', '', '印花税', '20141204131146563');
INSERT INTO `ht_tax` VALUES ('799', '', '', '', '', '', '', '', '', '', '', '营业税', '20141206121736532');
INSERT INTO `ht_tax` VALUES ('800', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141206121736532');
INSERT INTO `ht_tax` VALUES ('801', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141206121736532');
INSERT INTO `ht_tax` VALUES ('802', '', '', '', '', '', '', '', '', '', '', '增值税', '20141206121736532');
INSERT INTO `ht_tax` VALUES ('803', '', '', '', '', '', '', '', '', '', '', '契税', '20141206121736532');
INSERT INTO `ht_tax` VALUES ('804', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141206121736532');
INSERT INTO `ht_tax` VALUES ('805', '', '', '', '', '', '', '', '', '', '', '房产税', '20141206121736532');
INSERT INTO `ht_tax` VALUES ('806', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141206121736532');
INSERT INTO `ht_tax` VALUES ('807', '', '', '', '', '', '', '', '', '', '', '印花税', '20141206121736532');
INSERT INTO `ht_tax` VALUES ('859', '', '', '', '', '', '', '', '', '', '', '营业税', '20141206214250138');
INSERT INTO `ht_tax` VALUES ('860', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141206214250138');
INSERT INTO `ht_tax` VALUES ('861', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141206214250138');
INSERT INTO `ht_tax` VALUES ('862', '', '', '', '', '', '', '', '', '', '', '增值税', '20141206214250138');
INSERT INTO `ht_tax` VALUES ('863', '', '', '', '', '', '', '', '', '', '', '契税', '20141206214250138');
INSERT INTO `ht_tax` VALUES ('864', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141206214250138');
INSERT INTO `ht_tax` VALUES ('865', '', '', '', '', '', '', '', '', '', '', '房产税', '20141206214250138');
INSERT INTO `ht_tax` VALUES ('866', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141206214250138');
INSERT INTO `ht_tax` VALUES ('867', '', '', '', '', '', '', '', '', '', '', '印花税', '20141206214250138');
INSERT INTO `ht_tax` VALUES ('868', '123', '123', '123', '123', '123', '123', '123', '123', '123;', '123.txt;', '营业税', '20150610205918702');
INSERT INTO `ht_tax` VALUES ('869', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150610205918702');
INSERT INTO `ht_tax` VALUES ('870', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150610205918702');
INSERT INTO `ht_tax` VALUES ('871', '', '', '', '', '', '', '', '', '', '', '增值税', '20150610205918702');
INSERT INTO `ht_tax` VALUES ('872', '', '', '', '', '', '', '', '', '', '', '契税', '20150610205918702');
INSERT INTO `ht_tax` VALUES ('873', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150610205918702');
INSERT INTO `ht_tax` VALUES ('874', '', '', '', '', '', '', '', '', '', '', '房产税', '20150610205918702');
INSERT INTO `ht_tax` VALUES ('875', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150610205918702');
INSERT INTO `ht_tax` VALUES ('876', '', '', '', '', '', '', '', '', '', '', '印花税', '20150610205918702');
INSERT INTO `ht_tax` VALUES ('892', '1', '', '', '', '', '', '', '', '1;', '1.doc;', '营业税', '20150709212651163');
INSERT INTO `ht_tax` VALUES ('893', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709212651163');
INSERT INTO `ht_tax` VALUES ('894', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709212651163');
INSERT INTO `ht_tax` VALUES ('895', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709212651163');
INSERT INTO `ht_tax` VALUES ('896', '', '', '', '', '', '', '', '', '', '', '契税', '20150709212651163');
INSERT INTO `ht_tax` VALUES ('897', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709212651163');
INSERT INTO `ht_tax` VALUES ('898', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709212651163');
INSERT INTO `ht_tax` VALUES ('899', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709212651163');
INSERT INTO `ht_tax` VALUES ('900', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709212651163');
INSERT INTO `ht_tax` VALUES ('907', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709212742241');
INSERT INTO `ht_tax` VALUES ('908', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709212742241');
INSERT INTO `ht_tax` VALUES ('909', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709212742241');
INSERT INTO `ht_tax` VALUES ('910', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709212742241');
INSERT INTO `ht_tax` VALUES ('911', '', '', '', '', '', '', '', '', '', '', '契税', '20150709212742241');
INSERT INTO `ht_tax` VALUES ('912', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709212742241');
INSERT INTO `ht_tax` VALUES ('913', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709212742241');
INSERT INTO `ht_tax` VALUES ('914', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709212742241');
INSERT INTO `ht_tax` VALUES ('915', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709212742241');
INSERT INTO `ht_tax` VALUES ('922', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709212757552');
INSERT INTO `ht_tax` VALUES ('923', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709212757552');
INSERT INTO `ht_tax` VALUES ('924', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709212757552');
INSERT INTO `ht_tax` VALUES ('925', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709212757552');
INSERT INTO `ht_tax` VALUES ('926', '', '', '', '', '', '', '', '', '', '', '契税', '20150709212757552');
INSERT INTO `ht_tax` VALUES ('927', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709212757552');
INSERT INTO `ht_tax` VALUES ('928', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709212757552');
INSERT INTO `ht_tax` VALUES ('929', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709212757552');
INSERT INTO `ht_tax` VALUES ('930', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709212757552');
INSERT INTO `ht_tax` VALUES ('937', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709212816318');
INSERT INTO `ht_tax` VALUES ('938', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709212816318');
INSERT INTO `ht_tax` VALUES ('939', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709212816318');
INSERT INTO `ht_tax` VALUES ('940', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709212816318');
INSERT INTO `ht_tax` VALUES ('941', '', '', '', '', '', '', '', '', '', '', '契税', '20150709212816318');
INSERT INTO `ht_tax` VALUES ('942', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709212816318');
INSERT INTO `ht_tax` VALUES ('943', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709212816318');
INSERT INTO `ht_tax` VALUES ('944', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709212816318');
INSERT INTO `ht_tax` VALUES ('945', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709212816318');
INSERT INTO `ht_tax` VALUES ('952', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709212831320');
INSERT INTO `ht_tax` VALUES ('953', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709212831320');
INSERT INTO `ht_tax` VALUES ('954', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709212831320');
INSERT INTO `ht_tax` VALUES ('955', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709212831320');
INSERT INTO `ht_tax` VALUES ('956', '', '', '', '', '', '', '', '', '', '', '契税', '20150709212831320');
INSERT INTO `ht_tax` VALUES ('957', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709212831320');
INSERT INTO `ht_tax` VALUES ('958', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709212831320');
INSERT INTO `ht_tax` VALUES ('959', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709212831320');
INSERT INTO `ht_tax` VALUES ('960', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709212831320');
INSERT INTO `ht_tax` VALUES ('967', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709212850025');
INSERT INTO `ht_tax` VALUES ('968', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709212850025');
INSERT INTO `ht_tax` VALUES ('969', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709212850025');
INSERT INTO `ht_tax` VALUES ('970', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709212850025');
INSERT INTO `ht_tax` VALUES ('971', '', '', '', '', '', '', '', '', '', '', '契税', '20150709212850025');
INSERT INTO `ht_tax` VALUES ('972', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709212850025');
INSERT INTO `ht_tax` VALUES ('973', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709212850025');
INSERT INTO `ht_tax` VALUES ('974', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709212850025');
INSERT INTO `ht_tax` VALUES ('975', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709212850025');
INSERT INTO `ht_tax` VALUES ('982', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709212907105');
INSERT INTO `ht_tax` VALUES ('983', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709212907105');
INSERT INTO `ht_tax` VALUES ('984', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709212907105');
INSERT INTO `ht_tax` VALUES ('985', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709212907105');
INSERT INTO `ht_tax` VALUES ('986', '', '', '', '', '', '', '', '', '', '', '契税', '20150709212907105');
INSERT INTO `ht_tax` VALUES ('987', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709212907105');
INSERT INTO `ht_tax` VALUES ('988', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709212907105');
INSERT INTO `ht_tax` VALUES ('989', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709212907105');
INSERT INTO `ht_tax` VALUES ('990', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709212907105');
INSERT INTO `ht_tax` VALUES ('997', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709212925742');
INSERT INTO `ht_tax` VALUES ('998', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709212925742');
INSERT INTO `ht_tax` VALUES ('999', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709212925742');
INSERT INTO `ht_tax` VALUES ('1000', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709212925742');
INSERT INTO `ht_tax` VALUES ('1001', '', '', '', '', '', '', '', '', '', '', '契税', '20150709212925742');
INSERT INTO `ht_tax` VALUES ('1002', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709212925742');
INSERT INTO `ht_tax` VALUES ('1003', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709212925742');
INSERT INTO `ht_tax` VALUES ('1004', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709212925742');
INSERT INTO `ht_tax` VALUES ('1005', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709212925742');
INSERT INTO `ht_tax` VALUES ('1012', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709212940024');
INSERT INTO `ht_tax` VALUES ('1013', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709212940024');
INSERT INTO `ht_tax` VALUES ('1014', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709212940024');
INSERT INTO `ht_tax` VALUES ('1015', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709212940024');
INSERT INTO `ht_tax` VALUES ('1016', '', '', '', '', '', '', '', '', '', '', '契税', '20150709212940024');
INSERT INTO `ht_tax` VALUES ('1017', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709212940024');
INSERT INTO `ht_tax` VALUES ('1018', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709212940024');
INSERT INTO `ht_tax` VALUES ('1019', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709212940024');
INSERT INTO `ht_tax` VALUES ('1020', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709212940024');
INSERT INTO `ht_tax` VALUES ('1027', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709212959845');
INSERT INTO `ht_tax` VALUES ('1028', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709212959845');
INSERT INTO `ht_tax` VALUES ('1029', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709212959845');
INSERT INTO `ht_tax` VALUES ('1030', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709212959845');
INSERT INTO `ht_tax` VALUES ('1031', '', '', '', '', '', '', '', '', '', '', '契税', '20150709212959845');
INSERT INTO `ht_tax` VALUES ('1032', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709212959845');
INSERT INTO `ht_tax` VALUES ('1033', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709212959845');
INSERT INTO `ht_tax` VALUES ('1034', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709212959845');
INSERT INTO `ht_tax` VALUES ('1035', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709212959845');
INSERT INTO `ht_tax` VALUES ('1042', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709213014125');
INSERT INTO `ht_tax` VALUES ('1043', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709213014125');
INSERT INTO `ht_tax` VALUES ('1044', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709213014125');
INSERT INTO `ht_tax` VALUES ('1045', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709213014125');
INSERT INTO `ht_tax` VALUES ('1046', '', '', '', '', '', '', '', '', '', '', '契税', '20150709213014125');
INSERT INTO `ht_tax` VALUES ('1047', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709213014125');
INSERT INTO `ht_tax` VALUES ('1048', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709213014125');
INSERT INTO `ht_tax` VALUES ('1049', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709213014125');
INSERT INTO `ht_tax` VALUES ('1050', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709213014125');
INSERT INTO `ht_tax` VALUES ('1057', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709213030860');
INSERT INTO `ht_tax` VALUES ('1058', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709213030860');
INSERT INTO `ht_tax` VALUES ('1059', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709213030860');
INSERT INTO `ht_tax` VALUES ('1060', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709213030860');
INSERT INTO `ht_tax` VALUES ('1061', '', '', '', '', '', '', '', '', '', '', '契税', '20150709213030860');
INSERT INTO `ht_tax` VALUES ('1062', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709213030860');
INSERT INTO `ht_tax` VALUES ('1063', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709213030860');
INSERT INTO `ht_tax` VALUES ('1064', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709213030860');
INSERT INTO `ht_tax` VALUES ('1065', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709213030860');
INSERT INTO `ht_tax` VALUES ('1072', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709213046251');
INSERT INTO `ht_tax` VALUES ('1073', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709213046251');
INSERT INTO `ht_tax` VALUES ('1074', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709213046251');
INSERT INTO `ht_tax` VALUES ('1075', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709213046251');
INSERT INTO `ht_tax` VALUES ('1076', '', '', '', '', '', '', '', '', '', '', '契税', '20150709213046251');
INSERT INTO `ht_tax` VALUES ('1077', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709213046251');
INSERT INTO `ht_tax` VALUES ('1078', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709213046251');
INSERT INTO `ht_tax` VALUES ('1079', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709213046251');
INSERT INTO `ht_tax` VALUES ('1080', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709213046251');
INSERT INTO `ht_tax` VALUES ('1087', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709213104666');
INSERT INTO `ht_tax` VALUES ('1088', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709213104666');
INSERT INTO `ht_tax` VALUES ('1089', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709213104666');
INSERT INTO `ht_tax` VALUES ('1090', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709213104666');
INSERT INTO `ht_tax` VALUES ('1091', '', '', '', '', '', '', '', '', '', '', '契税', '20150709213104666');
INSERT INTO `ht_tax` VALUES ('1092', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709213104666');
INSERT INTO `ht_tax` VALUES ('1093', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709213104666');
INSERT INTO `ht_tax` VALUES ('1094', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709213104666');
INSERT INTO `ht_tax` VALUES ('1095', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709213104666');
INSERT INTO `ht_tax` VALUES ('1102', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709213122333');
INSERT INTO `ht_tax` VALUES ('1103', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709213122333');
INSERT INTO `ht_tax` VALUES ('1104', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709213122333');
INSERT INTO `ht_tax` VALUES ('1105', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709213122333');
INSERT INTO `ht_tax` VALUES ('1106', '', '', '', '', '', '', '', '', '', '', '契税', '20150709213122333');
INSERT INTO `ht_tax` VALUES ('1107', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709213122333');
INSERT INTO `ht_tax` VALUES ('1108', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709213122333');
INSERT INTO `ht_tax` VALUES ('1109', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709213122333');
INSERT INTO `ht_tax` VALUES ('1110', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709213122333');
INSERT INTO `ht_tax` VALUES ('1117', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709213137157');
INSERT INTO `ht_tax` VALUES ('1118', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709213137157');
INSERT INTO `ht_tax` VALUES ('1119', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709213137157');
INSERT INTO `ht_tax` VALUES ('1120', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709213137157');
INSERT INTO `ht_tax` VALUES ('1121', '', '', '', '', '', '', '', '', '', '', '契税', '20150709213137157');
INSERT INTO `ht_tax` VALUES ('1122', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709213137157');
INSERT INTO `ht_tax` VALUES ('1123', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709213137157');
INSERT INTO `ht_tax` VALUES ('1124', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709213137157');
INSERT INTO `ht_tax` VALUES ('1125', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709213137157');
INSERT INTO `ht_tax` VALUES ('1132', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709213155606');
INSERT INTO `ht_tax` VALUES ('1133', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709213155606');
INSERT INTO `ht_tax` VALUES ('1134', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709213155606');
INSERT INTO `ht_tax` VALUES ('1135', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709213155606');
INSERT INTO `ht_tax` VALUES ('1136', '', '', '', '', '', '', '', '', '', '', '契税', '20150709213155606');
INSERT INTO `ht_tax` VALUES ('1137', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709213155606');
INSERT INTO `ht_tax` VALUES ('1138', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709213155606');
INSERT INTO `ht_tax` VALUES ('1139', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709213155606');
INSERT INTO `ht_tax` VALUES ('1140', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709213155606');
INSERT INTO `ht_tax` VALUES ('1147', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709213213118');
INSERT INTO `ht_tax` VALUES ('1148', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709213213118');
INSERT INTO `ht_tax` VALUES ('1149', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709213213118');
INSERT INTO `ht_tax` VALUES ('1150', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709213213118');
INSERT INTO `ht_tax` VALUES ('1151', '', '', '', '', '', '', '', '', '', '', '契税', '20150709213213118');
INSERT INTO `ht_tax` VALUES ('1152', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709213213118');
INSERT INTO `ht_tax` VALUES ('1153', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709213213118');
INSERT INTO `ht_tax` VALUES ('1154', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709213213118');
INSERT INTO `ht_tax` VALUES ('1155', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709213213118');
INSERT INTO `ht_tax` VALUES ('1162', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709213230432');
INSERT INTO `ht_tax` VALUES ('1163', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709213230432');
INSERT INTO `ht_tax` VALUES ('1164', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709213230432');
INSERT INTO `ht_tax` VALUES ('1165', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709213230432');
INSERT INTO `ht_tax` VALUES ('1166', '', '', '', '', '', '', '', '', '', '', '契税', '20150709213230432');
INSERT INTO `ht_tax` VALUES ('1167', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709213230432');
INSERT INTO `ht_tax` VALUES ('1168', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709213230432');
INSERT INTO `ht_tax` VALUES ('1169', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709213230432');
INSERT INTO `ht_tax` VALUES ('1170', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709213230432');
INSERT INTO `ht_tax` VALUES ('1177', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709213257056');
INSERT INTO `ht_tax` VALUES ('1178', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709213257056');
INSERT INTO `ht_tax` VALUES ('1179', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709213257056');
INSERT INTO `ht_tax` VALUES ('1180', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709213257056');
INSERT INTO `ht_tax` VALUES ('1181', '', '', '', '', '', '', '', '', '', '', '契税', '20150709213257056');
INSERT INTO `ht_tax` VALUES ('1182', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709213257056');
INSERT INTO `ht_tax` VALUES ('1183', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709213257056');
INSERT INTO `ht_tax` VALUES ('1184', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709213257056');
INSERT INTO `ht_tax` VALUES ('1185', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709213257056');
INSERT INTO `ht_tax` VALUES ('1192', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709213313028');
INSERT INTO `ht_tax` VALUES ('1193', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709213313028');
INSERT INTO `ht_tax` VALUES ('1194', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709213313028');
INSERT INTO `ht_tax` VALUES ('1195', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709213313028');
INSERT INTO `ht_tax` VALUES ('1196', '', '', '', '', '', '', '', '', '', '', '契税', '20150709213313028');
INSERT INTO `ht_tax` VALUES ('1197', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709213313028');
INSERT INTO `ht_tax` VALUES ('1198', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709213313028');
INSERT INTO `ht_tax` VALUES ('1199', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709213313028');
INSERT INTO `ht_tax` VALUES ('1200', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709213313028');
INSERT INTO `ht_tax` VALUES ('1207', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709213326463');
INSERT INTO `ht_tax` VALUES ('1208', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20150709213326463');
INSERT INTO `ht_tax` VALUES ('1209', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709213326463');
INSERT INTO `ht_tax` VALUES ('1210', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709213326463');
INSERT INTO `ht_tax` VALUES ('1211', '', '', '', '', '', '', '', '', '', '', '契税', '20150709213326463');
INSERT INTO `ht_tax` VALUES ('1212', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709213326463');
INSERT INTO `ht_tax` VALUES ('1213', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709213326463');
INSERT INTO `ht_tax` VALUES ('1214', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709213326463');
INSERT INTO `ht_tax` VALUES ('1215', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709213326463');

-- ----------------------------
-- Table structure for `jcs`
-- ----------------------------
DROP TABLE IF EXISTS `jcs`;
CREATE TABLE `jcs` (
  `id` varchar(255) NOT NULL,
  `firstnode` varchar(255) default NULL COMMENT '一级结点',
  `secondnode` varchar(255) default NULL COMMENT '二级结点',
  `title` text COMMENT '标题',
  `gslx` varchar(255) default NULL COMMENT '公司类型',
  `keyword` varchar(255) default NULL,
  `note` text COMMENT '备注',
  `yaodian` text COMMENT '要点',
  `al` text COMMENT '案例',
  `gonghao` varchar(255) default NULL,
  `companyName` varchar(255) default NULL,
  `usertype` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jcs
-- ----------------------------
INSERT INTO `jcs` VALUES ('20150709212529825', '公司设立', '企业设计', '11', '外资、内资、上市', '1', '', '11', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;', '001', '微软', 'superadmin');

-- ----------------------------
-- Table structure for `jcs_tax`
-- ----------------------------
DROP TABLE IF EXISTS `jcs_tax`;
CREATE TABLE `jcs_tax` (
  `tax_id` int(11) NOT NULL auto_increment,
  `chd1` text,
  `chd2` text,
  `chd3` text,
  `tj1` text,
  `tj2` text,
  `tj3` text,
  `wq` text,
  `fx` text,
  `al` text,
  `fg` text,
  `jcs_taxtype` varchar(255) default NULL,
  `jcs_id` varchar(255) default NULL,
  PRIMARY KEY  (`tax_id`),
  KEY `ht_id` (`jcs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jcs_tax
-- ----------------------------
INSERT INTO `jcs_tax` VALUES ('64', '', '', '', '', '', '', '', '', '', '', '营业税', '20141105202432801');
INSERT INTO `jcs_tax` VALUES ('65', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141105202432801');
INSERT INTO `jcs_tax` VALUES ('66', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141105202432801');
INSERT INTO `jcs_tax` VALUES ('67', '', '', '', '', '', '', '', '', '', '', '增值税', '20141105202432801');
INSERT INTO `jcs_tax` VALUES ('68', '', '', '', '', '', '', '', '', '', '', '契税', '20141105202432801');
INSERT INTO `jcs_tax` VALUES ('69', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141105202432801');
INSERT INTO `jcs_tax` VALUES ('70', '', '', '', '', '', '', '', '', '', '', '房产税', '20141105202432801');
INSERT INTO `jcs_tax` VALUES ('71', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141105202432801');
INSERT INTO `jcs_tax` VALUES ('72', '', '', '', '', '', '', '', '', '', '', '印花税', '20141105202432801');
INSERT INTO `jcs_tax` VALUES ('79', '', '', '', '', '', '', '', '', '', '', '营业税', '20141106114337201');
INSERT INTO `jcs_tax` VALUES ('80', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141106114337201');
INSERT INTO `jcs_tax` VALUES ('81', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141106114337201');
INSERT INTO `jcs_tax` VALUES ('82', '', '', '', '', '', '', '', '', '', '', '增值税', '20141106114337201');
INSERT INTO `jcs_tax` VALUES ('83', '', '', '', '', '', '', '', '', '', '', '契税', '20141106114337201');
INSERT INTO `jcs_tax` VALUES ('84', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141106114337201');
INSERT INTO `jcs_tax` VALUES ('85', '', '', '', '', '', '', '', '', '', '', '房产税', '20141106114337201');
INSERT INTO `jcs_tax` VALUES ('86', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141106114337201');
INSERT INTO `jcs_tax` VALUES ('87', '', '', '', '', '', '', '', '', '', '', '印花税', '20141106114337201');
INSERT INTO `jcs_tax` VALUES ('94', '', '', '', '', '', '', '', '', '', '', '营业税', '20141106133736412');
INSERT INTO `jcs_tax` VALUES ('95', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141106133736412');
INSERT INTO `jcs_tax` VALUES ('96', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141106133736412');
INSERT INTO `jcs_tax` VALUES ('97', '', '', '', '', '', '', '', '', '', '', '增值税', '20141106133736412');
INSERT INTO `jcs_tax` VALUES ('98', '', '', '', '', '', '', '', '', '', '', '契税', '20141106133736412');
INSERT INTO `jcs_tax` VALUES ('99', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141106133736412');
INSERT INTO `jcs_tax` VALUES ('100', '', '', '', '', '', '', '', '', '', '', '房产税', '20141106133736412');
INSERT INTO `jcs_tax` VALUES ('101', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141106133736412');
INSERT INTO `jcs_tax` VALUES ('102', '', '', '', '', '', '', '', '', '', '', '印花税', '20141106133736412');
INSERT INTO `jcs_tax` VALUES ('139', '风格', '', '', '电饭锅', '', '', '', '', '', '', '营业税', '20141108205549332');
INSERT INTO `jcs_tax` VALUES ('140', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141108205549332');
INSERT INTO `jcs_tax` VALUES ('141', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141108205549332');
INSERT INTO `jcs_tax` VALUES ('142', '', '', '', '', '', '', '', '', '', '', '增值税', '20141108205549332');
INSERT INTO `jcs_tax` VALUES ('143', '', '', '', '', '', '', '', '', '', '', '契税', '20141108205549332');
INSERT INTO `jcs_tax` VALUES ('144', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141108205549332');
INSERT INTO `jcs_tax` VALUES ('145', '电饭锅', '', '', '地方规定', '', '', '', '', '', '', '房产税', '20141108205549332');
INSERT INTO `jcs_tax` VALUES ('146', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141108205549332');
INSERT INTO `jcs_tax` VALUES ('147', '电饭锅', '', '', '地方规定发', '', '', '', '', '', '', '印花税', '20141108205549332');
INSERT INTO `jcs_tax` VALUES ('154', '风格', '', '', '电饭锅', '', '', '', '', '', '', '营业税', '20141108205623117');
INSERT INTO `jcs_tax` VALUES ('155', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141108205623117');
INSERT INTO `jcs_tax` VALUES ('156', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141108205623117');
INSERT INTO `jcs_tax` VALUES ('157', '', '', '', '', '', '', '', '', '', '', '增值税', '20141108205623117');
INSERT INTO `jcs_tax` VALUES ('158', '', '', '', '', '', '', '', '', '', '', '契税', '20141108205623117');
INSERT INTO `jcs_tax` VALUES ('159', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141108205623117');
INSERT INTO `jcs_tax` VALUES ('160', '电饭锅', '', '', '地方规定', '', '', '', '', '', '', '房产税', '20141108205623117');
INSERT INTO `jcs_tax` VALUES ('161', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141108205623117');
INSERT INTO `jcs_tax` VALUES ('162', '电饭锅', '', '', '地方规定发', '', '', '', '', '', '', '印花税', '20141108205623117');
INSERT INTO `jcs_tax` VALUES ('184', '', '', '', '', '', '', '', '', '', '', '营业税', '20141111173042363');
INSERT INTO `jcs_tax` VALUES ('185', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141111173042363');
INSERT INTO `jcs_tax` VALUES ('186', '', '不识别', '', '', 'vrge', '', '', '', '', '', '土地增值税', '20141111173042363');
INSERT INTO `jcs_tax` VALUES ('187', '', '', '', '', '', '', '', '', '', '', '增值税', '20141111173042363');
INSERT INTO `jcs_tax` VALUES ('188', '', '', '', '', '', '', '', '', '', '', '契税', '20141111173042363');
INSERT INTO `jcs_tax` VALUES ('189', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141111173042363');
INSERT INTO `jcs_tax` VALUES ('190', '', '', '', '', '', '', '', '', '', '', '房产税', '20141111173042363');
INSERT INTO `jcs_tax` VALUES ('191', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141111173042363');
INSERT INTO `jcs_tax` VALUES ('192', '', '', '', '', '', '', '', '', '', '', '印花税', '20141111173042363');
INSERT INTO `jcs_tax` VALUES ('229', '', '', '', '', '', '', '', '', '', '', '营业税', '20141114205543167');
INSERT INTO `jcs_tax` VALUES ('230', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141114205543167');
INSERT INTO `jcs_tax` VALUES ('231', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141114205543167');
INSERT INTO `jcs_tax` VALUES ('232', '', '', '', '', '', '', '', '', '', '', '增值税', '20141114205543167');
INSERT INTO `jcs_tax` VALUES ('233', '', '', '', '', '', '', '', '', '', '', '契税', '20141114205543167');
INSERT INTO `jcs_tax` VALUES ('234', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141114205543167');
INSERT INTO `jcs_tax` VALUES ('235', '', '', '', '', '', '', '', '', '', '', '房产税', '20141114205543167');
INSERT INTO `jcs_tax` VALUES ('236', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141114205543167');
INSERT INTO `jcs_tax` VALUES ('237', '', '', '', '', '', '', '', '', '', '', '印花税', '20141114205543167');
INSERT INTO `jcs_tax` VALUES ('244', '', '', '', '', '', '', '', '', '2;22;', '', '营业税', '20141115185219361');
INSERT INTO `jcs_tax` VALUES ('245', '', '', '', '', '', '', '', '', '3;33;', '', '企业所得税', '20141115185219361');
INSERT INTO `jcs_tax` VALUES ('246', '', '', '', '', '', '', '', '', '4;44;', '', '土地增值税', '20141115185219361');
INSERT INTO `jcs_tax` VALUES ('247', '', '', '', '', '', '', '', '', '5;55;', '', '增值税', '20141115185219361');
INSERT INTO `jcs_tax` VALUES ('248', '', '', '', '', '', '', '', '', '6;66;', '', '契税', '20141115185219361');
INSERT INTO `jcs_tax` VALUES ('249', '', '', '', '', '', '', '', '', '7;77;', '', '个人所得税', '20141115185219361');
INSERT INTO `jcs_tax` VALUES ('250', '', '', '', '', '', '', '', '', '8;88;', '', '房产税', '20141115185219361');
INSERT INTO `jcs_tax` VALUES ('251', '', '', '', '', '', '', '', '', '9;99;', '', '土地使用税', '20141115185219361');
INSERT INTO `jcs_tax` VALUES ('252', '', '', '', '', '', '', '', '', 'x;xx;xxx;', '', '印花税', '20141115185219361');
INSERT INTO `jcs_tax` VALUES ('349', '', '', '', '', '', '', '', '', '', '', '营业税', '20141125224000866');
INSERT INTO `jcs_tax` VALUES ('350', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141125224000866');
INSERT INTO `jcs_tax` VALUES ('351', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141125224000866');
INSERT INTO `jcs_tax` VALUES ('352', '', '', '', '', '', '', '', '', '', '', '增值税', '20141125224000866');
INSERT INTO `jcs_tax` VALUES ('353', '', '', '', '', '', '', '', '', '', '', '契税', '20141125224000866');
INSERT INTO `jcs_tax` VALUES ('354', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141125224000866');
INSERT INTO `jcs_tax` VALUES ('355', '', '', '', '', '', '', '', '', '', '', '房产税', '20141125224000866');
INSERT INTO `jcs_tax` VALUES ('356', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141125224000866');
INSERT INTO `jcs_tax` VALUES ('357', '', '', '', '', '', '', '', '', '', '', '印花税', '20141125224000866');
INSERT INTO `jcs_tax` VALUES ('469', '', '', '', '', '', '', '', '', '', '', '营业税', '20141206121807335');
INSERT INTO `jcs_tax` VALUES ('470', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141206121807335');
INSERT INTO `jcs_tax` VALUES ('471', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141206121807335');
INSERT INTO `jcs_tax` VALUES ('472', '', '', '', '', '', '', '', '', '', '', '增值税', '20141206121807335');
INSERT INTO `jcs_tax` VALUES ('473', '', '', '', '', '', '', '', '', '', '', '契税', '20141206121807335');
INSERT INTO `jcs_tax` VALUES ('474', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141206121807335');
INSERT INTO `jcs_tax` VALUES ('475', '', '', '', '', '', '', '', '', '', '', '房产税', '20141206121807335');
INSERT INTO `jcs_tax` VALUES ('476', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141206121807335');
INSERT INTO `jcs_tax` VALUES ('477', '', '', '', '', '', '', '', '', '', '', '印花税', '20141206121807335');
INSERT INTO `jcs_tax` VALUES ('484', '', '', '', '', '', '', '', '', '', '', '营业税', '20141207164524441');
INSERT INTO `jcs_tax` VALUES ('485', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141207164524441');
INSERT INTO `jcs_tax` VALUES ('486', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141207164524441');
INSERT INTO `jcs_tax` VALUES ('487', '', '', '', '', '', '', '', '', '', '', '增值税', '20141207164524441');
INSERT INTO `jcs_tax` VALUES ('488', '', '', '', '', '', '', '', '', '', '', '契税', '20141207164524441');
INSERT INTO `jcs_tax` VALUES ('489', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141207164524441');
INSERT INTO `jcs_tax` VALUES ('490', '', '', '', '', '', '', '', '', '', '', '房产税', '20141207164524441');
INSERT INTO `jcs_tax` VALUES ('491', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141207164524441');
INSERT INTO `jcs_tax` VALUES ('492', '', '', '', '', '', '', '', '', '', '', '印花税', '20141207164524441');
INSERT INTO `jcs_tax` VALUES ('499', '', '', '', '', '', '', '', '', '', '23.txt;2334.txt;', '营业税', '20141207165323848');
INSERT INTO `jcs_tax` VALUES ('500', '', '', '', '', '', '', '', '', '', '', '企业所得税', '20141207165323848');
INSERT INTO `jcs_tax` VALUES ('501', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20141207165323848');
INSERT INTO `jcs_tax` VALUES ('502', '', '', '', '', '', '', '', '', '', '', '增值税', '20141207165323848');
INSERT INTO `jcs_tax` VALUES ('503', '', '', '', '', '', '', '', '', '', '', '契税', '20141207165323848');
INSERT INTO `jcs_tax` VALUES ('504', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20141207165323848');
INSERT INTO `jcs_tax` VALUES ('505', '', '', '', '', '', '', '', '', '', '', '房产税', '20141207165323848');
INSERT INTO `jcs_tax` VALUES ('506', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20141207165323848');
INSERT INTO `jcs_tax` VALUES ('507', '', '', '', '', '', '', '', '', '', '', '印花税', '20141207165323848');
INSERT INTO `jcs_tax` VALUES ('508', '', '', '', '', '', '', '', '', '', '', '营业税', '20150709212529825');
INSERT INTO `jcs_tax` VALUES ('509', '', '', '', '', '', '', '', '', '2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111.doc;222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.doc;', '企业所得税', '20150709212529825');
INSERT INTO `jcs_tax` VALUES ('510', '', '', '', '', '', '', '', '', '', '', '土地增值税', '20150709212529825');
INSERT INTO `jcs_tax` VALUES ('511', '', '', '', '', '', '', '', '', '', '', '增值税', '20150709212529825');
INSERT INTO `jcs_tax` VALUES ('512', '', '', '', '', '', '', '', '', '', '', '契税', '20150709212529825');
INSERT INTO `jcs_tax` VALUES ('513', '', '', '', '', '', '', '', '', '', '', '个人所得税', '20150709212529825');
INSERT INTO `jcs_tax` VALUES ('514', '', '', '', '', '', '', '', '', '', '', '房产税', '20150709212529825');
INSERT INTO `jcs_tax` VALUES ('515', '', '', '', '', '', '', '', '', '', '', '土地使用税', '20150709212529825');
INSERT INTO `jcs_tax` VALUES ('516', '', '', '', '', '', '', '', '', '', '', '印花税', '20150709212529825');

-- ----------------------------
-- Table structure for `jiliantable`
-- ----------------------------
DROP TABLE IF EXISTS `jiliantable`;
CREATE TABLE `jiliantable` (
  `id` int(11) NOT NULL auto_increment,
  `yijinode` varchar(50) default NULL COMMENT '一级节点',
  `erjinode` varchar(100) default NULL COMMENT '二级节点',
  `type` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiliantable
-- ----------------------------
INSERT INTO `jiliantable` VALUES ('14', '公司设立', '企业设计，股权结构，注册资金，机构设置与人员构成，注册地，收购股权，合并，分立，合作建房，对比', '合同控税,决策树,单税种');
INSERT INTO `jiliantable` VALUES ('17', '土地取得', '招、拍、挂，购买股权，直接购买在建工程，接受土地投资，合作开发，土地置换，联合摘牌，特殊开发项目，土地收回，土地一级开发，对比', '合同控税,决策树,单税种');
INSERT INTO `jiliantable` VALUES ('18', '规划立项', '立项，开发产品，配套设施，设计，对比', '合同控税,决策树,单税种');
INSERT INTO `jiliantable` VALUES ('20', '开发建设', '甲供材，装修，公共配套设施，园林绿化，借款费用，营销设施费用，对比', '合同控税,决策树,单税种');
INSERT INTO `jiliantable` VALUES ('21', '项目融资', '借款时点，借款对象，银行贷款，信托，资金拆借，无偿使用，扣除票据，其他融资方式', '合同控税,单税种');
INSERT INTO `jiliantable` VALUES ('22', '项目销售', '销售方式，销售时点，普通销售，特殊销售，特殊产品销售，视同销售，自留物业，广告宣传', '合同控税,单税种');
INSERT INTO `jiliantable` VALUES ('23', '日常管控', '票据，对齐', '合同控税,单税种');
INSERT INTO `jiliantable` VALUES ('24', '项目清算', '项目决算，企业所得税清算，土地增值税清算，资金出境', '合同控税,单税种');
INSERT INTO `jiliantable` VALUES ('25', '利润分配', '分配时点，分配方式，分配主体，再投资，境内境外', '合同控税,单税种');
INSERT INTO `jiliantable` VALUES ('26', '企业退出', '退出时点，清算，增资扩股，股权转让，企业重组', '合同控税,单税种');

-- ----------------------------
-- Table structure for `landtax`
-- ----------------------------
DROP TABLE IF EXISTS `landtax`;
CREATE TABLE `landtax` (
  `id` int(11) NOT NULL auto_increment,
  `firstnode` varchar(255) default NULL COMMENT '一级结点',
  `secondnode` varchar(255) default NULL COMMENT '二级结点',
  `title` varchar(255) default NULL COMMENT '标题',
  `planpoint` text COMMENT '筹划点',
  `condition` text COMMENT '条件',
  `casetitle` text COMMENT '案例标题',
  `misunderstanding` text COMMENT '误区',
  `scheme` text COMMENT '风险应对方案',
  `ruletw` varchar(255) default NULL COMMENT '法规条文',
  `companytype` varchar(255) default NULL COMMENT '公司类型',
  `area` varchar(255) default NULL COMMENT '适用地区',
  `keyword` varchar(255) default NULL COMMENT '关键词',
  `taxtype` varchar(255) default NULL COMMENT '税种',
  `note` text COMMENT '备注',
  `gonghao` varchar(255) default NULL,
  `companyName` varchar(255) default NULL,
  `usertype` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of landtax
-- ----------------------------
INSERT INTO `landtax` VALUES ('68', '土地取得', '招、拍、挂', '土地出让金返还', '返还到关联企业。', '存在关联企业；政府同意。', '土地出让金返还;', '直接以土地出让金返还的名义返还到拿地主体。土地增值税清算时将导致直接抵减土地成本。', '不要以土地出让金名义返还，相关返还文件不要体现土地出让金返还字样，同时尽量不要返还到同一主体，应返还到关联企业或其他企业。\n账务记录更不要体现返还字样，应记为营业外收入。', '1', '内资', '全国', '土地出让金返还', '土地增值税', '', '001', '微软', 'superadmin');
INSERT INTO `landtax` VALUES ('71', '土地取得', '接受土地投资', '接受的土地出资如何扣除在土地增值税前扣除？', '可以约定的投资价格或评估价格作为土地增值税前扣除成本。', '需要与其他企业合资经营或接受土地投资后能够回购股权。', '接受土地出资;', '以土地出资时，必须先将土地过户到投资入股的企业，否则不能视为以土地入股。', '办理土地出资前先办理土地过户手续。', '财税[2006]21号;', '内资', '全国', '土地投资', '土地增值税', '', '001', '微软', 'superadmin');
INSERT INTO `landtax` VALUES ('72', '公司设立', '企业设计', '1', '1', '1', '1;1;1;222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222;33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333;', '1', '1', '1.DOC;2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222.doc;33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333.doc;', '外资', '全国', '1', '土地增值税', '', '001', '微软', 'superadmin');
INSERT INTO `landtax` VALUES ('73', '公司设立', '企业设计', '1', '1', '1', '1;', '1', '1', '1.doc;', '外资', '北京', '1', null, '', '001', '微软', 'superadmin');
INSERT INTO `landtax` VALUES ('74', '公司设立', '企业设计', '111', '1111', '1111', '111;111;', '111', '111', '11;11.gif;', '外资', '北京', '111', '企业所得税', '111', '001', '微软', 'superadmin');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `acountnumber` varchar(255) default NULL COMMENT '账号（工号）',
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `usertype` varchar(255) default NULL,
  `companyname` varchar(255) default NULL,
  `companytype` varchar(255) default NULL,
  `position` varchar(255) default NULL COMMENT '职位\r\n',
  `createtime` varchar(255) default NULL COMMENT '创建时间',
  `limitnumber` int(11) default NULL COMMENT '开户员工数量控制',
  `nowNum` int(11) default '0' COMMENT '当前已经创建的员工数',
  `createby` varchar(255) default NULL COMMENT '由谁创建的账号',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('15', '001', '张三', 'af37fc44192d1cf53e6c45d44cc532dc', 'superadmin', '微软', '外资', 'CIO', '2014-10-22 00:04:21', null, '0', null);
INSERT INTO `user` VALUES ('91', 'Wp', 'Wp', '123', 'admin', 'Wp', '外资', null, '2014-12-15 08:08:37', '1', '1', '001');
INSERT INTO `user` VALUES ('92', 'Wp001', 'A', '123', 'worker', 'Wp', '外资', 'A', '2014-12-15 08:09:43', '0', '0', 'Wp');
INSERT INTO `user` VALUES ('93', '002', '王五', '123', 'admin', 'Microsoft', '外资', 'CTO', null, null, '0', null);
INSERT INTO `user` VALUES ('94', '李江瑞', 'lijiangrui', '1055ceb2267b78fd69cb2179a915fd54', 'admin', '鹿邑房地产公司', '内资', null, '2015-08-07 11:13:03', '1', '0', '001');
INSERT INTO `user` VALUES ('95', '李江瑞1', 'lijiangrui', 'af37fc44192d1cf53e6c45d44cc532dc', 'admin', '鹿邑房地产公司', '内资', null, '2015-08-07 11:34:02', '1', '0', '001');
