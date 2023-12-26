<%--
  Created by IntelliJ IDEA.
  User: 11043
  Date: 2023/11/27
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>

<%--equation.jsp--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="UTF-8">
<!DOCTYPE html>
<html>
<body bgcolor="#87cefa">
<h1>一元二次方程</h1>
<form action="computeBill" method="post">
    <label>一元二次方程的系数是:</label><br><br>
    <label for="two">二次项系数:</label>
    <input type="text" id=two name="two" size="4"/>
    <label for="one">一次项系数:</label>
    <input type="text" id=one name="one" size="4"/>
    <label for="normal">常数项系数:</label>
    <input type="text" id=normal name="normal" size="4"/>
    <input type="submit" value="提交"><br><br>
</form>

<% if(request.getAttribute("equation") != null) { %>
<p2>是一元二次方程吗? ${equation.yesno}</p2><br>
<p2>方程的两个根是:${equation.root1},${equation.root2}</p2><br>
<% } %>
</body>
</html>
