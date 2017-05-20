package net.fz.shop.service.impl;

import net.fz.shop.bean.Category;
import net.fz.shop.mapper.CategoryMapper;
import net.fz.shop.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
@Service
public class CategoryServiceImpl implements CategoryService{
    @Autowired
    private CategoryMapper categoryMapper;

    public List<Category> findAllCategories() {
        return categoryMapper.findAll();
    }

    public Category findByCategoryId(int id) {
        return categoryMapper.findById(id);
    }
}
