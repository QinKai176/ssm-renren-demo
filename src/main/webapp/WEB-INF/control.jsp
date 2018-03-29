<%@page import="cn.qinkai.pojo.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Management page</title>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <link rel="stylesheet" type="text/css" href="css/jquery.dataTables.min.css">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <script type="text/javascript">
	    function checkall(){
		  var checkboxes=document.getElementsByName("chb");
      for(var i=0;i<checkboxes.length;i++){
              checkboxes[i].checked=document.getElementById("all").checked;
          }
	    }
	    $(document).ready(function(){
        $(".del").click(function(){
          return confirm("确定要删除吗？");
        });
	    });
    </script>
  </head>
  <body>
    <div>
      <form action="findUsers.action" method="post">
        <table id="table1">
          <caption>用户信息管理</caption>
          <tr><td>关键字:<input type="text" name="un" placeholder="请输入用户名" value="${userName}"/>&nbsp;&nbsp;<input type="submit" value="查询"></td></tr>
        </table>
      </form>
      <form action="deleteUsers.action" method="post">
        <table>
          <tr id="header"><td><input type="checkbox" id="all" onclick="checkall()"/></td>
            <td>用户id</td><td>用户名</td><td>密码</td><td>操作</td></tr>
          <c:forEach var="u" items="${userList}" varStatus="status" begin="0" end="${userList.size() }">
            <tr>
              <td class="ids"><input type="checkbox" name="ids" value="${u.getId()}"></td>
              <td>${u.getId()}</td><td>${u.getUsername()}</td><td>${u.getPassword()}</td>
              <td style="text-align: center;"><a href="update.action?un=${u.getUsername()}&pwd=${u.getPassword()}">修改</a>&nbsp;&nbsp;
                <a href="delete.action?userid=${u.getId()}" class="del">删除</a></td></tr>
          </c:forEach>
          <tr style="text-align: center;"><td><input type="submit" value="删除" /></td>
            <td colspan="2"></td><td colspan="2"><a href="/RenRenDemo/login.action">人人网登录首页</a></td></tr>
        </table>
      </form>
    </div>
  </body>
</html>
