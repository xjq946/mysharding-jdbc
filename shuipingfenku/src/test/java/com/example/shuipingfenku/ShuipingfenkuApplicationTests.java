package com.example.shuipingfenku;

import com.example.shuipingfenku.mapper.OrderMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.internal.matchers.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ShuipingfenkuApplicationTests {

    @Autowired
    private OrderMapper orderMapper;

    //插入数据
    @Test
    public  void contextLoads() {
        for (int i = 1; i < 20; i++) {
            orderMapper.insertOrder((long)i,BigDecimal.valueOf(i),(long)i,"SUCCESS");
        }
    }

    //根据id查询数据
    @Test
    public void selectOrderByIds() {
        List<Map> maps = orderMapper.selectByUserIds(Arrays.asList(1L, 2L));
        System.out.println(maps);
    }

}
