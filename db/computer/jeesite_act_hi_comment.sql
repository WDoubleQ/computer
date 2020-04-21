create table act_hi_comment
(
    ID_           varchar(64)   not null
        primary key,
    TYPE_         varchar(255)  null,
    TIME_         datetime(3)   not null,
    USER_ID_      varchar(255)  null,
    TASK_ID_      varchar(64)   null,
    PROC_INST_ID_ varchar(64)   null,
    ACTION_       varchar(255)  null,
    MESSAGE_      varchar(4000) null,
    FULL_MSG_     longblob      null
)
    collate = utf8_bin;

