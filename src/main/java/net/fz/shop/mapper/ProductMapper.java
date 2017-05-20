package net.fz.shop.mapper;

import net.fz.shop.bean.Product;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
@Repository
public interface ProductMapper {
    List<Product> findByCategoryId(int categoryId);
    Product findProductById(int id);
}
