package com.cvte.test;

import com.cvte.chen.dao.UsertestMapper;
import com.cvte.chen.entity.Usertest;
import com.cvte.chen.service.UsertestService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring-mybatis.xml")
public class AppTests {
    @Resource
    UsertestMapper usertestMapper;

    @Test
    public void simple() throws Exception {
       System.out.println("test");
    }
    @Test
    public  void ServiceTest(){
        Usertest test = new Usertest();
        test.setName("chen");
        test.setPassword("chen");
        usertestMapper.selectByExample(test);
    }

    @Test
    public void DateTest() throws  Exception{
        //从页面获取日期，并转为java.sql.date保存到数据库上

        String dataPattern = "yyyy-MM-dd";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(dataPattern);
        /*
        String str = "2017-01-02";
        java.util.Date date1 = simpleDateFormat.parse(str);
        java.sql.Date date2 = new java.sql.Date(date1.getTime());
        System.out.println(date1);
        System.out.println(date2);
        */
        //java.sql.date获取当前时间
        /*
        java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
        System.out.println(date.toString());
        */

        //java.util.date获取当前时间
        /*
        java.util.Date date = new Date();
        System.out.println(date);
        String dateStr = simpleDateFormat.format(date);
        System.out.println(dateStr);
        */
        //java.sql.date转换为java.util.date
        java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
        java.util.Date date2 = new java.util.Date(date.getTime());
        System.out.println(simpleDateFormat.format(date2));

    }
}
