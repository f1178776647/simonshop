package net.fz.shop.service;

import net.fz.shop.bean.Order;

import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
public interface OrderService {
    List<Order> findAll();
    int insert(Order order);
}
