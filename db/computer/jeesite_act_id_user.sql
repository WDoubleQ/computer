create table act_id_user
(
    ID_         varchar(64)  not null
        primary key,
    REV_        int          null,
    FIRST_      varchar(255) null,
    LAST_       varchar(255) null,
    EMAIL_      varchar(255) null,
    PWD_        varchar(255) null,
    PICTURE_ID_ varchar(64)  null
)
    collate = utf8_bin;

