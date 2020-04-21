create table com_info
(
    id          varchar(64)   not null
        primary key,
    rec_rate    int           null comment '推荐率',
    brand       varchar(64)   null comment '品牌',
    model       varchar(64)   null comment '型号',
    flash_point varchar(64)   null comment '闪光点',
    used        varchar(64)   null comment '使用场景',
    upgrade     varchar(64)   null comment '升级',
    price       decimal       null comment '价格',
    play_attr   varchar(64)   null comment '娱乐属性',
    cpu         varchar(64)   null comment 'cpu',
    screen      varchar(64)   null comment '屏幕',
    gpu         varchar(64)   null comment 'gpu',
    hard_disk   varchar(64)   null comment '硬盘',
    ram         varchar(64)   null comment '内存条',
    port        varchar(64)   null comment '端口',
    image       varchar(2000) null comment '图片',
    cpu_attr    varchar(64)   null comment 'cpu属性',
    screen_attr varchar(64)   null comment '屏幕属性'
)
    comment '配置信息';

INSERT INTO jeesite.com_info (id, rec_rate, brand, model, flash_point, used, upgrade, price, play_attr, cpu, screen, gpu, hard_disk, ram, port, image, cpu_attr, screen_attr) VALUES ('6a5edb31e22e4a75ba0b874945d0fb3a', 2, '2', '2', '2', '2', '2', 2, '3', 'i7', '17', 'rx580', '金士顿', '美商海盗船4G', '1', '/jeesite/userfiles/1/files/computer/2020/04/4560ed28161d7114.jpg', '1', '1');
INSERT INTO jeesite.com_info (id, rec_rate, brand, model, flash_point, used, upgrade, price, play_attr, cpu, screen, gpu, hard_disk, ram, port, image, cpu_attr, screen_attr) VALUES ('a9d26e28fc6a4b4cbf68fd00baacfbfb', 1, '1', '1', '1', '1', '1', 2, '1', 'i5', '15', '1660', '西部数码', '金士顿4G', '1', '/jeesite/userfiles/1/files/computer/2020/04/4560ed28161d7114.jpg', '2', '2');