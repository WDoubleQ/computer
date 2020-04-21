create table cms_article_data
(
    id            varchar(64)  not null comment '编号'
        primary key,
    content       text         null comment '文章内容',
    copyfrom      varchar(255) null comment '文章来源',
    relation      varchar(255) null comment '相关文章',
    allow_comment char         null comment '是否允许评论'
)
    comment '文章详表' charset = utf8;

INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('1', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('10', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('11', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('12', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('13', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('14', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('15', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('16', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('17', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('18', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('19', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('2', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('20', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('21', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('22', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('23', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('24', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('25', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('26', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('27', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('28', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('29', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('3', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('30', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('31', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('32', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('33', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('34', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('35', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('36', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('37', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('38', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('39', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('4', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('40', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('41', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('42', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('43', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('44', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('45', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('46', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('47', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('48', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('49', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('5', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('50', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('51', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('52', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('53', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('6', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('7', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('8', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('898bd05bcfc342c5b24f404ed350981a', '<p>
	5656756757656</p>
<p>
	<img alt="" src="/jeesite/userfiles/1/images/cms/article/2020/04/4560ed28161d7114.jpg" style="width: 350px; height: 350px;" /></p>', '', '', '1');
INSERT INTO jeesite.cms_article_data (id, content, copyfrom, relation, allow_comment) VALUES ('9', '文章内容内容内容内容', '来源', '1,2,3', '1');