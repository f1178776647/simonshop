package net.fz.shop.webmvc;

import net.fz.shop.bean.Category;
import net.fz.shop.bean.Product;
import net.fz.shop.service.CategoryService;
import net.fz.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by admin on 2017/3/15.
 */
@Controller
@RequestMapping("product")
public class ProductController {
    @Autowired
    private ProductService productService;
    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/showProduct")
    public String showProduct(@RequestParam("categoryId") int categoryId,
                              HttpSession session) {
        List<Product> products = productService.findByCategoryId(categoryId);
        if (products != null) {
            /*for (int i = 0; i < products.size(); i++) {
                SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                String time = format.format(products.get(i).getAddTime());
                products.get(i).setAddTime(new Date(time));
            }*/
            Category category = categoryService.findByCategoryId(products.get(0).getCategoryId());
            if (category != null) {
                session.setAttribute("products", products);
                session.setAttribute("categoryName", category.getName());
                return "frontend/showProduct";
            }
        }
        return "frontend/showCategory";
    }

    @RequestMapping("/operateCart")
    public String operateCart(@RequestParam("id") Integer id,
                              @RequestParam("operate") String operate,
                              HttpSession session) {
        // 从session里取购物车
        LinkedHashMap<Integer, Integer> cart = (LinkedHashMap<Integer, Integer>) session.getAttribute("cart");
        // 判断有没有购物车
        if (cart == null) {
            // 创建购物车
            cart = new LinkedHashMap<Integer, Integer>();
            // 保存到session里
            session.setAttribute("cart", cart);
        }

        // 判断用户操作（加入购物车还是从购物车删除商品）
        if (operate.equals("add")) {
            // 判断该商品是否已购买
            if (cart.containsKey(id)) {
                // 购买数量增加1
                cart.put(id, cart.get(id) + 1);
            } else {
                // 购买数量设置为1
                cart.put(id, 1);
            }
        } else if (operate.equals("delete")) {
            // 判断购买数量是否超过1
            if (cart.get(id) > 1) {
                // 购买数量减少1
                cart.put(id, cart.get(id) - 1);
            } else {
                // 从购物车里删除该商品
                cart.remove(id);
            }
        }

        /* 生成购物表，计算总金额*/
        // 判断购物车是否为空
        if (cart != null) {
            // 定义购物表
            List<HashMap<String, Object>> shoppingTable = new ArrayList<HashMap<String, Object>>();
            // 购买总金额
            double totalPrice = 0.00;
            // 遍历购物车
            for (Integer p_id : cart.keySet()) {
                // 通过商品标识符获取商品对象
                Product product = productService.findProductById(p_id);
                // 生成购物表记录
                HashMap<String, Object> shoppingItem = new HashMap<String, Object>();
                shoppingItem.put("id", product.getId());
                shoppingItem.put("name", product.getName());
                shoppingItem.put("price", product.getPrice());
                shoppingItem.put("amount", cart.get(p_id));
                shoppingItem.put("sum", product.getPrice() * cart.get(p_id));
                // 将购物表记录添加到购物表中
                shoppingTable.add(shoppingItem);
                // 累加计算总金额
                totalPrice = totalPrice + (Double) shoppingItem.get("sum");
            }
            // 将购物表与总金额保存到session里
            session.setAttribute("shoppingTable", shoppingTable);
            session.setAttribute("totalPrice", totalPrice);

        } else {
            session.setAttribute("totalPrice", 0.00);
        }

        // 获取该商品的类别标识符
        int categoryId = productService.findProductById(id).getCategoryId();
        List<Product> products = productService.findByCategoryId(categoryId);
        String categoryName = categoryService.findByCategoryId(categoryId).getName();
        session.setAttribute("products", products);
        session.setAttribute("categoryName", categoryName);
        session.setAttribute("categoryId", categoryId);
        return "frontend/showProduct";
    }

}
