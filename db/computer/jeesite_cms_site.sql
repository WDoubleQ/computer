create table cms_site
(
    id                varchar(64)                    not null comment '编号'
        primary key,
    name              varchar(100)                   not null comment '站点名称',
    title             varchar(100)                   not null comment '站点标题',
    logo              varchar(255)                   null comment '站点Logo',
    domain            varchar(255)                   null comment '站点域名',
    description       varchar(255)                   null comment '描述',
    keywords          varchar(255)                   null comment '关键字',
    theme             varchar(255) default 'default' null comment '主题',
    copyright         text                           null comment '版权信息',
    custom_index_view varchar(255)                   null comment '自定义站点首页视图',
    create_by         varchar(64)                    null comment '创建者',
    create_date       datetime                       null comment '创建时间',
    update_by         varchar(64)                    null comment '更新者',
    update_date       datetime                       null comment '更新时间',
    remarks           varchar(255)                   null comment '备注信息',
    del_flag          char         default '0'       not null comment '删除标记'
)
    comment '站点表' charset = utf8;

create index cms_site_del_flag
    on cms_site (del_flag);

INSERT INTO jeesite.cms_site (id, name, title, logo, domain, description, keywords, theme, copyright, custom_index_view, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('1', '默认站点', 'JeeSite Web', null, null, 'JeeSite', 'JeeSite', 'basic', 'Copyright &copy; 2012-2013 <a href=''http://thinkgem.iteye.com'' target=''_blank''>ThinkGem</a> - Powered By <a href=''https://github.com/thinkgem/jeesite'' target=''_blank''>JeeSite</a> V1.0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.cms_site (id, name, title, logo, domain, description, keywords, theme, copyright, custom_index_view, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('2', '子站点测试', 'JeeSite Subsite', null, null, 'JeeSite subsite', 'JeeSite subsite', 'basic', 'Copyright &copy; 2012-2013 <a href=''http://thinkgem.iteye.com'' target=''_blank''>ThinkGem</a> - Powered By <a href=''https://github.com/thinkgem/jeesite'' target=''_blank''>JeeSite</a> V1.0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');