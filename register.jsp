
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="utf-8" %>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%--<jsp:useBean id="user" class="tom.jiafei.User" scope="session"/>--%>
<!DOCTYPE html>
<html>
<body bgcolor="#ffebcd">
<style>
    body {
        background-color:lightskyblue;
        font-family: 宋体;
        font-size: 15px;
    }
    p{
        display: flex;
        justify-content: center;
        align-items: center;
    }
    h1{
        display: flex;
        justify-content: center;
        align-items: center;
    }
    div{
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .form-group {
        margin-bottom: 10px;
    }

    .form-group label {
        display: inline-block;
        width: 60px;
    }

    .form-group input[type="text"],
    .form-group input[type="password"] {
        width: 200px;
    }
</style>
<p>
<form action="userlist.jsp" method="post">
    <h1>用户注册页面</h1>
    <div class="form-group">
        用户名：<input type="text" class="textStyle" name="username"><br>
    </div>
    <div class="form-group">
        密码：<input type="text" class="textStyle" name="password"><br>
    </div>
    <div class="form-group">
        手机号:<input type="text" class="textStyle" name="phoneNumber"><br>
    </div>
    <div class="form-group">
        年龄:<input type="text" class="textStyle" name="age"><br>
    </div>
    <div class="form-group">
        <input type="submit" class="textStyle" value="提交">
    </div>
</form>
</p>
</body>
</html>
