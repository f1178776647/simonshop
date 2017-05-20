package net.fz.shop.mapper;

import net.fz.shop.bean.Order;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
@Repository
public interface OrderMapper {
    List<Order> findAll();
    int insert(Order order);
}
