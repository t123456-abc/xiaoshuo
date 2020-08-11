package cn.kgc.crowd.service.impl;


import cn.kgc.crowd.entity.Users;
import cn.kgc.crowd.mapper.UsersMapper;
import cn.kgc.crowd.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersMapper usersMapper;


    @Override
    public boolean getUsersNamePassword(Users users) {
        Users usersNamePassword = usersMapper.getUsersNamePassword(users);
        System.out.println("-------------"+users);
        System.out.println("+++++++++++++"+usersNamePassword);




        if (usersNamePassword == null) {
            return false;
        } else {
            return true;
        }

    }
}
