package cn.qinkai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.qinkai.dao.UserMapper;
import cn.qinkai.pojo.User;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public User selectUserByName(String name) {
        User user = userMapper.selectUserByName(name);
        return user;
    }

    @Override
    public int insertUser(User record) {
        int count = userMapper.insertUser(record);
        return count;
    }

    @Override
    public List<User> selectUserList() {
        List<User> userList = userMapper.selectUserList();
        return userList;
    }

    @Override
    public void deleteUser(int id) {
        userMapper.deleteUser(id);
    }

    @Override
    public int updateUser(User record) {
        int count = userMapper.updateUser(record);
        return count;
    }

    public void deleteUsers(String[] ids) {
        for (String id : ids) {
            userMapper.deleteUser(Integer.parseInt(id));
        }
    }

    @Override
    public List<User> selectUserByText(String text) {
        List<User> userList = userMapper.selectUserByText(text);
        System.out.println("text:" + text + "--------------------------------");
        return userList;
    }

}
