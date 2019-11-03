package com.example.duxiefenli;

import com.example.duxiefenli.mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DuxiefenliApplicationTests {

    @Autowired
    private UserMapper userMapper;

    @Test
    public void contextLoads() {
        int result = userMapper.insertUser(21L, "zhangsan");
        System.out.println(result);
    }

    @Test
    public void testSelectByUserIds(){
        List<Map> mapList = userMapper.selectUserIds(Arrays.asList(21L));
        System.out.println(mapList);
    }
}
