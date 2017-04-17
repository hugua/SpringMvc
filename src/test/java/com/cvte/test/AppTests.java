package com.cvte.test;

import com.cvte.chen.dao.BadmintonMapper;
import com.cvte.chen.dao.UserMapper;
import com.cvte.chen.entity.Badminton;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.cvte.chen.entity.User;
import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring-mybatis.xml")
public class AppTests {


    @Test
    public void simple() throws Exception {
       System.out.println("test");
    }

    @Resource
    UserMapper UserDao;
    @Test
    public void testService(){
        User user = new User("chen","chen",1);
        List<User> u = UserDao.selectByExample(user);
        System.out.print(u.size());
    }
}
