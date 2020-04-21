create table oa_notify
(
    id          varchar(64)      not null comment '编号'
        primary key,
    type        char             null comment '类型',
    title       varchar(200)     null comment '标题',
    content     varchar(2000)    null comment '内容',
    files       varchar(2000)    null comment '附件',
    status      char             null comment '状态',
    create_by   varchar(64)      not null comment '创建者',
    create_date datetime         not null comment '创建时间',
    update_by   varchar(64)      not null comment '更新者',
    update_date datetime         not null comment '更新时间',
    remarks     varchar(255)     null comment '备注信息',
    del_flag    char default '0' not null comment '删除标记'
)
    comment '通知通告' charset = utf8;

create index oa_notify_del_flag
    on oa_notify (del_flag);

