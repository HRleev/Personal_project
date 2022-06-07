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
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="table table-striped">
    <table class="table">
        <tr>
            <th>c_id</th>
            <th>companyId</th>
            <th>companyPassword</th>
            <th>companyName</th>
            <th>companyEmail</th>
            <th>companyMobile</th>
            <th>companyLocation</th>
            <th>삭제</th>

        </tr>
        <c:forEach items="${companyList}" var="member">
        <tr>
            <td>${company.c_id}</td>
            <td>${company.companyId}</td>
            <td>${company.companyPassword}</td>
            <td>${company.companyName}</td>
            <td>${company.companyEmail}</td>
            <td>${company.companyMobile}</td>
            <td>${company.companyLocation}</td>

            <td><a href="/company/delete?c_id=${company.c_id}">삭제</a></td>
        </tr>
        </c:forEach>

</div>
</body>
</html>
