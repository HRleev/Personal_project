<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-08
  Time: 오후 1:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="container">
    <table class="table table-striped">
        <tr>
            <th>상호명</th>
            <th>대표메뉴</th>
            <th>소개</th>
            <th>지역</th>
            <th>예약</th>
        </tr>
        <c:forEach items="${locationList}" var="locationList">
            <tr>
                <td>${locationList.companyName}</td>
                <td>${locationList.c_menu}</td>
                <td>${locationList.c_introduction}</td>
                <td>${locationList.c_location}</td>
                <td><a href="/boot/save?companyName=${menuList.companyName}">예약</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
