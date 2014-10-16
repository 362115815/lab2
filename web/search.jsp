<%--
  Created by IntelliJ IDEA.
  User: xiaomin
  Date: 2014/10/8
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查找图书</title>

        <link href="css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div  align="center" style="align-content: center;margin-top: 10%">
    <h1 class="milky">图书管理系统</h1>
    <h3 >书籍查找</h3>
    <form action="/action/searchbook">
        <table style="margin: auto">
            <tr>
                <td>ISBN:</td>
                <td colspan="2"><input class=" inputtext" name="ISBN" type="text" width="30"/></td>
            </tr>
            <tr>
                <td>书名:</td>
                <td colspan="2"><input class=" inputtext" name="title" type="text" width="30"/></td>
            </tr>
            <tr>
                <td>作者</a>:</td>
                <td colspan="2"><input class=" inputtext" name="author" type="text" width="30"/></td>
            </tr>
            <tr>
                <td>出版社:</td>
                <td colspan="2"><input class=" inputtext" name="publisher" type="text" width="30"/></td>
            </tr>
            <tr >
                <td></td>
                <td ><input class="button"  name="submit" type="submit" value="查找"width="60"/></td>
                <td><input class="button" name="back" type="button" value="返回"width="60"
                           onclick="javascript:window.location.href='/index.jsp'"/></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
