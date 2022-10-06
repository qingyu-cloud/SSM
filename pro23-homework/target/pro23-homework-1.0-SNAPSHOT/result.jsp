<%--
  Created by IntelliJ IDEA.
  User: ygh
  Date: 2022/9/8
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username!=null) {
            if (username.equals("admin") && password.equals("123456")) {
                session.setAttribute("username", username);
                request.getRequestDispatcher("success.jsp").forward(request, response);
            } else if (username.equals("") && password.equals("")) {
                request.setAttribute("error", "未登录，不能访问其他页面");
            } else {
                request.setAttribute("error", "账号或密码错误");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }
    %>
<c:if test="${username==null}">
    <%
        request.getRequestDispatcher("login.jsp").forward(request,response);
    %>
</c:if>

</body>
</html>
