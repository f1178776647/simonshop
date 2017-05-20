package net.fz.shop.service.impl;

import net.fz.shop.bean.User;
import net.fz.shop.mapper.UserMapper;
import net.fz.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by howard on 2017/3/10.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public int addUser(User user) {
        return userMapper.insert(user);
    }

    public int updateUser(User user) {
        return userMapper.update(user);
    }

    public int deleteUser(String username) {
        return userMapper.delete(username);
    }

    public List<User> findAllUsers() {
        return userMapper.findAll();
    }

    public User login(String username, String password) {
        return userMapper.login(username, password);
    }
}
