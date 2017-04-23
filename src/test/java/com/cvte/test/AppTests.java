package com.cvte.test;

import com.cvte.chen.dao.UsertestMapper;
import com.cvte.chen.entity.Usertest;
import com.cvte.chen.service.UsertestService;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring-*.xml")
@WebAppConfiguration
public class AppTests {

    private Logger logger = Logger.getLogger(AppTests.class);
    private MockMvc mockMvc;
    @Resource
    UsertestMapper usertestMapper;

    @Resource
    UsertestService usertestService;

    @Resource
    private WebApplicationContext webApplicationContext;
    @Before
    public void setUp(){
        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }
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

    @Test
    public void usertestServiceTest(){
        Usertest test = new Usertest();
        test.setName("chen");
        test.setPassword("chen");
        usertestService.selectByExample(test);
    }

    @Test
    public void testMockmvc() throws  Exception{
        MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.get("/user/get").accept(MediaType.parseMediaType("application/json;charset=UTF-8"))).andReturn();
        System.out.println(mvcResult.getResponse().getContentAsString());

    }
}
