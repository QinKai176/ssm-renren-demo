package cn.qinkai.service;

import java.util.List;

import cn.qinkai.pojo.User;

public interface UserService {

    public User selectUserByName(String name);

    public int insertUser(User record);

    public List<User> selectUserList();

    public void deleteUser(int id);

    public int updateUser(User record);

    public void deleteUsers(String[] ids);

    public List<User> selectUserByText(String text);
}
