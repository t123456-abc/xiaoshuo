package cn.kgc.crowd.test;

import cn.kgc.crowd.entity.Users;
import cn.kgc.crowd.mapper.UsersMapper;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.sql.SQLException;

public class Test {
    public static void main(String[] args) throws SQLException {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring-persister-mybatis.xml");
        UsersMapper bean = ctx.getBean(UsersMapper.class);
       Users users = new  Users();
        users.setUsername("test");
        users.setPassword("test");
        Users usersNamePassword = bean.getUsersNamePassword(users);
        System.out.println(usersNamePassword);
    }
}
