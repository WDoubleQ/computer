create table sys_user
(
    id          varchar(64)      not null comment '编号'
        primary key,
    company_id  varchar(64)      not null comment '归属公司',
    office_id   varchar(64)      not null comment '归属部门',
    login_name  varchar(100)     not null comment '登录名',
    password    varchar(100)     not null comment '密码',
    no          varchar(100)     null comment '工号',
    name        varchar(100)     not null comment '姓名',
    email       varchar(200)     null comment '邮箱',
    phone       varchar(200)     null comment '电话',
    mobile      varchar(200)     null comment '手机',
    user_type   char             null comment '用户类型',
    photo       varchar(1000)    null comment '用户头像',
    login_ip    varchar(100)     null comment '最后登陆IP',
    login_date  datetime         null comment '最后登陆时间',
    login_flag  varchar(64)      null comment '是否可登录',
    create_by   varchar(64)      not null comment '创建者',
    create_date datetime         not null comment '创建时间',
    update_by   varchar(64)      not null comment '更新者',
    update_date datetime         not null comment '更新时间',
    remarks     varchar(255)     null comment '备注信息',
    del_flag    char default '0' not null comment '删除标记'
)
    comment '用户表' charset = utf8;

create index sys_user_company_id
    on sys_user (company_id);

create index sys_user_del_flag
    on sys_user (del_flag);

create index sys_user_login_name
    on sys_user (login_name);

create index sys_user_office_id
    on sys_user (office_id);

create index sys_user_update_date
    on sys_user (update_date);

INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('1', '1', '3', 'thinkgem', 'a350ed0f0bc27af2b786dde92a73f3195ea5fca114b1e3ac91456e9c', '0001', '系统管理员', 'thinkgem@163.com', '8675', '8675', '', '/jeesite/userfiles/1/images/photo/2020/04/4560ed28161d7114.jpg', '0:0:0:0:0:0:0:1', '2020-04-21 10:46:21', '1', '1', '2013-05-27 08:00:00', '1', '2020-04-21 10:46:42', '最高管理员', '0');
INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('10', '7', '11', 'jn_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0010', '济南技术部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('11', '12', '13', 'lc_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0011', '济南历城领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('12', '12', '18', 'lx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0012', '济南历下领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('13', '22', '23', 'gx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0013', '济南高新领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('2', '1', '2', 'sd_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0002', '管理员', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('3', '1', '3', 'sd_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0003', '综合部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('4', '1', '4', 'sd_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0004', '市场部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('5', '1', '5', 'sd_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0005', '技术部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('6', '1', '6', 'sd_yfb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0006', '研发部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('7', '7', '8', 'jn_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0007', '济南领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('8', '7', '9', 'jn_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0008', '济南综合部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO jeesite.sys_user (id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, photo, login_ip, login_date, login_flag, create_by, create_date, update_by, update_date, remarks, del_flag) VALUES ('9', '7', '10', 'jn_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0009', '济南市场部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');