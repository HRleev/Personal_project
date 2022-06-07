<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-07
  Time: 오후 4:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>menuSave</title>
    <style>
        body {
            padding-top: 70px;
            padding-bottom: 30px;
        }
    </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<body>
<article>
    <div class="container" role="main">
        <form action="/menu/save" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="c_menu">시그니쳐</label>
                <input type="text" class="form-control" name="c_menu" id="c_menu"
                       placeholder="시그니쳐"></div>
            <div class="mb-3">
                <label for="companyName">companyName</label>
                <input type="text" class="form-control" name="companyName"value="${sessionScope.loginCompanyId}" id="companyName"
                       placeholder="${sessionScope.loginCompanyId}" readonly></div>
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
