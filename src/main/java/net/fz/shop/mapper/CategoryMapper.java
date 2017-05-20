package net.fz.shop.mapper;

import net.fz.shop.bean.Category;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
@Repository
public interface CategoryMapper {
    List<Category> findAll();
    Category findById(int id);
}
