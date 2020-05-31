package com.setalone.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author setalone
 * @version V1.0
 * @date 2020/5/31 16:41
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Type {

       private int typeId;
       private String typeName;
       private int typeBlogBount;
       private int enable;
       private int isDeleted;
}
