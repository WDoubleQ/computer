create table sys_area
(
    id          varchar(64)      not null comment '编号'
        primary key,
    parent_id   varchar(64)      not null comment '父级编号',
    parent_ids  varchar(2000)    not null comment '所有父级编号',
    name        varchar(100)     not null comment '名称',
    sort        decimal          not null comment '排序',
    code        varchar(100)     null comment '区域编码',
    type        char             null comment '区域类型',
    create_by   varchar(64)      not null comment '创建者',
    create_date datetime         not null comment '创建时间',
    update_by   varchar(64)      not null comment '更新者',
    update_date datetime         not null comment '更新时间',
    remarks     varchar(255)     null comment '备注信息',
    del_flag    char default '0' not null comment '删除标记'
)
    comment '区域表' charset = utf8;

create index sys_area_del_flag
    on sys_area (del_flag);

create index sys_area_parent_id
    on sys_area (parent_id);

INSERT INTO jeesite.sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('1', '0', '0,', '中国', 10, '100000', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO jeesite.sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('2', '1', '0,1,', '安徽省', 20, '110000', '2', '1', '2013-05-27 08:00:00', '1', '2020-04-20 14:04:12', '', '0');
INSERT INTO jeesite.sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('3', '2', '0,1,2,', '济南市', 30, '110101', '3', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('4', '3', '0,1,2,3,', '历城区', 40, '110102', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('5', '3', '0,1,2,3,', '历下区', 50, '110104', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_area (id, parent_id, parent_ids, name, sort, code, type, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('6', '3', '0,1,2,3,', '高新区', 60, '110105', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');