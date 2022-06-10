<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-10
  Time: 오전 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateMenu</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<article>
    <div class="container" role="main">
        <form action="/menu/update" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="c_menu">시그니쳐</label>
                <input type="text" class="form-control" name="c_menu" id="c_menu"
                       placeholder="시그니쳐"></div>
            <div class="mb-3">
                <label for="c_location">지역</label>
                <input type="text" class="form-control" name="c_location" id="c_location"
                       placeholder="지역"></div>
            <div class="mb-3">
                <label for="companyName">companyName</label>
                <input type="text" class="form-control" name="companyName"value="${sessionScope.loginCompanyName}" id="companyName"
                       placeholder="${sessionScope.loginCompanyName}" readonly></div>
            <div class="mb-3">
                <label for="c_introduction">소개</label>
                <textarea class="form-control" rows="5" name="c_introduction" id="c_introduction"
                          placeholder="내용을 입력해 주세요"></textarea></div>
            <div class="mb-3"><label for="c_menuFile">파일</label>
                <input type="file" class="form-control" name="c_menuFile"
                       id="c_menuFile" placeholder="첨부파일을입력해주세요"></div>
            <div>
                <input type="submit" class="btn btn-sm btn-primary" value="저장">
            </div>
        </form>

    </div>
</article>
</body>
</html>
