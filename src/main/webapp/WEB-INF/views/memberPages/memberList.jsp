<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-07
  Time: 오전 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberList</title>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="table table-striped">
    <table class="table">
        <tr>
            <th>m_id</th>
            <th>memberId</th>
            <th>memberPassword</th>
            <th>memberName</th>
            <th>memberEmail</th>
            <th>memberMobile</th>
            <th>memberLocation</th>
            <th>삭제</th>

        </tr>
        <c:forEach items="${memberList}" var="member">
        <tr>
            <td>${member.m_id}</td>
            <td>${member.memberId}</td>
            <td>${member.memberPassword}</td>
            <td>${member.memberName}</td>
            <td>${member.memberEmail}</td>
            <td>${member.memberMobile}</td>
            <td>${member.memberLocation}</td>

            <td><a href="/member/delete?m_id=${member.m_id}">삭제</a></td>
        </tr>
        </c:forEach>

</div>
</body>
</html>
