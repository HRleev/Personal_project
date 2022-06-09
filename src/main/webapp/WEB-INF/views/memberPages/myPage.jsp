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
            <table class="table table-striped">

                <tr>
                    <td>예약내역</td>
                    <td>${boot.c_introduction}</td>
                </tr>
                <tr>
                    <td>사진</td>
                    <td><img src="${pageContext.request.contextPath}/upload/${menu.c_menuFileName}"></td>
                </tr>
                <tr>
                    <td><a href="/menu/delete?companyName=${menu.companyName}">삭제</a></td>
                    <%--                    <td><a href="/menu/update?companyName=${menu.companyName}">수정</a></td>--%>

            </table>
        </div>
    </div>
</div>
</body>
</html>
