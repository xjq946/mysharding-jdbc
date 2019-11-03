package com.example.shuipingfenbiao;

import com.example.shuipingfenbiao.mapper.OrderMapper;
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
public class ShuipingfenbiaoApplicationTests {

    @Autowired
    private OrderMapper orderMapper;

    @Test
    public  void contextLoads() {
        for (int i = 2; i < 20; i++) {
            orderMapper.insertOrder(BigDecimal.valueOf(i),1L,"SUCCESS");
        }
    }

    //根据id查询数据
    @Test
    public void selectOrderByIds() {
        List<Map> maps = orderMapper.selectOrderByIds(Arrays.asList(397450868510687232L, 397450868103839745L));
        System.out.println(maps);
    }

    //分页查询
    @Test
    public void searchPage() {
        List<Map> mapList = orderMapper.search();
        System.out.println(mapList);
    }

}
