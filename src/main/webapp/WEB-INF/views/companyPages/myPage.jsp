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
    <style>

        img {
            width: 250px;
            height: 250px;
        }
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
    </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="wrapper" id="wrapperDiv">
    <div class="img swiper-lazy swiper-lazy-loaded"
         style="background-image: url(https://image.toast.com/aaaaaqx/catchtable/shopinfo/s716/716_19112817413723085.jpg?detail750&quot;);">
        <br>
        <button class=btn-primary onclick=location.href="/menu/save">메뉴입력</button>
        <div class="container">
            <div class="row">
                <div class="col">
                    <table class="table table-striped">
                        <tr>
                            <td>아이디</td>
                            <td>${company.companyId}</td>
                        </tr>
                        <tr>
                            <td>비밀번호</td>
                            <td>${company.companyPassword}</td>
                        </tr>
                        <tr>
                            <td>상호명</td>
                            <td>${company.companyName}</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>${company.companyEmail}</td>
                        </tr>
                        <tr>
                            <td>전화번호</td>
                            <td>${company.companyMobile}</td>
                        </tr>
                        <tr>
                            <td>사업자등록번호</td>
                            <td>${company.companyNumber}</td>
                        </tr>
                        <tr>
                            <td>지역</td>
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
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row">
                <table class="table table-striped">
                    <tr>
                        <th>예약번호</th>
                        <th>예약자명</th>
                        <th>예약인원</th>
                        <th>방문일</th>
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
</div>
</body>

</html>
