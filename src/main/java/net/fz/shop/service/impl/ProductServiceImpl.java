package net.fz.shop.service.impl;

import net.fz.shop.bean.Category;
import net.fz.shop.bean.Product;
import net.fz.shop.mapper.ProductMapper;
import net.fz.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductMapper productMapper;

    public List<Product> findByCategoryId(int categoryId) {
        return productMapper.findByCategoryId(categoryId);
    }

    public Product findProductById(int id) {
        return productMapper.findProductById(id);
    }
}
