create table gen_scheme
(
    id                   varchar(64)      not null comment '编号'
        primary key,
    name                 varchar(200)     null comment '名称',
    category             varchar(2000)    null comment '分类',
    package_name         varchar(500)     null comment '生成包路径',
    module_name          varchar(30)      null comment '生成模块名',
    sub_module_name      varchar(30)      null comment '生成子模块名',
    function_name        varchar(500)     null comment '生成功能名',
    function_name_simple varchar(100)     null comment '生成功能名（简写）',
    function_author      varchar(100)     null comment '生成功能作者',
    gen_table_id         varchar(200)     null comment '生成表编号',
    create_by            varchar(64)      null comment '创建者',
    create_date          datetime         null comment '创建时间',
    update_by            varchar(64)      null comment '更新者',
    update_date          datetime         null comment '更新时间',
    remarks              varchar(255)     null comment '备注信息',
    del_flag             char default '0' not null comment '删除标记（0：正常；1：删除）'
)
    comment '生成方案' charset = utf8;

create index gen_scheme_del_flag
    on gen_scheme (del_flag);

INSERT INTO jeesite.gen_scheme (id, name, category, package_name, module_name, sub_module_name, function_name, function_name_simple, function_author, gen_table_id, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('35a13dc260284a728a270db3f382664b', '树结构', 'treeTable', 'com.thinkgem.jeesite.modules', 'test', null, '树结构生成', '树结构', 'ThinkGem', 'f6e4dafaa72f4c509636484715f33a96', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO jeesite.gen_scheme (id, name, category, package_name, module_name, sub_module_name, function_name, function_name_simple, function_author, gen_table_id, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('9c9de9db6da743bb899036c6546061ac', '单表', 'curd', 'com.thinkgem.jeesite.modules', 'test', null, '单表生成', '单表', 'ThinkGem', 'aef6f1fc948f4c9ab1c1b780bc471cc2', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO jeesite.gen_scheme (id, name, category, package_name, module_name, sub_module_name, function_name, function_name_simple, function_author, gen_table_id, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('ac819a01ce7c43f8abf2e1b27b4c8d4a', '购机指导', 'curd', 'com.thinkgem.jeesite.modules', 'computer', '', '购机指导', '购机指导', 'lijin', '1c812844a7a44990bfa828a3dbcb8e79', '1', '2020-04-20 23:10:05', '1', '2020-04-21 09:34:14', '', '0');
INSERT INTO jeesite.gen_scheme (id, name, category, package_name, module_name, sub_module_name, function_name, function_name_simple, function_author, gen_table_id, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('e6d905fd236b46d1af581dd32bdfb3b0', '主子表', 'curd_many', 'com.thinkgem.jeesite.modules', 'test', null, '主子表生成', '主子表', 'ThinkGem', '43d6d5acffa14c258340ce6765e46c6f', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');