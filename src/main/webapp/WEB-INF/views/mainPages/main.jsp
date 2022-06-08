<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 82102
  Date: 2022-06-02
  Time: 오후 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .icon {
            /*margin-left: 300px;*/
            text-align: center;

        }

    </style>
</head>
<body>

<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>


<div class="icon">
    <a href="/main/main">
        <img src="../../../resources/img/icon1.jpeg" style="width:5%">&nbsp;&nbsp;</a>
    <img src="../../../resources/img/icon2.jpeg" style="width:5%">&nbsp;&nbsp;
    <img src="../../../resources/img/icon3.jpeg" style="width:5%">&nbsp;&nbsp;
    <img src="../../../resources/img/icon4.jpeg" style="width:5%">&nbsp;&nbsp;
    <img src="../../../resources/img/icon5.jpeg" style="width:5%">&nbsp;&nbsp;
    <img src="../../../resources/img/icon6.jpeg" style="width:5%">
</div>
<div class="container">
    <table class="table table-striped">
        <tr>
            <th>companyName</th>
            <th>c_menu</th>
            <th>c_introduction</th>
            <th>c_menuFile</th>
            <th>예약</th>
        </tr>
        <c:forEach items="${menuList}" var="menuList">
            <tr>
                <td>${menuList.companyName}</td>
                <td>${menuList.c_menu}</td>
                <td>${menuList.c_introduction}</td>
                <td>${menuList.c_menuFile}</td>
                <td><a href="/board/detail?b_id=${menuList.m_id}">예약</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
