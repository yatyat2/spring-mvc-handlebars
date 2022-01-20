<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Spring Boot Application with JSP</title>
</head>
<body>
리스트페이지
<table>
    <thead>
    <tr>
        <th>
            이름
        </th>
        <th>
            이메일
        </th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>
                <c:out value="${user.name}"/>
            </td>
            <td>
                <c:out value="${user.email}"/>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/form">다시 등록하러 가기</a>

</body>
</html>
