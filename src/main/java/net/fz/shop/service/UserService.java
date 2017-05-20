package net.fz.shop.service;

import net.fz.shop.bean.User;

import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
public interface UserService {
    int addUser(User user);

    int updateUser(User user);

    int deleteUser(String username);

    List<User> findAllUsers();

    User login(String username, String password);
}
