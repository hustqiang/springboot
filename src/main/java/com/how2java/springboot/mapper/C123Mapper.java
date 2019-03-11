package com.how2java.springboot.mapper;

import com.how2java.springboot.pojo.C123;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface C123Mapper {
    @Select("select * from C123")
    List<C123> findAll();

}
