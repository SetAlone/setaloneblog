# 所有sql语句

# 管理员表
drop table if exists 'admin';
CREATE TABLE `admin`
(
    `id`       varchar(31) NOT NULL COMMENT '管理员id',
    `username` varchar(31) NOT NULL COMMENT '账号',
    `password` varchar(32) NOT NULL COMMENT '密码',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
    COMMENT ='管理员表';

# 用户表
drop table if exists 'user';
CREATE TABLE `user`
(
    `user_id`      varchar(31) NOT NULL COMMENT '用户id',
    `username`     varchar(31) NOT NULL COMMENT '用户名',
    `password`     varchar(32) NOT NULL COMMENT '密码',
    `name`         varchar(31) NOT NULL COMMENT '姓名',
    `sex`          int(1)               DEFAULT NULL COMMENT '性别。1男2女',
    `header`       varchar(255)         DEFAULT NULL COMMENT '头像',
    `nickname`     varchar(31)          DEFAULT '雨落弦鸣' COMMENT '昵称',
    `user_email`   varchar(31)          DEFAULT NULL COMMENT '邮箱',
    `gmt_create`   datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified` datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `version`      int(11)     NOT NULL DEFAULT '1' COMMENT '乐观锁',
    `is_deleted`   tinyint(1)  NOT NULL DEFAULT '0' COMMENT '是否删除。0否1是',
    PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
    COMMENT ='用户表';


insert into `user`(`user_id`, `username`, `password`, `name`, `sex`, `header`, `nickname`, `user_email`, `gmt_create`,
                   `gmt_modified`, `version`, `is_deleted`)
values ('1', 'setalone', '123456', '蔡伟文', 1, NULL, 'setalone', '2464447440@qq.com', '2020-05-28 08:24:36',
        '2020-05-29 08:24:42', 1, 0);


