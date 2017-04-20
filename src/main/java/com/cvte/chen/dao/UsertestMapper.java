package com.cvte.chen.dao;

import com.cvte.chen.entity.Usertest;

import java.util.List;

public interface UsertestMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Usertest record);

    int insertSelective(Usertest record);

    Usertest selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Usertest record);

    int updateByPrimaryKey(Usertest record);

    List<Usertest> selectByExample(Usertest example);
}