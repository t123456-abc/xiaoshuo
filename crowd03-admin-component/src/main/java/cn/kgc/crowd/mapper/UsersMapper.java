package cn.kgc.crowd.mapper;


import cn.kgc.crowd.entity.Users;
import org.apache.ibatis.annotations.Param;

public interface UsersMapper {

Users getUsersNamePassword(@Param("users") Users users);

}
