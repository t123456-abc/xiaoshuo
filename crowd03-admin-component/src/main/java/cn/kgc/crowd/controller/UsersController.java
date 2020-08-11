package cn.kgc.crowd.controller;


import cn.kgc.crowd.entity.Users;
import cn.kgc.crowd.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UsersController {

    @Autowired
    private UsersService usersService;

    @RequestMapping(value = "/getUsersNamePassword")
    public boolean getUsersNamePassword(Users users) {
        System.out.println("jjjjjjj");
        return usersService.getUsersNamePassword(users);
    }
}
