package com.cvte.chen.service;

import com.cvte.chen.dao.UserMapper;
import com.cvte.chen.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by chen on 2017/4/16.
 */

@Service
public class UserService {
    @Resource
    UserMapper userDao;
    public boolean selectByExample(User user){
        if(userDao.selectByExample(user).size() >0)
            return true;
        else
            return false;
    }
}
