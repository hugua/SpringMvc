package com.cvte.chen.service;

import com.cvte.chen.dao.UsertestMapper;
import com.cvte.chen.entity.Usertest;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by chen on 2017/4/16.
 */

@Service
public class UsertestService {
    @Resource
    UsertestMapper usertestMapper;
    public boolean selectByExample(Usertest test){
        if(usertestMapper.selectByExample(test).size() >0)
            return true;
        else
            return false;
    }

    public  int insert(Usertest record){
        return usertestMapper.insert(record);
    }
}
