package net.fz.shop.mapper;

import net.fz.shop.bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
@Repository
public interface UserMapper {
    int insert(User user);

    int update(User user);

    int delete(String username);

    List<User> findAll();

    User login(@Param("username") String username, @Param("password") String password);
}
