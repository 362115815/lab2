<%--
  Created by IntelliJ IDEA.
  User: xiaomin
  Date: 2014/10/7
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Welcome</title>
      <link href="css/style.css" rel="stylesheet" type="text/css" />

  </head>
  <body>
    this is index page
  <div align="center" style="margin-top: 10%">
      <h1 class="milky">图书管理系统</h1>
  <table>
      <tr>
    <form action="/action/findallbook">
        <input class="button  " type="submit" value="显示所有书籍" width="10px" />
    </form>
    <form action="/search.jsp">
          <input class="button "  type="submit" value="书籍查找" width="10px" />
    </form>
          <form action="/addbook.jsp">
              <input class="button " type="submit" value="书籍添加" width="10px" />
          </form>
      </tr>
  </table>
      </div>
  </body>
</html>
