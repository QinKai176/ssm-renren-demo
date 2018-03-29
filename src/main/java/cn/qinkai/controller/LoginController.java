package cn.qinkai.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.qinkai.pojo.User;
import cn.qinkai.service.UserService;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login() throws Exception {
    		ArrayList al = new  ArrayList();
        return "login";
    }

    @RequestMapping("/tologin")
    public String toLogin(HttpServletRequest request, HttpSession session) throws Exception {
        request.setCharacterEncoding("utf-8");
        String admin = request.getParameter("email");
        String pwd = request.getParameter("password");
        User user = userService.selectUserByName(admin);
        request.setAttribute("email", admin);
        if (user == null) {
            request.setAttribute("login_failed", "该账号不存在");
            return "login";
        }
        if (!user.getPassword().equals(pwd)) {
            request.setAttribute("login_failed", "密码错误");
            return "login";
        } else {
            session.setAttribute("user", user);
            return "redirect:index.action";
        }

    }

    @RequestMapping("/adminlogin")
    public String adminlogin(HttpServletRequest request) throws Exception {
        return "adminlogin";
    }

    @RequestMapping("/toAdminlogin")
    public String toAdminlogin(HttpServletRequest request) throws Exception {
        String admin = request.getParameter("email");
        String pwd = request.getParameter("password");
        if (admin.equals("admin") && pwd.equals("123456")) {
            List<User> userList = userService.selectUserList();
            request.getSession().setAttribute("userList", userList);
            return "control";
        } else {
            return "adminlogin";
        }
    }


    @RequestMapping("/index")
    public String toIndex() {
        return "index";
    }

    @RequestMapping("/control")
    public String control(HttpServletRequest request) {
        List<User> userList = userService.selectUserList();
        request.getSession().setAttribute("userList", userList);
        return "control";
    }

    @RequestMapping("/register")
    public String register(HttpServletRequest request) {
        String admin = request.getParameter("regEmail");
        String pwd1 = request.getParameter("pwd1");
        String pwd2 = request.getParameter("pwd2");
        if (admin == null || admin == "" || pwd1 == null || pwd1 == "") {
            request.setAttribute("login_failed", "未输入用户名或密码");
            return "register";
        }
        if (!pwd1.equals(pwd2)) {
            request.setAttribute("login_failed", "密码不一致");
            return "register";
        } else {
            User user = new User();
            user.setPassword(pwd1);
            user.setUsername(admin);
            userService.insertUser(user);
            return "redirect:login.action";
        }

    }

    @RequestMapping("/delete")
    public String delete(HttpServletRequest request) throws Exception {
        String userId = request.getParameter("userid");
        userService.deleteUser(Integer.parseInt(userId));
        return "redirect:control.action";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) throws Exception {
        session.removeAttribute("user");
        return "login";
    }

    @RequestMapping("/update")
    public String update(HttpServletRequest request) throws Exception {
        return "updateUser";
    }

    @RequestMapping("/updateComplete")
    public String updateComplete(HttpServletRequest request) throws Exception {
        String un = request.getParameter("un");
        String pwd = request.getParameter("password");
        User user = userService.selectUserByName(un);
        user.setPassword(pwd);
        userService.updateUser(user);
        return "redirect:control.action";
    }

    @RequestMapping("/deleteUsers")
    public String deleteUsers(HttpServletRequest request) throws Exception {
        String[] userIds = request.getParameterValues("ids");
        userService.deleteUsers(userIds);
        return "redirect:control.action";
    }

    @RequestMapping("/findUsers")
    public String findUsers(HttpServletRequest request) throws Exception {
        request.setCharacterEncoding("utf-8");
        String text = request.getParameter("un");
        request.setAttribute("userName", text);
        List<User> userList = userService.selectUserByText(text);
        request.getSession().setAttribute("userList", userList);
        return "control";
    }

    @RequestMapping(value = "/test", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public List<User> findUserList(HttpServletRequest request) throws Exception {
        request.setCharacterEncoding("utf-8");
        List<User> userList = userService.selectUserList();
        return userList;
    }

}
