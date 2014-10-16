<%--
  Created by IntelliJ IDEA.
  User: xiaomin
  Date: 2014/10/8
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>
    <style>
        body{

            background: RGB(235,227,216);
        }
        .milky {
            font-family: "Arial Rounded MT Bold", "Helvetica Rounded", Arial, sans-serif;;
            text-transform: uppercase;
            display: block;
            font-size: 70px;
            color: #f1ebe5;
            text-shadow: 0 8px 9px #c4b59d, 0px -2px 1px #fff;
            font-weight: bold;
            letter-spacing: -4px;
            text-align: center;
            position: absolute;
            padding: 100px 200px;
            top: 5%;
            left: 50%;
            transform: translate(-50%,-50%);
            border-radius: 20px;
        }
        .button {
            display: inline-block;
            position: relative;
            margin: 10px;
            padding: 0 20px;
            text-align: center;
            text-decoration: none;
            font: bold 12px/25px Arial, sans-serif;
            border: 0px;
            text-shadow: 1px 1px 1px rgba(255,255,255, .22);
            -webkit-border-radius: 30px;
            -moz-border-radius: 30px;
            border-radius: 30px;



        }

        /* Green Color */

        .green {
            color: #3e5706;

            background: #a5cd4e; /* Old browsers */
            background: -moz-linear-gradient(top,  #a5cd4e 0%, #6b8f1a 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#a5cd4e), color-stop(100%,#6b8f1a)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top,  #a5cd4e 0%,#6b8f1a 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top,  #a5cd4e 0%,#6b8f1a 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top,  #a5cd4e 0%,#6b8f1a 100%); /* IE10+ */
            background: linear-gradient(top,  #a5cd4e 0%,#6b8f1a 100%); /* W3C */
        }

        /* Blue Color */

        .blue {
            color: #19667d;

            background: #70c9e3; /* Old browsers */
            background: -moz-linear-gradient(top,  #70c9e3 0%, #39a0be 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#70c9e3), color-stop(100%,#39a0be)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top,  #70c9e3 0%,#39a0be 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top,  #70c9e3 0%,#39a0be 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top,  #70c9e3 0%,#39a0be 100%); /* IE10+ */
            background: linear-gradient(top,  #70c9e3 0%,#39a0be 100%); /* W3C */
        }

        /* Gray Color */

        .gray {
            color: #515151;

            background: #d3d3d3; /* Old browsers */
            background: -moz-linear-gradient(top,  #d3d3d3 0%, #8a8a8a 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#d3d3d3), color-stop(100%,#8a8a8a)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top,  #d3d3d3 0%,#8a8a8a 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top,  #d3d3d3 0%,#8a8a8a 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top,  #d3d3d3 0%,#8a8a8a 100%); /* IE10+ */
            background: linear-gradient(top,  #d3d3d3 0%,#8a8a8a 100%); /* W3C */
        }
        .button:hover {
            -webkit-box-shadow: 1px 1px 1px rgba(0,0,0,.29), inset 0px 0px 2px rgba(0,0,0, .5);
            -moz-box-shadow: 1px 1px 1px rgba(0,0,0,.29), inset 0px 0px 2px rgba(0,0,0, .5);
            box-shadow: 1px 1px 1px rgba(0,0,0,.29), inset 0px 0px 2px rgba(0,0,0, .5);
        }
        .button:active {
            -webkit-box-shadow: inset 0px 0px 3px rgba(0,0,0, .8);
            -moz-box-shadow: inset 0px 0px 3px rgba(0,0,0, .8);
            box-shadow: inset 0px 0px 3px rgba(0,0,0, .8);
        }


        .inputtext{
            background:#e5d4bc;
            outline: none;
            border: 0 none;
            font: bold 12px Arial, Helvetica, Sans-serif;
            color: #333333;
            width: 260px;
            padding: 4px 5px 3px 35px;
            -webkit-border-radius:15px;
            -moz-border-radius: 15px;
            border-radius: 15px;
            /*text-shadow: 0 2px 2px rgba(0, 0, 0, 0.3);
            -webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 3px rgba(0, 0, 0, 0.2) inset;
            -moz-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 3px rgba(0, 0, 0, 0.2) inset;*/
            box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 3px rgba(0, 0, 0, 0.2) inset;
            -webkit-transition: all 0.7s ease 0s;
            -moz-transition: all 0.7s ease 0s;
            -o-transition: all 0.7s ease 0s;
            transition: all 0.7s ease 0s;
            font-size: 15px;
        }
        .inputtext:focus {

            background: rgb(221,191,155);
        }
    </style>
</head>
<body>
<div align="center" style="align-content: center;margin-top: 10%">
    <h1 class="milky">图书管理系统</h1>
    <h3>书籍添加</h3>
    <form action="/action/addbook">
        <table style="margin: auto">
            <tr>
                <th>书名:</td><td><input  class="inputtext" name="title" type="text" width="30"/></td>

            </tr>
            <tr>
                <th>作者:</td><td><input class="inputtext" name="author" type="text" width="30"/> </td>
            </tr>

            <tr>
                <th>年龄:</td><td><input class="inputtext" name="age" type="text" width="30"/> </td>
            </tr>
            <tr>
                <th>国籍:</td><td><input class="inputtext" name="nation" type="text" width="30"/> </td>
            </tr>
            <th>价格:</td><td><input class="inputtext" name="price" type="text" width="30"/></td>
            </tr>
            <tr>
                <th>ISBN:</td><td><input class="inputtext" class="inputtext" name="ISBN" type="text" width="30"/> </td>
            </tr>
            <tr>
                <th>出版社:</td><td><input class="inputtext" name="publisher" type="text" width="30"/></td>
            </tr>
            <tr>
                <th>出版日期:</td><td><input class="inputtext" name="date" type="text" width="30" placeholder="格式：1993-08-06"></td>
            </tr>
            <tr>
                <td></td>
                <td>

                        <input name="submit" class="button" type="submit"value="添加" width="10"/>
                        <input name="reset" class="button" type="reset" value="重置"width="10"/>
                        <input name="back" class="button" type="button" value="返回" width="10"
                               onclick="javascript:window.location.href='/index.jsp'">

                </td>

            </tr>

        </table>
    </form>

</div>
</body>
</html>
