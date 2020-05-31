# 所有sql语句

# 管理员表 admin
CREATE TABLE `admin`
(
    `admin_id`       bigint(20)  NOT NULL COMMENT '管理员id',
    `admin_username` varchar(31) NOT NULL COMMENT '账号',
    `admin_password` varchar(31) NOT NULL COMMENT '密码',
    PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
    COMMENT ='管理员表';

# 用户表
CREATE TABLE `user`
(
    `user_id`       bigint(20)  NOT NULL COMMENT '用户id',
    'user_ip'       varchar(30) not null comment '用户ip',
    `user_name`     varchar(31) NOT NULL COMMENT '用户名',
    `user_password` varchar(32) NOT NULL COMMENT '密码',
    'user_phone'    varchar(20) not null comment '用户手机号码',
    `user_sex`      int(1)               DEFAULT NULL COMMENT '性别。1男2女',
    `user_header`   varchar(255)         DEFAULT NULL COMMENT '头像',
    `user_nickname` varchar(31) COMMENT '昵称',
    `user_email`    varchar(31)          DEFAULT NULL COMMENT '邮箱',
    `gmt_create`    datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified`  datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `version`       int(11)     NOT NULL DEFAULT '1' COMMENT '乐观锁',
    `is_deleted`    tinyint(1)  NOT NULL DEFAULT '0' COMMENT '是否删除。0否1是',
    PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
    COMMENT ='用户表';

# 博文表
CREATE TABLE `blog`
(
    `blog_id`         varchar(31) NOT NULL COMMENT '博客id',
    `blog_title`      varchar(63) NOT NULL COMMENT '博客id标题',
    `blog_image`      varchar(255)         DEFAULT NULL COMMENT '封面',
    `blog_content`    mediumtext  NOT NULL COMMENT '帖子内容',
    `blog_goods`      int(11)     NOT NULL DEFAULT '0' COMMENT '点赞数',
    `blog_read`       int(11)     NOT NULL DEFAULT '0' COMMENT '阅读数',
    `blog_collection` int(11)     NOT NULL DEFAULT '0' COMMENT '收藏数',
    `blog_type`       int(11)     NOT NULL COMMENT '博客分类',
    `blog_remark`     varchar(127)         DEFAULT NULL COMMENT '简介',
    `blog_comment`    int(11)     NOT NULL DEFAULT '0' COMMENT '评论数',
    `blog_source`     varchar(127)         DEFAULT NULL COMMENT '文章来源（爬虫时使用）',
    `gmt_create`      datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified`    datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `version`         int(11)     NOT NULL DEFAULT '1' COMMENT '乐观锁',
    `is_deleted`      tinyint(1)  NOT NULL DEFAULT '0' COMMENT '是否删除，0否1是',
    PRIMARY KEY (`blog_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  ROW_FORMAT = DYNAMIC COMMENT ='博客表'





