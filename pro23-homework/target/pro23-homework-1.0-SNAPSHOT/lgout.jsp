
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:if test="${username==null}">
        <%
            request.getRequestDispatcher("login.jsp").forward(request,response);
        %>
    </c:if>
    <c:if test="${username!=null}">
        <%
            session.invalidate();
            request.getRequestDispatcher("login.jsp").forward(request,response);
        %>
    </c:if>
</body>
</html>
