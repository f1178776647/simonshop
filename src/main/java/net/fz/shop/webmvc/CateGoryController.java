package net.fz.shop.webmvc;

import net.fz.shop.bean.Category;
import net.fz.shop.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by admin on 2017/3/17.
 */
@Controller
@RequestMapping("category")
public class CateGoryController {
    @Autowired
    CategoryService categoryService;

    @RequestMapping("/showCategory")
    public String showCategory(HttpSession session) {
        List<Category> categories = categoryService.findAllCategories();
        session.setAttribute("categories", categories);

        return "frontend/showCategory";
    }



}
