create table oa_notify_record
(
    id           varchar(64)      not null comment '编号'
        primary key,
    oa_notify_id varchar(64)      null comment '通知通告ID',
    user_id      varchar(64)      null comment '接受人',
    read_flag    char default '0' null comment '阅读标记',
    read_date    date             null comment '阅读时间'
)
    comment '通知通告发送记录' charset = utf8;

create index oa_notify_record_notify_id
    on oa_notify_record (oa_notify_id);

create index oa_notify_record_read_flag
    on oa_notify_record (read_flag);

create index oa_notify_record_user_id
    on oa_notify_record (user_id);

