package net.fz.shop.service.impl;

import net.fz.shop.bean.Order;
import net.fz.shop.mapper.OrderMapper;
import net.fz.shop.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
@Service
public class OrderServiceImpl implements OrderService{
    @Autowired
    private OrderMapper orderMapper;

    public List<Order> findAll() {
        return orderMapper.findAll();
    }

    public int insert(Order order) {
        return orderMapper.insert(order);
    }
}
