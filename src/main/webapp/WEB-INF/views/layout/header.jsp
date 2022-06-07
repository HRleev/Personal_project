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
        * {box-sizing: border-box;}
        body {
            font-family: Verdana, sans-serif;
            text-align:center;
        }

        .mySlides {
            display: none;
        }

        /*img {vertical-align: middle;}*/

        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            margin-left: 25%;
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
        /*.btn-group me-2{*/
        /*    float: right;*/
        /*}*/
    </style>
</head>
<body>
<header>
        <div class="btn-group m-2" name="icons" role="group" aria-label="First group">
            <a href="/" class="btn btn-outline-secondary">Home</a> &nbsp;
            <a href="/member/save" class="btn btn-outline-secondary">개인회원가입</a> &nbsp;
            <a href="/company/save" class="btn btn-outline-secondary">개인회원가입</a> &nbsp;
            <a href="/member/login" class="btn btn-outline-secondary">개인회원로그인</a> &nbsp;
            <a href="/company/login" class="btn btn-outline-secondary">기업회원로그인</a> &nbsp;
            <c:if test="${sessionScope.loginMemberId !=null}">
            <a href="/member/logout" class="btn btn-outline-secondary">로그아웃</a>&nbsp;
            </c:if>
            <c:if test="${sessionScope.loginCompanyId !=null}">
            <a href="/company/logout" class="btn btn-outline-secondary">로그아웃</a>&nbsp;
            </c:if>
        </div>

            <div class="slideshow-container">

                <div class="mySlides fade">
                    <div class="numbertext">1 / 3</div>
                    <img src="https://pbs.twimg.com/media/EgmdnC2VgAAJ9LA.jpg" style="width:100%">
                    <div class="text">Caption Text</div>


                </div>

                <div class="mySlides fade">
                    <div class="numbertext">2 / 3</div>
                    <img src="https://pbs.twimg.com/media/EgmdnC2VgAAJ9LA.jpg" style="width:100%">
                    <div class="text">Caption Two</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">3 / 3</div>
                    <img src="https://pbs.twimg.com/media/EgmdnC2VgAAJ9LA.jpg" style="width:100%">
                    <div class="text">Caption Three</div>
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
