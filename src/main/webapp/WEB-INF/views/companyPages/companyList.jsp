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

</div>
</body>
</html>
