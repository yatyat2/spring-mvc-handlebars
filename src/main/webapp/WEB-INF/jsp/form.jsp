<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Spring Boot Application with JSP</title>

</head>
<body>
등록하는 페이지~
<form action="/list" method="post">
    이메일: <input id="name" name="name" value="${user.name}"/>
    이름: <input id="email" name="email" value="${user.email}" />
    <button is="submit" type="submit">등록</button>
</form>
</body>



</html>
