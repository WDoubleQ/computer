create table oa_test_audit
(
    id             varchar(64)      not null comment '编号'
        primary key,
    PROC_INS_ID    varchar(64)      null comment '流程实例ID',
    USER_ID        varchar(64)      null comment '变动用户',
    OFFICE_ID      varchar(64)      null comment '归属部门',
    POST           varchar(255)     null comment '岗位',
    AGE            char             null comment '性别',
    EDU            varchar(255)     null comment '学历',
    CONTENT        varchar(255)     null comment '调整原因',
    OLDA           varchar(255)     null comment '现行标准 薪酬档级',
    OLDB           varchar(255)     null comment '现行标准 月工资额',
    OLDC           varchar(255)     null comment '现行标准 年薪总额',
    NEWA           varchar(255)     null comment '调整后标准 薪酬档级',
    NEWB           varchar(255)     null comment '调整后标准 月工资额',
    NEWC           varchar(255)     null comment '调整后标准 年薪总额',
    ADD_NUM        varchar(255)     null comment '月增资',
    EXE_DATE       varchar(255)     null comment '执行时间',
    HR_TEXT        varchar(255)     null comment '人力资源部门意见',
    LEAD_TEXT      varchar(255)     null comment '分管领导意见',
    MAIN_LEAD_TEXT varchar(255)     null comment '集团主要领导意见',
    create_by      varchar(64)      not null comment '创建者',
    create_date    datetime         not null comment '创建时间',
    update_by      varchar(64)      not null comment '更新者',
    update_date    datetime         not null comment '更新时间',
    remarks        varchar(255)     null comment '备注信息',
    del_flag       char default '0' not null comment '删除标记'
)
    comment '审批流程测试表' charset = utf8;

create index OA_TEST_AUDIT_del_flag
    on oa_test_audit (del_flag);

