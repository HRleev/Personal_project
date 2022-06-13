<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-03
  Time: 오후 4:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>header1</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="/resources/js/jquery.js"></script>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <style>
        @font-face {
            font-family: 'SuncheonB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/SuncheonB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        * {
            align-content: center;
            box-sizing: border-box;
        }

        body {
            font-family: 'SuncheonB';
            /*font-family: Verdana, sans-serif;*/
            /*align-content:center;*/
        }

        .mySlides {
            display: none;
        }

        /*img {vertical-align: middle;}*/

        /* Slideshow container */
        .slideshow-container {
            margin-top: 10px;
        }

        /* Caption text */
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

        .active {
            background-color: #717171;
        }

        /* Fading animation */
        .fade {
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @keyframes fade {
            from {
                opacity: .4
            }
            to {
                opacity: 1
            }
        }

        /* On smaller screens, decrease text size */
        @media only screen and (max-width: 300px) {
            .text {
                font-size: 11px
            }
        }
        .nav {
            font-family: 'SuncheonB';
            font-size: 20px;
        }
        a{
            size: 20px;
            color: #0d0d0d;
        }
    </style>
</head>
<body>
<header>
    <div class="nav">
        <div class="btn-group m-2" role="group" aria-label="First group">
            <a href="/main/main" ><img src="../../../resources/img/gat.PNG" style="width: 120px; height: 60px"></a>&nbsp;&nbsp;
            <c:if test="${sessionScope.loginMemberName==null}">
                <a href="/member/save" >개인회원가입</a> &nbsp;
            </c:if>
            <c:if test="${sessionScope.loginCompanyName==null}">
                <a href="/company/save" >기업회원가입</a> &nbsp;
            </c:if>
            <c:if test="${sessionScope.loginId==null}">
                <a href="/member/login" >로그인</a> &nbsp;&nbsp;
            </c:if>
            <c:if test="${sessionScope.loginMemberName !=null}">
                <a href="/member/logout">로그아웃</a>&nbsp;
            </c:if>
            <c:if test="${sessionScope.loginCompanyName !=null}">
                <a href="/company/logout">로그아웃</a>&nbsp;
            </c:if>
            <c:if test="${sessionScope.loginMemberName eq 'admin'}">
                <a href="/member/findAll">개인회원목록</a>&nbsp;
            </c:if>
            <c:if test="${sessionScope.loginMemberName eq 'admin'}">
                <a href="/company/findAll">기업회원목록</a>&nbsp;
            </c:if>
            <c:if test="${sessionScope.loginCompanyName!= null}">
                <a href="/company/detail">myPage</a>&nbsp;
            </c:if>
            <c:if test="${sessionScope.loginMemberName!= null}">
                <a href="/member/detail">myPage</a>&nbsp;
            </c:if>
        </div>
    </div>
    <div class="container" style="width: 1000px">
        <div class="slideshow-container">

            <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <img src="../../../resources/img/산타로.PNG" style="width:100%" height="40%">
            </div>
            <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                <img src="../../../resources/img/아쿠아.PNG" style="width:100%" height="40%">
            </div>
            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img src="../../../resources/img/풍부한.PNG" style="width:100%" height="40%">
            </div>
        </div>
    </div>
    <br>

    <div style="text-align:center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>
</header>
</body>
<script>
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 3000); // Change image every 2 seconds
    }
</script>
</html>
