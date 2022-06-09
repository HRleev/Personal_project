<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-07
  Time: 오후 4:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyPage</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<button class=btn-primary onclick=location.href="/menu/save">메뉴입력</button>
<div class="container">
    <div class="row">
        <div class="col">
            <table class="table table-striped">
                <tr>
                    <td>companyId</td>
                    <td>${company.companyId}</td>
                </tr>
                <tr>
                    <td>companyPassword</td>
                    <td>${company.companyPassword}</td>
                </tr>
                <tr>
                    <td>companyName</td>
                    <td>${company.companyName}</td>
                </tr>
                <tr>
                    <td>companyEmail</td>
                    <td>${company.companyEmail}</td>
                </tr>
                <tr>
                    <td>companyMobile</td>
                    <td>${company.companyMobile}</td>
                </tr>
                <tr>
                    <td>companyNumber</td>
                    <td>${company.companyNumber}</td>
                </tr>
                <tr>
                    <td>companyLocation</td>
                    <td>${company.companyLocation}</td>
                </tr>
            </table>
        </div>
        <div class="col">
            <table class="table table-striped">
                <tr>
                    <td>메뉴소개</td>
                    <td>${menu.c_introduction}</td>
                </tr>
                <tr>
                    <td>사진</td>
                    <td><img src="${pageContext.request.contextPath}/upload/${menu.c_menuFileName}"></td>
                </tr>
                <tr>
                    <td><a href="/menu/delete?companyName=${menu.companyName}">삭제</a></td>

            </table>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <table class="table table-striped">
                <tr>
                    <th>b_id</th>
                    <th>memberName</th>
                    <th>bootStrength</th>
                    <th>bootDate</th>
                </tr>
                <c:forEach items="${bootList}" var="bootList">
                    <tr>
                        <td>${bootList.b_id}</td>
                        <td>${bootList.memberName}</td>
                        <td>${bootList.bootStrength}</td>
                        <td>${bootList.bootDate}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
