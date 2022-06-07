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
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<button class=btn-primary onclick=location.href="/menu/save">메뉴입력</button>
<div class="container">
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

</body>
</html>
