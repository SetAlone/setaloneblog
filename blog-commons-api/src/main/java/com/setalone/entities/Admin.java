package com.setalone.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
/**
 * @Author setalone
 * @Description
 * @Param
 * @return
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Admin implements Serializable {
    private int id;
    private String username;
    private String password;
    private String serial;


}
