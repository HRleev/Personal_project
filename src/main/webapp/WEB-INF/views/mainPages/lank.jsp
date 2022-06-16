<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-14
  Time: 오후 3:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>lank</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    .wrapper {
        max-width: 1200px;
        margin: 0 auto;
        background: #fff;
        width: auto;
        position: relative;
        background: #fff;
        min-height: 100%;
        box-shadow: 0 0 20px rgba(0, 0, 0, .05);
    }
</style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="wrapper" id="wrapperDiv">
    <div class="img swiper-lazy swiper-lazy-loaded"
         style="background-image: url(https://image.toast.com/aaaaaqx/catchtable/shopinfo/s716/716_19112817413723085.jpg?detail750&quot;);"><br>
<div class="container">
    <table class="table table-striped">
        <tr>
            <th>상호명</th>
            <th>대표메뉴</th>
            <th>소개</th>
            <th>지역</th>
            <th>예약</th>
        </tr>
        <c:forEach items="${lank}" var="lank">
            <tr>
                <td><a href="/menu/detail?companyName=${lank.companyName}"> ${lank.companyName}</a></td>
                <td>${lank.c_menu}</td>
                <td>${lank.c_introduction}</td>
                <td>${lank.c_location}</td>
                <td><a href="/boot/save?companyName=${lank.companyName}">예약</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
    </div>
</div>
</body>
</html>
