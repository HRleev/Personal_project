<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-08
  Time: 오후 5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>boot</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<article>
    <div class="container" role="main">
        <form action="/boot/save" method="post">
            <div class="mb-3">
                <label for="companyName">companyName</label>
                <input type="text" class="form-control" name="companyName" value="${menu.companyName}"
                       id="companyName" placeholder="${menu.companyName}" readonly></div>
            <div class="mb-3">
            <label for="memberName">memberName</label>
            <input type="text" class="form-control" name="memberName" value="${sessionScope.loginMemberName}"
                   id="memberName" placeholder="${sessionScope.loginMemberName}" readonly></div>
            <div class="mb-3">
                <label for="datepiker">날짜선택</label>
                <input type="date" class="form-control" name="bootDate" id="datepiker"></div>
            <div class="mb-3">
                <label for="bootStrength">인원</label>
                <input type="text" class="form-control" name="bootStrength" id="bootStrength" ></div>
            <div>
                <input type="submit" class="btn btn-sm btn-primary" value="예약">
            </div>
        </form>
    </div>
</article>
</body>
<script>
    $(function () {
        $("#datepiker").datepicker({
            dateFormat :'yy-mm-dd'
        });
    });
</script>
</html>
