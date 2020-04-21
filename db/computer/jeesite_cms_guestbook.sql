create table cms_guestbook
(
    id          varchar(64)      not null comment '编号'
        primary key,
    type        char             not null comment '留言分类',
    content     varchar(255)     not null comment '留言内容',
    name        varchar(100)     not null comment '姓名',
    email       varchar(100)     not null comment '邮箱',
    phone       varchar(100)     not null comment '电话',
    workunit    varchar(100)     not null comment '单位',
    ip          varchar(100)     not null comment 'IP',
    create_date datetime         not null comment '留言时间',
    re_user_id  varchar(64)      null comment '回复人',
    re_date     datetime         null comment '回复时间',
    re_content  varchar(100)     null comment '回复内容',
    del_flag    char default '0' not null comment '删除标记'
)
    comment '留言板' charset = utf8;

create index cms_guestbook_del_flag
    on cms_guestbook (del_flag);

