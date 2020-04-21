create table oa_leave
(
    id                  varchar(64)      not null comment '编号'
        primary key,
    process_instance_id varchar(64)      null comment '流程实例编号',
    start_time          datetime         null comment '开始时间',
    end_time            datetime         null comment '结束时间',
    leave_type          varchar(20)      null comment '请假类型',
    reason              varchar(255)     null comment '请假理由',
    apply_time          datetime         null comment '申请时间',
    reality_start_time  datetime         null comment '实际开始时间',
    reality_end_time    datetime         null comment '实际结束时间',
    create_by           varchar(64)      not null comment '创建者',
    create_date         datetime         not null comment '创建时间',
    update_by           varchar(64)      not null comment '更新者',
    update_date         datetime         not null comment '更新时间',
    remarks             varchar(255)     null comment '备注信息',
    del_flag            char default '0' not null comment '删除标记'
)
    comment '请假流程表' charset = utf8;

create index oa_leave_create_by
    on oa_leave (create_by);

create index oa_leave_del_flag
    on oa_leave (del_flag);

create index oa_leave_process_instance_id
    on oa_leave (process_instance_id);

