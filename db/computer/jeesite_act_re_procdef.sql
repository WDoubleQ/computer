create table act_re_procdef
(
    ID_                     varchar(64)             not null
        primary key,
    REV_                    int                     null,
    CATEGORY_               varchar(255)            null,
    NAME_                   varchar(255)            null,
    KEY_                    varchar(255)            not null,
    VERSION_                int                     not null,
    DEPLOYMENT_ID_          varchar(64)             null,
    RESOURCE_NAME_          varchar(4000)           null,
    DGRM_RESOURCE_NAME_     varchar(4000)           null,
    DESCRIPTION_            varchar(4000)           null,
    HAS_START_FORM_KEY_     tinyint                 null,
    HAS_GRAPHICAL_NOTATION_ tinyint                 null,
    SUSPENSION_STATE_       int                     null,
    TENANT_ID_              varchar(255) default '' null,
    constraint ACT_UNIQ_PROCDEF
        unique (KEY_, VERSION_, TENANT_ID_)
)
    collate = utf8_bin;

INSERT INTO jeesite.act_re_procdef (ID_, REV_, CATEGORY_, NAME_, KEY_, VERSION_, DEPLOYMENT_ID_, RESOURCE_NAME_, DGRM_RESOURCE_NAME_, DESCRIPTION_, HAS_START_FORM_KEY_, HAS_GRAPHICAL_NOTATION_, SUSPENSION_STATE_, TENANT_ID_) VALUES ('test_audit:1:a0b53ecd268c42b2ba57bca3f5d1078c', 1, 'http://www.activiti.org/test', '流程审批测试流程', 'test_audit', 1, '809b52df107d48c98625937c3f17b1e9', 'test_audit.bpmn20.xml', 'test_audit.png', null, 1, 1, 1, '');