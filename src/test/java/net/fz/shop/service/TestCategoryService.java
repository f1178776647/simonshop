package net.fz.shop.service;

import net.fz.shop.bean.Category;
import org.junit.Test;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
@ContextConfiguration(locations = "/spring-config.xml")
public class TestCategoryService extends AbstractJUnit4SpringContextTests{
    @Resource
    private CategoryService categoryService;

    @Test
    public void testFindAllCategories() {
        List<Category> categories = categoryService.findAllCategories();
        for (Category category : categories) {
            System.out.println(category);
        }
    }
}
