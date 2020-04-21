create table sys_user_role
(
    user_id varchar(64) not null comment '用户编号',
    role_id varchar(64) not null comment '角色编号',
    primary key (user_id, role_id)
)
    comment '用户-角色' charset = utf8;

INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('1', '1');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('1', '2');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('10', '2');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('11', '3');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('12', '4');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('13', '5');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('14', '6');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('2', '1');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('3', '2');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('4', '3');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('5', '4');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('6', '5');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('7', '2');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('7', '7');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('8', '2');
INSERT INTO jeesite.sys_user_role (user_id, role_id) VALUES ('9', '1');