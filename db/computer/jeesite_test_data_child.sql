create table test_data_child
(
    id                varchar(64)      not null comment '编号'
        primary key,
    test_data_main_id varchar(64)      null comment '业务主表ID',
    name              varchar(100)     null comment '名称',
    create_by         varchar(64)      not null comment '创建者',
    create_date       datetime         not null comment '创建时间',
    update_by         varchar(64)      not null comment '更新者',
    update_date       datetime         not null comment '更新时间',
    remarks           varchar(255)     null comment '备注信息',
    del_flag          char default '0' not null comment '删除标记'
)
    comment '业务数据子表' charset = utf8;

create index test_data_child_del_flag
    on test_data_child (del_flag);

