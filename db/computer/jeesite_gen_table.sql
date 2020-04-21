create table gen_table
(
    id              varchar(64)      not null comment '编号'
        primary key,
    name            varchar(200)     null comment '名称',
    comments        varchar(500)     null comment '描述',
    class_name      varchar(100)     null comment '实体类名称',
    parent_table    varchar(200)     null comment '关联父表',
    parent_table_fk varchar(100)     null comment '关联父表外键',
    create_by       varchar(64)      null comment '创建者',
    create_date     datetime         null comment '创建时间',
    update_by       varchar(64)      null comment '更新者',
    update_date     datetime         null comment '更新时间',
    remarks         varchar(255)     null comment '备注信息',
    del_flag        char default '0' not null comment '删除标记（0：正常；1：删除）'
)
    comment '业务表' charset = utf8;

create index gen_table_del_flag
    on gen_table (del_flag);

create index gen_table_name
    on gen_table (name);

INSERT INTO jeesite.gen_table (id, name, comments, class_name, parent_table, parent_table_fk, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('1c812844a7a44990bfa828a3dbcb8e79', 'com_info', '配置信息', 'Computer', '', '', '1', '2020-04-20 23:04:15', '1', '2020-04-21 09:34:02', '', '0');
INSERT INTO jeesite.gen_table (id, name, comments, class_name, parent_table, parent_table_fk, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('43d6d5acffa14c258340ce6765e46c6f', 'test_data_main', '业务数据表', 'TestDataMain', null, null, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO jeesite.gen_table (id, name, comments, class_name, parent_table, parent_table_fk, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('6e05c389f3c6415ea34e55e9dfb28934', 'test_data_child', '业务数据子表', 'TestDataChild', 'test_data_main', 'test_data_main_id', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO jeesite.gen_table (id, name, comments, class_name, parent_table, parent_table_fk, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('aef6f1fc948f4c9ab1c1b780bc471cc2', 'test_data', '业务数据表', 'TestData', null, null, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO jeesite.gen_table (id, name, comments, class_name, parent_table, parent_table_fk, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('f6e4dafaa72f4c509636484715f33a96', 'test_tree', '树结构表', 'TestTree', null, null, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');