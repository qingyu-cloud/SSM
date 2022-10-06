<%--
  Created by IntelliJ IDEA.
  User: ygh
  Date: 2022/9/8
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="result.jsp" method="post">
    用户名：<input type="text" name="username"><br>
    账号：<input type="password" name="password"><br>
    <%
        if(!(null==(request.getAttribute("error")))){
            %>
              <span style="font-size: 18px; color: red;font-weight: bold"><%=request.getAttribute("error")%></span><br>
     <%
        }
    %>
    <input type="submit" value="提交">
</form>

</body>
</html>
