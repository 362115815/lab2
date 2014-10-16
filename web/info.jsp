<%--
  Created by IntelliJ IDEA.
  User: xiaomin
  Date: 2014/10/8
  Time: 18:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>message</title>
</head>
<body>
<script type="text/javascript">

    var msg="${requestScope.msg}";
    var msg1="${requestScope.msg1}";
    alert(msg);
    window.location.href="${requestScope.msg1}";
</script>
<%--<jsp:forward page="search.jsp"></jsp:forward>--%>
this is info page
</body>
</html>
