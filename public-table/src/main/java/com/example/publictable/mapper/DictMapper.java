package com.example.publictable.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface DictMapper {

    //新增字典
    @Insert("insert into t_dict(dict_id,type,code,value) values(#{dictId},#{type},#{code},#{value})")
    int insertDict(@Param("dictId") Long dictId,@Param("type") String type,@Param("code") String code,@Param("value") String value);

    //删除字典
    @Delete("delete from t_dict where dict_id = #{dictId}")
    int deleteDict(@Param("dictId") Long dictId);
}
