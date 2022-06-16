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
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
        .wrapper {
            max-width: 1200px;
            margin: 0 auto;
            background: #fff;
            width: auto;
            position: relative;
            background: #fff;
            min-height: 100%;
            box-shadow: 0 0 20px rgba(0, 0, 0, .05);
        }
        body {
            padding-top: 70px;
            padding-bottom: 30px;
        }
    </style>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="wrapper" id="wrapperDiv">
    <div class="img swiper-lazy swiper-lazy-loaded"
         style="background-image: url(https://image.toast.com/aaaaaqx/catchtable/shopinfo/s716/716_19112817413723085.jpg?detail750&quot;);"><br>
<article>
    <div class="container" role="main">
        <form action="/menu/save" method="post" enctype="multipart/form-data">
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
    </div>
</div>

</body>
</html>
