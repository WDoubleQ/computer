create table gen_template
(
    id          varchar(64)      not null comment '编号'
        primary key,
    name        varchar(200)     null comment '名称',
    category    varchar(2000)    null comment '分类',
    file_path   varchar(500)     null comment '生成文件路径',
    file_name   varchar(200)     null comment '生成文件名',
    content     text             null comment '内容',
    create_by   varchar(64)      null comment '创建者',
    create_date datetime         null comment '创建时间',
    update_by   varchar(64)      null comment '更新者',
    update_date datetime         null comment '更新时间',
    remarks     varchar(255)     null comment '备注信息',
    del_flag    char default '0' not null comment '删除标记（0：正常；1：删除）'
)
    comment '代码模板表' charset = utf8;

create index gen_template_del_falg
    on gen_template (del_flag);

