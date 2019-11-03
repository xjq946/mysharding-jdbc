package com.example.duxiefenli.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface UserMapper {

    //新增用户
    @Insert("insert into t_user(user_id,fullname) values(#{userId},#{fullname})")
    int insertUser(@Param("userId") Long userId, @Param("fullname") String fullname);

    //根据id查询数据
    @Select("<script> select * from t_user t where t.user_id in <foreach collection='userIds' item='userId' open='(' close=')' separator=','>#{userId}</foreach> </script>")
    List<Map> selectUserIds(@Param("userIds") List<Long> userIds);
}
