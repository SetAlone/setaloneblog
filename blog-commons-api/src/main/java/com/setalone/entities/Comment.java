package com.setalone.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author setalone
 * @version V1.0
 * @date 2020/5/31 16:45
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Comment {
      private int comment_id;
      private String comment_content;
      private int comment_user_id;
      private String comment_blog;
      private int comment_good;
      private Date gmt_create;
      private int is_deleted;
}
