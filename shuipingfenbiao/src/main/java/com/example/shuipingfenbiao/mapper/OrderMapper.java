package com.example.shuipingfenbiao.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

@Mapper
public interface OrderMapper  {

    //插入数据
    @Insert("insert into t_order(price,user_id,status) values(#{price},#{userId},#{status})")
    int insertOrder(@Param("price")BigDecimal price,@Param("userId") Long userId,@Param("status") String status);

    //根据id查询数据
    @Select("<script> select * from t_order t where t.order_id in <foreach collection='orderIds' item='orderId' open='(' close=')' separator=','>#{orderId}</foreach> </script>")
    List<Map> selectOrderByIds(@Param("orderIds") List<Long> orderIds);

    //分页查询
    @Select("select * from t_order where price > 10 order by price desc limit 20")
    List<Map> search();
}
