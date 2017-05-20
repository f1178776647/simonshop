package net.fz.shop.service;

import net.fz.shop.bean.Category;

import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
public interface CategoryService {
    List<Category> findAllCategories();
    Category findByCategoryId(int id);
}
