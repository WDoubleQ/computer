create table act_re_deployment
(
    ID_          varchar(64)             not null
        primary key,
    NAME_        varchar(255)            null,
    CATEGORY_    varchar(255)            null,
    TENANT_ID_   varchar(255) default '' null,
    DEPLOY_TIME_ timestamp(3)            null
)
    collate = utf8_bin;

INSERT INTO jeesite.act_re_deployment (ID_, NAME_, CATEGORY_, TENANT_ID_, DEPLOY_TIME_) VALUES ('809b52df107d48c98625937c3f17b1e9', 'SpringAutoDeployment', null, '', '2017-11-14 15:12:37.285000000');