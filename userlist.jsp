
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%request.setCharacterEncoding("utf-8");%>
  <%@ page import="java.sql.*" %>
  <%@ page import="java.io.*" %>
  <%@ page import="java.util.*" %>
  <%@ page import="java.lang.*" %>
  <style>
      th {
          font-family: 宋体;font-size: 18px;color:black;
      }
      td {
          font-family: 宋体;font-size: 18px;color: black;
      }
  </style>
  <html>
  <body bgcolor="#f0ffff">
  <%  Connection con = null;
      Statement sql;
      ResultSet rs;
      try {
          Class.forName("com.mysql.cj.jdbc.Driver");

      }catch (Exception e){
          out.println("<h5>"+e);
      }

      String url = "jdbc:mysql://localhost:3306/bookdatabase";

      String user = "root";
      String password = "790123";

      out.print("<table border = 1>");
      out.print("<tr>");
      out.print("<th width = 100>"+"ID</th>");
      out.print("<th width = 100>"+"用户名</th>");
      out.print("<th width = 100>"+"密码</th>");
      out.print("<th width = 100>"+"电话号码</th>");
      out.print("<th width = 100>"+"年龄</th>");
      out.print("</tr>");

      try {
          String username = request.getParameter("username");
          String userpassword = request.getParameter("password");
          String phonenumber = request.getParameter("phoneNumber");
          String age = request.getParameter("age");

        con = DriverManager.getConnection(url,user,password);
        sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        rs = sql.executeQuery("select * from user");
        rs.moveToInsertRow();
        rs.updateString(2,username);
        rs.updateString(3,userpassword);
        rs.updateString(4,phonenumber);
        rs.updateString(5,age);
        rs.insertRow();
        rs = sql.executeQuery("select * from user");

        while(rs.next()){
            out.print("<tr>");
            out.print("<td>" + rs.getString(1) + "</td>");
            out.print("<td>" + rs.getString(2) + "</td>");
            out.print("<td>" + rs.getString(3) + "</td>");
            out.print("<td>" + rs.getString(4) + "</td>");
            out.print("<td>" + rs.getString(5) + "</td>");
            out.print("</tr>");
        }
        con.close();
      }catch (SQLException e){
          out.print("<h5>"+e);
          out.print("<h5>ID是主键，主键值不能重复");
      }
  %>
</body>
</html>

