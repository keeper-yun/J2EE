<%--
  Created by IntelliJ IDEA.
  User: 11043
  Date: 2023/11/27
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>

<!-- trapezoidInput.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<!DOCTYPE html>
<html>
<style>
    body {
        text-align: center;
    }

    form {
        text-align: center;
    }
</style>
<body bgcolor="#f0ffff">

<h1>梯形计算器</h1>
<form action="computeBill" method="post">
    <label for="upperBase">梯形的上底:</label>
    <input type="text" id="upperBase" name="upperBase"><br><br>
    <label for="lowerBase">梯形的下底:</label>
    <input type="text" id="lowerBase" name="lowerBase"><br><br>
    <label for="height">梯形的高度:</label>
    <input type="text" id="height" name="height"><br><br>
    <input type="submit" value="计算面积"><br><br>
</form>

<% if(request.getAttribute("trapezoid") != null) { %>
<h2>梯形属性：</h2>
<p2>梯形上底边为:${trapezoid.upperBase}</p2><br>
<p2>梯形下底边为:${trapezoid.lowerBase}</p2><br>
<p2>梯形的高度为:${trapezoid.height}</p2><br>
<p>计算得梯形面积为:${trapezoid.area}</p><br>
<% } %>
</body>
</html>


