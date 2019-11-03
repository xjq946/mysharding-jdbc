package com.example.publictable;

import com.example.publictable.mapper.DictMapper;
import com.example.publictable.mapper.OrderMapper;
import com.example.publictable.mapper.UserMapper;
import org.junit.Test;
import org.junit.jupiter.api.Order;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
public class PublicTableApplicationTests {

    @Autowired
    private DictMapper dictMapper;

    //新增字典
    @Test
    public void testInsertDict() {
        dictMapper.insertDict(3L,"user_type","0","超级管理员");
        dictMapper.insertDict(4L,"user_type","1","二级管理员");
    }

    //删除字典
    @Test
    public void testDeleteDict()  {
        dictMapper.deleteDict(1L);
        dictMapper.deleteDict(2L);
    }
}
