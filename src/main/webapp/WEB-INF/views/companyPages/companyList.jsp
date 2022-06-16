<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-07
  Time: 오전 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>companyList</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
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
<div class="table table-striped">
    <table class="table">
        <tr>
            <th>번호</th>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>상호명</th>
            <th>Email</th>
            <th>전화번호</th>
            <th>지역</th>
            <th>삭제</th>

        </tr>
        <c:forEach items="${companyList}" var="companyList">
        <tr>
            <td>${companyList.c_id}</td>
            <td>${companyList.companyId}</td>
            <td>${companyList.companyPassword}</td>
            <td>${companyList.companyName}</td>
            <td>${companyList.companyEmail}</td>
            <td>${companyList.companyMobile}</td>
            <td>${companyList.companyLocation}</td>

            <td><a href="/company/delete?c_id=${companyList.c_id}">삭제</a></td>
        </tr>
        </c:forEach>
    </table>
</div>
    </div>

</div>
</body>
</html>
