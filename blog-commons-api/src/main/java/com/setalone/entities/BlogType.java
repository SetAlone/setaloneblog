package com.setalone.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.PrimitiveIterator;

/**
 * @author setalone
 * @version V1.0
 * @date 2020/5/31 16:39
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BlogType {
    private int blogId;
    private int typeId;

}
