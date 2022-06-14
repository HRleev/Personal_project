<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-09
  Time: 오후 3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>myPage</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="container">
    <div class="row">
        <div class="col">
            <table class="table table-striped">

                <tr>
                    <td>memberId</td>
                    <td>${member.memberId}</td>
                </tr>
                <tr>
                    <td>memberPassword</td>
                    <td>${member.memberPassword}</td>
                </tr>
                <tr>
                    <td>memberName</td>
                    <td>${member.memberName}</td>
                </tr>
                <tr>
                    <td>memberEmail</td>
                    <td>${member.memberEmail}</td>
                </tr>
                <tr>
                    <td>memberMobile</td>
                    <td>${member.memberMobile}</td>
                </tr>
                <tr>
                    <td>memberLocation</td>
                    <td>${member.memberLocation}</td>
                </tr>
            </table>
        </div>
        <div class="col">
            <div class="table table-striped">
                <table class="table">
                    <tr>
                        <th>예약번호</th>
                        <th>상호명</th>
                        <th>예약인원</th>
                        <th>날짜</th>
                    </tr>
                    <c:forEach items="${bootList}" var="bootList">
                    <tr>
                        <td>${bootList.b_id}</td>
                        <td>${bootList.companyName}</td>
                        <td>${bootList.bootStrength}</td>
                        <td>${bootList.bootDate}</td>
                    </tr>
                    </c:forEach>
            </div>
            </table>
        </div>
    </div>
</div>
</body>
</html>
