create table cms_link
(
    id          varchar(64)      not null comment '编号'
        primary key,
    category_id varchar(64)      not null comment '栏目编号',
    title       varchar(255)     not null comment '链接名称',
    color       varchar(50)      null comment '标题颜色',
    image       varchar(255)     null comment '链接图片',
    href        varchar(255)     null comment '链接地址',
    weight      int  default 0   null comment '权重，越大越靠前',
    weight_date datetime         null comment '权重期限',
    create_by   varchar(64)      null comment '创建者',
    create_date datetime         null comment '创建时间',
    update_by   varchar(64)      null comment '更新者',
    update_date datetime         null comment '更新时间',
    remarks     varchar(255)     null comment '备注信息',
    del_flag    char default '0' not null comment '删除标记'
)
    comment '友情链接' charset = utf8;

create index cms_link_category_id
    on cms_link (category_id);

create index cms_link_create_by
    on cms_link (create_by);

create index cms_link_del_flag
    on cms_link (del_flag);

create index cms_link_title
    on cms_link (title);

create index cms_link_update_date
    on cms_link (update_date);

create index cms_link_weight
    on cms_link (weight);

INSERT INTO jeesite.cms_link (id, category_id, title, color, image, href, weight, weight_date, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('1', '19', 'JeeSite', null, null, 'http://thinkgem.github.com/jeesite', 0, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.cms_link (id, category_id, title, color, image, href, weight, weight_date, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('10', '22', '58同城', null, null, 'http://www.58.com/', 0, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.cms_link (id, category_id, title, color, image, href, weight, weight_date, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('11', '23', '视频大全', null, null, 'http://v.360.cn/', 0, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.cms_link (id, category_id, title, color, image, href, weight, weight_date, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('12', '23', '凤凰网', null, null, 'http://www.ifeng.com/', 0, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.cms_link (id, category_id, title, color, image, href, weight, weight_date, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('2', '19', 'ThinkGem', null, null, 'http://thinkgem.iteye.com/', 0, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.cms_link (id, category_id, title, color, image, href, weight, weight_date, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('3', '19', '百度一下', null, null, 'http://www.baidu.com', 0, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.cms_link (id, category_id, title, color, image, href, weight, weight_date, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('4', '19', '谷歌搜索', null, null, 'http://www.google.com', 0, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.cms_link (id, category_id, title, color, image, href, weight, weight_date, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('5', '20', '新浪网', null, null, 'http://www.sina.com.cn', 0, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.cms_link (id, category_id, title, color, image, href, weight, weight_date, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('6', '20', '腾讯网', null, null, 'http://www.qq.com/', 0, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.cms_link (id, category_id, title, color, image, href, weight, weight_date, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('7', '21', '淘宝网', null, null, 'http://www.taobao.com/', 0, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.cms_link (id, category_id, title, color, image, href, weight, weight_date, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('8', '21', '新华网', null, null, 'http://www.xinhuanet.com/', 0, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.cms_link (id, category_id, title, color, image, href, weight, weight_date, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('9', '22', '赶集网', null, null, 'http://www.ganji.com/', 0, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');