create table act_id_membership
(
    USER_ID_  varchar(64) not null,
    GROUP_ID_ varchar(64) not null,
    primary key (USER_ID_, GROUP_ID_),
    constraint ACT_FK_MEMB_GROUP
        foreign key (GROUP_ID_) references act_id_group (ID_),
    constraint ACT_FK_MEMB_USER
        foreign key (USER_ID_) references act_id_user (ID_)
)
    collate = utf8_bin;

