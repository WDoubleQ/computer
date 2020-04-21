create table act_ge_property
(
    NAME_  varchar(64)  not null
        primary key,
    VALUE_ varchar(300) null,
    REV_   int          null
)
    collate = utf8_bin;

INSERT INTO jeesite.act_ge_property (NAME_, VALUE_, REV_) VALUES ('next.dbid', '1', 1);
INSERT INTO jeesite.act_ge_property (NAME_, VALUE_, REV_) VALUES ('schema.history', 'create(5.21.0.0)', 1);
INSERT INTO jeesite.act_ge_property (NAME_, VALUE_, REV_) VALUES ('schema.version', '5.21.0.0', 1);