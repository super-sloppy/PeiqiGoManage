package com.wk.dao;

import com.wk.model.TUser;
import org.springframework.stereotype.Repository;

@Repository
public interface TUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TUser record);

    int insertSelective(TUser record);

    TUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TUser record);

    int updateByPrimaryKey(TUser record);

    TUser selectByUsername(TUser user);
}