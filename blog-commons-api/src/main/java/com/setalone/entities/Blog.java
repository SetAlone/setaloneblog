package com.setalone.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author setalone
 * @version V1.0
 * @date 2020/5/31 16:33
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Blog {
    private int blogId;
    private String blogTitle;
    private String blogImage;
    private String blogConten;
    private int blogGoods;
    private int blogRead;
    private int blogCollection;
    private int blogTypeId;
    private String blogRemark;
    private int blogComment;
    private String blogSource;
    private String gmtCreate;
    private Date gmtModified;
    private int version   ;
    private int is_deleted ;
}
