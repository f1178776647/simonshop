package net.fz.shop.webmvc;

import net.fz.shop.bean.Order;
import net.fz.shop.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * Created by admin on 2017/3/17.
 */
@Controller
@RequestMapping("order")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @RequestMapping("/toMakeOrder")
    public String toMakeOrder(@RequestParam("totalPrice") double totalPrice,
                              HttpSession session) {
        if (totalPrice == 0.0) {
            session.setAttribute("orderMsg", "您还没有购物呢！，请先选购商品");
            return "frontend/showProduct";
        } else {
            return "frontend/makeOrder";
        }
    }

    @RequestMapping("/makeOrder")
    public String makeOrder(@RequestParam("username") String username,
                            @RequestParam("telephone") String telephone,
                            @RequestParam("totalPrice") double totalPrice,
                            @RequestParam("deliveryAddress") String deliveryAddress,
                            HttpSession session) {
        Order order = new Order();
        order.setUsername(username);
        order.setDeliveryAddress(deliveryAddress);
        order.setTelephone(telephone);
        order.setTotalPrice(totalPrice);
        order.setOrderTime(new Date());
        int count = orderService.insert(order);
        if (count != 0) {
            List<Order> orders = orderService.findAll();
            Order lastOrder = orders.get(orders.size() - 1);
            session.setAttribute("lastOrder", lastOrder);
            return "frontend/showOrder";
        } else {
            session.setAttribute("orderMsg", "添加订单失败！");
            return "frontend/showCategory";
        }
    }

    @RequestMapping("/pay")
    public String pay(HttpSession session) {
        session.removeAttribute("cart");
        session.removeAttribute("shoppingTable");
        session.removeAttribute("totalPrice");
        return "frontend/showCategory";
    }
}
