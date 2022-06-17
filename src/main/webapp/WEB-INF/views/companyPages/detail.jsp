<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <div id="parah"></div>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
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
            width: 80%;
            height: auto;
        }

        .ton {
            margin-top: 30px;
            margin-left: 20px;
        }

        .icon {
            margin-top: 10px;
            width: 70px;
            height: 60px;
            margin-left: 7px;
        }
    </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>

<div class="wrapper" id="wrapperDiv">
    <div class="img swiper-lazy swiper-lazy-loaded"
         style="background-image: url(https://image.toast.com/aaaaaqx/catchtable/shopinfo/s716/716_19112817413723085.jpg?detail750&quot;);"><br>
        <div class="h2" style="text-align: center;margin-top: 20px"><h2>${menu.companyName}</h2></div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <img src="${pageContext.request.contextPath}/upload/${company.companyFileName}" class="guide-img">
                </div>
                <div class="col">
                    <img src="${pageContext.request.contextPath}/upload/${menu.c_menuFileName}" class="guide-img"></div>
            </div>
        </div>
    </div>

    <div class="restaurant-features" style="text-align: center; margin-bottom: 20px">
        <span class="feature-item">
            <img src="https://catchtable.co.kr/web-static/static_webapp_v2/img/icons-mood/ic_parking.svg" class="icon">
            <span class="label">주차 가능</span>
        </span>
        <span class="feature-item">
            <img src="https://catchtable.co.kr/web-static/static_webapp_v2/img/icons-mood/ic_group_seat.svg"
                 class="icon">
            <span class="label">단체석</span>
        </span>
        <span class="feature-item">
            <img src="https://catchtable.co.kr/web-static/static_webapp_v2/img/icons-mood/ic_sommelier.svg"
                 class="icon">
            <span class="label">전문 소믈리에</span>
        </span>
        <span class="feature-item">
            <img src="https://catchtable.co.kr/web-static/static_webapp_v2/img/icons-mood/ic_rent.svg" class="icon">
            <span class="label">대관 가능</span>
        </span>
    </div>
    <div class="form-group" style="margin-top: 10px">
        <label>리뷰</label>
        <input type="text" name="companyName" id="companyName" value="${menu.companyName}"
               style="width: 300px; margin-bottom: 10px" readonly>
        <textarea class="form-control" onblur="b_check()" name="reviewContents" id="review" row="3"
                  style="margin-bottom: 10px"></textarea>
    </div>
    <input type="hidden" name="memberName" id="memberName" value="${sessionScope.loginMemberName}">
    <button onclick="updateForm()" class="btn btn-primary" id="review-btn" style="margin-bottom: 10px">리뷰작성</button>
    <div id="comment-list">
        <table class="table table-striped">
            <tr>
                <th>리뷰번호</th>
                <th>작성자</th>
                <th>내용</th>
                <th>작성시간</th>
            </tr>
            <c:forEach items="${review}" var="review">
                <tr>
                    <td>${review.r_id}</td>
                    <td>${review.memberName}</td>
                    <td>${review.reviewContents}</td>
                    <td>${review.reviewTime}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
<script>
    const updateForm = () => {
        const memberName = '${sessionScope.loginMemberName}';
        const companyName = '${menu.companyName}';
        const rContents = document.getElementById("review").value;
        $.ajax({
            type: "post",
            url: "/review/save",
            data: {
                "memberName": memberName,
                "companyName": companyName,
                "reviewContents": rContents,
            },
            dataType: "json",
            success: function (result) {
                let output = "<table class='table table-striped'><tr>";
                output += "<th>리뷰번호</th>";
                output += "<th>작성자</th>";
                output += "<th>내용</th>";
                output += "<th>작성시간</th>";
                for (let i in result) {
                    output += "<tr>";
                    output += "<td>" + result[i].r_id + "</td>";
                    output += "<td>" + result[i].memberName + "</td>";
                    output += "<td>" + result[i].reviewContents + "</td>";
                    output += "<td>" + moment(result[i].reviewTime).format("YYYY-MM-DD HH:mm:ss") + "</td></tr>";
                }
                output += "</table>";
                document.getElementById('comment-list').innerHTML = output;
                document.getElementById('review').value = '';
            }
        });
    }
    const b_check = () => {
        console.log("함수호출");
        const memberName = '${sessionScope.loginMemberName}';
        const companyName = '${menu.companyName}';
        const input = document.getElementById("review");
        const btn = document.getElementById("review-btn");
        $.ajax({
            type: "post",
            url: "/review/idCheck",
            data: {
                "memberName": memberName,
                "companyName": companyName,
            },
            dataType: "text",
            success: function (result) {
                if (result == "no") {
                    alert("예약자만 리뷰 할 수 있습니다.");
                    $(btn).attr('disabled', 'disabled');
                    $(input).attr('disabled', 'disabled');
                } else {
                    input.disabled = false;
                }
            }
        });
    }
</script>
</html>
