create table test_tree
(
    id          varchar(64)      not null comment '编号'
        primary key,
    parent_id   varchar(64)      not null comment '父级编号',
    parent_ids  varchar(2000)    not null comment '所有父级编号',
    name        varchar(100)     not null comment '名称',
    sort        decimal          not null comment '排序',
    create_by   varchar(64)      not null comment '创建者',
    create_date datetime         not null comment '创建时间',
    update_by   varchar(64)      not null comment '更新者',
    update_date datetime         not null comment '更新时间',
    remarks     varchar(255)     null comment '备注信息',
    del_flag    char default '0' not null comment '删除标记'
)
    comment '树结构表' charset = utf8;

create index test_data_parent_id
    on test_tree (parent_id);

create index test_tree_del_flag
    on test_tree (del_flag);

