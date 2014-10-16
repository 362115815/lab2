<%--
  Created by IntelliJ IDEA.
  User: xiaomin
  Date: 2014/10/8
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>查找结果</title>
    <style>
        body {

            background: RGB(235, 227, 216);
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
            transform: translate(-50%, -50%);
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
            text-shadow: 1px 1px 1px rgba(255, 255, 255, .22);
            -webkit-border-radius: 30px;
            -moz-border-radius: 30px;
            border-radius: 30px;

        }

        /* Green Color */

        .green {
            color: #3e5706;

            background: #a5cd4e; /* Old browsers */
            background: -moz-linear-gradient(top, #a5cd4e 0%, #6b8f1a 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #a5cd4e), color-stop(100%, #6b8f1a)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top, #a5cd4e 0%, #6b8f1a 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top, #a5cd4e 0%, #6b8f1a 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top, #a5cd4e 0%, #6b8f1a 100%); /* IE10+ */
            background: linear-gradient(top, #a5cd4e 0%, #6b8f1a 100%); /* W3C */
        }

        /* Blue Color */

        .blue {
            color: #19667d;

            background: #70c9e3; /* Old browsers */
            background: -moz-linear-gradient(top, #70c9e3 0%, #39a0be 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #70c9e3), color-stop(100%, #39a0be)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top, #70c9e3 0%, #39a0be 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top, #70c9e3 0%, #39a0be 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top, #70c9e3 0%, #39a0be 100%); /* IE10+ */
            background: linear-gradient(top, #70c9e3 0%, #39a0be 100%); /* W3C */
        }

        /* Gray Color */

        .gray {
            color: #515151;

            background: #d3d3d3; /* Old browsers */
            background: -moz-linear-gradient(top, #d3d3d3 0%, #8a8a8a 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #d3d3d3), color-stop(100%, #8a8a8a)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top, #d3d3d3 0%, #8a8a8a 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top, #d3d3d3 0%, #8a8a8a 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top, #d3d3d3 0%, #8a8a8a 100%); /* IE10+ */
            background: linear-gradient(top, #d3d3d3 0%, #8a8a8a 100%); /* W3C */
        }

        .button:hover {
            -webkit-box-shadow: 1px 1px 1px rgba(0, 0, 0, .29), inset 0px 0px 2px rgba(0, 0, 0, .5);
            -moz-box-shadow: 1px 1px 1px rgba(0, 0, 0, .29), inset 0px 0px 2px rgba(0, 0, 0, .5);
            box-shadow: 1px 1px 1px rgba(0, 0, 0, .29), inset 0px 0px 2px rgba(0, 0, 0, .5);
        }

        .button:active {
            -webkit-box-shadow: inset 0px 0px 3px rgba(0, 0, 0, .8);
            -moz-box-shadow: inset 0px 0px 3px rgba(0, 0, 0, .8);
            box-shadow: inset 0px 0px 3px rgba(0, 0, 0, .8);
        }
    </style>
    <script type="text/javascript">
        function getISBN(s) {
            var isbn = s.getAttribute("ISBN");

            window.location.href = "/action/detail?ISBN=" + isbn;

        }


    </script>
</head>
<body>
<div align="center" style="margin-top: 5%">
    <div>
        <table border="1" cellpadding="3" cellspacing="0">
            <tr>
                <th>ISBN</th>
                <th>书名</th>
                <th>作者</th>
                <th>出版社</th>
                <th>价格</th>
                <th>出版日期</th>
                <th colspan="3">操作</th>
            </tr>
            <s:iterator value="#session.searchresult" status="state">
                <tr>
                    <td><s:property value="ISBN"></s:property></td>
                    <td><a style="cursor: pointer"
                           ISBN="<s:property value="ISBN"></s:property>"
                           onclick="getISBN(this)"
                            ><s:property value="title"></s:property></a>
                    </td>
                    <td><s:property value="author"></s:property></td>
                    <td><s:property value="publisher"></s:property></td>
                    <td>$<s:property value="price"></s:property></td>
                    <td><s:property value="date"></s:property></td>
                    <td><input type="button" value="详情"
                               ISBN="<s:property value="ISBN"></s:property>"
                               onclick="getISBN(this)"/></td>
                    <td><input type="button" onclick="javascript:window.location.href='/edit.jsp?index=<s:property
                            value="#state.count"></s:property>'"
                               value="编辑"/></td>
                    <td><input type="button" value="删除"
                               onclick="javascript:window.location.href='/action/deletebook?ISBN=<s:property
                                       value="ISBN"></s:property>'"/></td>
                </tr>

            </s:iterator>

        </table>
    </div>
    <div style="margin-top: 2%">
        <input type="button" class="button" value="返回" onclick="javascript:window.location.href='/search.jsp'"
               style="text-align:
       right">
    </div>

</div>
</body>
</html>
