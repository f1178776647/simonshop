package net.fz.shop.webmvc;

import net.fz.shop.bean.User;
import net.fz.shop.bean.Category;
import net.fz.shop.service.CategoryService;
import net.fz.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * Created by howard on 2017/3/13.
 */
@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/showUser")
    public String showUser(HttpSession session) {
        List<User> users = userService.findAllUsers();
        session.setAttribute("users", users);
        return "backend/showUser";
    }


    @RequestMapping("/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        HttpSession session) {
        User user = userService.login(username, password);
        // 判断用户是否登录成功
        if (user != null) {
            // 保存用户名数据
            session.setAttribute("username", username);
            // 判断用户权限
            if (user.getPopedom() == 0) {
                 // 映射到后台管理页面
                return "backend/management";
            } else {
                List<Category> categories = categoryService.findAllCategories();
                session.setAttribute("categories", categories);
                // 映射到前台显示商品类别页面
                return "frontend/showCategory";
            }
        } else {
            session.setAttribute("loginMsg", "用户名或密码错误！");
            return "login";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("username");
        session.invalidate();
        return "login";
    }

    @RequestMapping("/register")
    public String register(@RequestParam("username") String username,
                           @RequestParam("password") String password,
                           @RequestParam("telephone") String telephone,
                           HttpSession session){
        User user=new User();
        user.setUsername(username);
        user.setTelephone(telephone);
        user.setPassword(password);
        user.setRegisterTime(new Date());
        user.setPopedom(1);
        int count=userService.addUser(user);
        if(count!=0){
            session.setAttribute("registerMsg","恭喜！注册成功！");
            return "login";
        }else {
            session.setAttribute("registerMsg","遗憾！注册失败！");
            return "frontend/register";
        }
    }


}
