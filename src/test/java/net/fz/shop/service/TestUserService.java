package net.fz.shop.service;

import net.fz.shop.bean.User;
import org.junit.Test;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import javax.annotation.Resource;

/**
 * Created by howard on 2017/3/10.
 */

@ContextConfiguration(locations = "/spring-config.xml")
public class TestUserService extends AbstractJUnit4SpringContextTests{
    @Resource
    private UserService userService;

    @Test
    public void testLogin() {
        String username = "郑晓红";
        String password = "11111";
        User user = userService.login(username, password);
        if (user != null) {
            if (user.getPopedom() == 0) {
                System.out.println("管理员[" + user.getUsername() + "]登录成功！");
            } else {
                System.out.println("普通用户[" + user.getUsername() + "]登录成功！");
            }
        } else {
            System.out.println("用户名或密码错误，登录失败！");
        }
    }
}
