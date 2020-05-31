# 所有sql语句

# 管理员表 admin
CREATE TABLE `admin`
(
    `admin_id`       bigint(10)  NOT NULL COMMENT '管理员id',
    `admin_username` varchar(31) NOT NULL COMMENT '账号',
    `admin_password` varchar(31) NOT NULL COMMENT '密码',
    PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4 COMMENT ='管理员表';

# 用户表
CREATE TABLE `user`
(
    `user_id`       bigint(20)   NOT NULL COMMENT '用户id',
    `user_ip`       varchar(255) NOT NULL COMMENT '用户ip',
    `user_name`     varchar(31)  NOT NULL COMMENT '用户名',
    `user_password` varchar(32)  NOT NULL COMMENT '密码',
    `user_phone`    varchar(32)  NOT NULL COMMENT '手机号码',
    `user_sex`      int(1)                DEFAULT NULL COMMENT '性别。1男2女',
    `user_header`   varchar(255)          DEFAULT NULL COMMENT '头像',
    `user_nickname` varchar(31)           DEFAULT NULL COMMENT '昵称',
    `user_email`    varchar(31)           DEFAULT NULL COMMENT '邮箱',
    `gmt_create`    datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified`  datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `version`       int(11)      NOT NULL DEFAULT '1' COMMENT '乐观锁',
    `is_deleted`    tinyint(1)   NOT NULL DEFAULT '0' COMMENT '是否删除。0否1是',
    PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4 COMMENT ='用户表';


#博客表
CREATE TABLE `blog`
(
    `blog_id`         bigint(10)  NOT NULL COMMENT '博客id',
    `blog_title`      varchar(63) NOT NULL COMMENT '博客标题',
    `blog_image`      varchar(255)         DEFAULT NULL COMMENT '封面',
    `blog_content`    mediumtext  NOT NULL COMMENT '博客内容',
    `blog_goods`      int(11)     NOT NULL DEFAULT '0' COMMENT '点赞数',
    `blog_read`       int(11)     NOT NULL DEFAULT '0' COMMENT '阅读数',
    `blog_collection` int(11)     NOT NULL DEFAULT '0' COMMENT '收藏数',
    `blog_type_id`    int(11)     NOT NULL COMMENT '博客分类id',
    `blog_remark`     varchar(127)         DEFAULT NULL COMMENT '博客摘要',
    `blog_comment`    int(11)     NOT NULL DEFAULT '0' COMMENT '评论数',
    `blog_source`     varchar(127)         DEFAULT NULL COMMENT '文章来源（爬虫时使用）',
    `gmt_create`      datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified`    datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `version`         int(11)     NOT NULL DEFAULT '1' COMMENT '乐观锁',
    `is_deleted`      tinyint(1)  NOT NULL DEFAULT '0' COMMENT '是否删除，0否1是',
    PRIMARY KEY (`blog_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  ROW_FORMAT = DYNAMIC COMMENT ='博客表';


# 博客分类设置表
CREATE TABLE `blog_type`
(
    `blog_id` bigint(10) NOT NULL COMMENT '博客id',
    `type_id` bigint(10) NOT NULL COMMENT '分类id'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  ROW_FORMAT = DYNAMIC COMMENT ='博客分类表';


#分类表
CREATE TABLE `type`
(
    `type_id`         bigint(10) NOT NULL COMMENT '分类id',
    `type_name`       varchar(31)         DEFAULT NULL COMMENT '分类名称',
    `type_blog_count` int(11)             DEFAULT '0' COMMENT '帖子数',
    `enable`          int(1)     NOT NULL DEFAULT '1' COMMENT '是否启用，0否1是',
    `is_deleted`      tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除，0否1是',
    PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  ROW_FORMAT = DYNAMIC COMMENT ='帖子类型表';


#评论表
CREATE TABLE `comment`
(
    `comment_id`      bigint(10)  NOT NULL COMMENT '评论id',
    `comment_content` mediumtext  NOT NULL COMMENT '评论内容',
    `comment_user_id` int(11)     NOT NULL COMMENT '评价人',
    `comment_blog`    varchar(31) NOT NULL COMMENT '评论帖子id',
    `comment_good`    int(11)     NOT NULL DEFAULT '0' COMMENT '点赞数',
    `gmt_create`      datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
    `is_deleted`      int(1)      NOT NULL COMMENT '是否删除，0否1是',
    PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  ROW_FORMAT = DYNAMIC COMMENT ='评论表';













