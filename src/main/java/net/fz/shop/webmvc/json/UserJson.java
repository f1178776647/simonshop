package net.fz.shop.webmvc.json;

import net.fz.shop.bean.User;
import net.fz.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by admin on 2017/3/16.
 */
@Controller
public class UserJson {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/loginJson", produces = "application/json;charset=utf-8")
    public
    @ResponseBody
    User login(/*@RequestParam("username") String username,
               @RequestParam("password") String password*/) {

        User user=userService.login("admin", "12345");

        return user;
    }

}
