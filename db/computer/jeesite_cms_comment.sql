create table cms_comment
(
    id            varchar(64)      not null comment '编号'
        primary key,
    category_id   varchar(64)      not null comment '栏目编号',
    content_id    varchar(64)      not null comment '栏目内容的编号',
    title         varchar(255)     null comment '栏目内容的标题',
    content       varchar(255)     null comment '评论内容',
    name          varchar(100)     null comment '评论姓名',
    ip            varchar(100)     null comment '评论IP',
    create_date   datetime         not null comment '评论时间',
    audit_user_id varchar(64)      null comment '审核人',
    audit_date    datetime         null comment '审核时间',
    del_flag      char default '0' not null comment '删除标记'
)
    comment '评论表' charset = utf8;

create index cms_comment_category_id
    on cms_comment (category_id);

create index cms_comment_content_id
    on cms_comment (content_id);

create index cms_comment_status
    on cms_comment (del_flag);

