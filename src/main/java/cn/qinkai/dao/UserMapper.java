package cn.qinkai.dao;

import java.util.List;

import cn.qinkai.pojo.User;

public interface UserMapper {

    User selectUserByName(String name);

    int insertUser(User record);

    List<User> selectUserList();

    void deleteUser(int id);

    int updateUser(User record);

    void deleteUsers(List<String> ids);

    List<User> selectUserByText(String text);

}
