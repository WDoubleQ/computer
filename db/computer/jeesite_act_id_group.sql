create table act_id_group
(
    ID_   varchar(64)  not null
        primary key,
    REV_  int          null,
    NAME_ varchar(255) null,
    TYPE_ varchar(255) null
)
    collate = utf8_bin;

