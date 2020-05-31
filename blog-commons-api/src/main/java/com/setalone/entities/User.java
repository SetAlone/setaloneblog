package com.setalone.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author setalone
 * @version V1.0
 * @date 2020/5/31 16:17
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int userid;
    private String userip;
    private String username;
    private String password;
    private String phone;
    private String sex;
    private String header;
    private String nicename;
    private String email;
    private Date gmtCreate;
    private Date gmtModified;
    private int version;
    private int isDeleted;

}
