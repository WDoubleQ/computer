create table sys_role_office
(
    role_id   varchar(64) not null comment '角色编号',
    office_id varchar(64) not null comment '机构编号',
    primary key (role_id, office_id)
)
    comment '角色-机构' charset = utf8;

INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '10');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '11');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '12');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '13');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '14');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '15');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '16');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '17');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '18');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '19');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '20');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '21');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '22');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '23');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '24');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '25');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '26');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '7');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '8');
INSERT INTO jeesite.sys_role_office (role_id, office_id) VALUES ('7', '9');