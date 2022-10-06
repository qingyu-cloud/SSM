<%--
  Created by IntelliJ IDEA.
  User: ygh
  Date: 2022/9/8
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${username!=null}">
    <h1>
        登录成功
    </h1>
    <h1>当前登录的用户是：<%=session.getAttribute("username")%></h1>
    <form action="lgout.jsp">
        <input type="submit" value="注销">
    </form>
</c:if>
<c:if test="${username==null}">
    <%  request.getRequestDispatcher("login.jsp").forward(request,response);%>
</c:if>
</body>
</html>
