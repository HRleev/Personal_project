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
            width: 600px;
            height: 500px;
        }

        .ton {
            margin-top: 30px;
            margin-left: 20px;
        }
        .icon{
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
         style="background-image: url(https://image.toast.com/aaaaaqx/catchtable/shopinfo/s716/716_19112817413723085.jpg?detail750&quot;);">
        <div class="container">
            <div class="row">
                <div class="col">
                    <img src="${pageContext.request.contextPath}/upload/${menu.c_menuFileName}" class="guide-img">
                </div>
                <div class="col">
                    <div class="ton">
                        <div class="row">
                            <h2>${menu.companyName}</h2><br></div>
                        <div class="row">
                            <h2>${menu.c_introduction}</h2><br></div>
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
    <c:if test="${sessionScope.loginMemberName eq boot.memberName}">
        <form action="/review/save" method="post">
            <div class="form-group">
                <label>리뷰</label>
                <input type="text" name="companyName" id="companyName" value="${menu.companyName}" readonly>
                <textarea class="form-control" name="reviewContents" id="review" row="3"></textarea>
            </div>
            <input type="hidden" name="memberName" id="memberName" value="${boot.memberName}">
            <button onclick="update()" class="btn btn-primary" id="review-btn">리뷰작성</button>

        </form>
    </c:if>
    <div id="comment-list">
        <table class="table table-striped">
            <tr>
                <th>리뷰번호</th>
                <th>작성자</th>
                <th>내용</th>
                <th>작성시간</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach items="${review}" var="review">
                <tr>
                    <td>${review.r_id}</td>
                    <td>${review.memberName}</td>
                    <td>${review.reviewContents}</td>
                    <td>${review.reviewTime}</td>
                        <%--                    <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"--%>
                        <%--                                        value="${review.reviewTime}" /></td>--%>
                    <c:if test="${sessionScope.loginMemberName eq comment.memberName}">
                        <%--                        <td><input type="hidden" id="reviews" name="reviewContents" disabled >--%>
                        <td><button onclick="updateForm()" class="btn btn-primary" >리뷰수정</button></td>
                    </c:if>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
<script>
    // function updateForm(){
    //     $('#reviews').removeAttr(disabled);
    // }

    const update=()=>{


        const memberName=${sessionScope.loginMemberName};
        const companyName=${menu.companyName};
        const rContents =document.getElementById("review").value;
        $.ajax({
            type:"post",
            url:"/review/save",
            data:{
                "memberName":memberName,
                "companyName":companyName,
                "reviewContents":rContents,
            },
            dataType:"json",
            success:function (result){
                let output="<table class='table table-striped'><tr>";
                output +="<th>리뷰번호</th>";
                output +="<th>작성자</th>";
                output +="<th>내용</th>";
                output +="<th>작성시간</th>";
                for(let i in result){
                    output +="<tr>";
                    output +="<td>"+ result[i].r_id+"<td>";
                    output +="<td>"+ result[i].memberName+"<td>";
                    output +="<td>"+ result[i].reviewContents+"<td>";
                    output +="<td>"+ moment(result[i].reviewTime).format("YYYY-MM-DD HH:mm:ss")+"</td>";
                }
                output+="</table>";
                document.getElementById('comment-list').innerHTML=output;
                document.getElementById('reviewContents').value='';
            }
        });
    }
</script>
</html>
