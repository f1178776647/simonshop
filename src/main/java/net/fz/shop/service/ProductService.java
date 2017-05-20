package net.fz.shop.service;

import net.fz.shop.bean.Category;
import net.fz.shop.bean.Product;

import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
public interface ProductService {
    List<Product> findByCategoryId(int categoryId);
    Product findProductById(int id);
}
