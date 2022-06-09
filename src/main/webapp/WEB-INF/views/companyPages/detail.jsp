<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-08
  Time: 오후 6:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>detail</title>
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

        .guide-img {
            margin-top: 30px;
            width: 600px;
            height: 500px;
        }

        .ton {
            margin-top: 30px;
            margin-left: 20px;
        }
        .icon{
            margin-top: 10px;
            width: 60px;
            height: 60px;
        }
    </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="wrapper" id="wrapperDiv">
    <div class="img swiper-lazy swiper-lazy-loaded"
         style="background-image: url(https://image.toast.com/aaaaaqx/catchtable/shopinfo/s716/716_19112817413723085.jpg?detail750&quot;);">
        <div class="container">
            <div class="row">
                <div class="col">
                    <img src="${pageContext.request.contextPath}/upload/${menu.c_menuFileName}" class="guide-img">
                </div>
                <div class="col">
                    <div class="ton">
                        <div class="row">
                            <h2>${menu.companyName}</h2></div>
                        <div class="row">
                            <h2>${menu.c_introduction}</h2></div>
                        <div class="row">
                            <h2>${menu.c_location}</h2></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="restaurant-features">
        <span class="feature-item">
            <img src="https://catchtable.co.kr/web-static/static_webapp_v2/img/icons-mood/ic_parking.svg" class="icon">
            <span class="label">주차 가능</span>
        </span>
        <span class="feature-item">
            <img src="https://catchtable.co.kr/web-static/static_webapp_v2/img/icons-mood/ic_group_seat.svg" class="icon">
            <span class="label">단체석</span>
        </span>
        <span class="feature-item">
            <img src="https://catchtable.co.kr/web-static/static_webapp_v2/img/icons-mood/ic_sommelier.svg" class="icon">
            <span class="label">전문 소믈리에</span>
        </span>
        <span class="feature-item">
            <img src="https://catchtable.co.kr/web-static/static_webapp_v2/img/icons-mood/ic_rent.svg" class="icon">
            <span class="label">대관 가능</span>
        </span>
    </div>
</div>
</body>
</html>
