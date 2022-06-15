<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 82102
  Date: 2022-06-02
  Time: 오후 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .icon {
            /*margin-left: 300px;*/
            text-align: center;
        }
        /*.card {*/
        /*    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);*/
        /*    max-width: 300px;*/
        /*    margin: auto;*/
        /*    text-align: center;*/
        /*    font-family: arial;*/
        /*}*/

        /*.price {*/
        /*    color: grey;*/
        /*    font-size: 22px;*/
        /*}*/

        /*.card button {*/
        /*    border: none;*/
        /*    outline: 0;*/
        /*    padding: 12px;*/
        /*    color: white;*/
        /*    background-color: #000;*/
        /*    text-align: center;*/
        /*    cursor: pointer;*/
        /*    width: 100%;*/
        /*    font-size: 18px;*/
        /*}*/

        /*.card button:hover {*/
        /*    opacity: 0.7;*/
        /*}*/
    </style>
</head>
<body>

<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="icon">

    <a href="/main/location?c_location=청담">
        <img src="../../../resources/img/icon1.jpeg"  style="width:5%">&nbsp;&nbsp;</a>
    <a href="/main/location?c_location=성수">
        <img src="../../../resources/img/icon2.jpeg" style="width:5%"></a>&nbsp;&nbsp;
    <a href="/main/location?c_location=서래마을">
        <img src="../../../resources/img/icon3.jpeg" style="width:5%"></a>&nbsp;&nbsp;
    <a href="/main/location?c_location=여의도">
        <img src="../../../resources/img/icon4.jpeg" style="width:5%"></a>&nbsp;&nbsp;
    <a href="/main/location?c_location=홍대">
        <img src="../../../resources/img/icon5.jpeg" style="width:5%"></a>&nbsp;&nbsp;
    <a href="/main/location?c_location=이태원">
        <img src="../../../resources/img/icon6.jpeg" style="width:5%"></a>

</div>
<div class="container mt-3">
<%--    <form action="/main/search" method="get">--%>
        <select name="searchType" id="search">
            <option value="companyName">레스토랑</option>
            <option value="c_location">지역</option>
        </select>
        <input type="text" name="q" id="q" placeholder="검색어를 입력해주세요">
        <input type="button" onclick="searchList()" value="검색">

</div>
<div class="container" id="searchList">
    <table class="table table-striped">
        <tr>
            <th>companyName</th>
            <th>c_menu</th>
            <th>c_introduction</th>
            <th>c_location</th>
            <th>예약</th>
        </tr>
        <c:forEach items="${menuList}" var="menuList">
            <tr>
                <td><a href="/menu/detail?companyName=${menuList.companyName}"> ${menuList.companyName}</a></td>
                <td>${menuList.c_menu}</td>
                <td>${menuList.c_introduction}</td>
                <td>${menuList.c_location}</td>
                <td><a href="/boot/save?companyName=${menuList.companyName}">예약</a></td>
            </tr>
        </c:forEach>
    </table>
</div>

<%--<h2 style="text-align:center">Product Card</h2>--%>
<%--<c:forEach items="${menuList}" var="menuList">--%>
<%--    <div class="card">--%>
<%--        <img src="${pageContext.request.contextPath}/upload/${menuList.c_menuFileName}" alt="Denim Jeans" style="width:100%">--%>
<%--        <h1>${menuList.companyName}</h1>--%>
<%--        <p class="price">${menuList.c_introduction}</p>--%>
<%--        <p>Some text about the jeans. Super slim and comfy lorem ipsum lorem jeansum. Lorem jeamsun denim lorem jeansum.</p>--%>
<%--        <p><button>Add to Cart</button></p>--%>
<%--    </div>--%>
<%--</c:forEach>--%>

</body>
<script>
    function searchList(){
        console.log("함수호출");
        const search=document.getElementById("search").value;
        const q=document.getElementById("q").value;

        $.ajax({
            type:"get",
            url:"/main/search",
            data:{
                "searchType":search,
                "q":q
            },
            dataType:"json",
            success:function (result){
                console.log("성공");
                let output = "<table class='table table-striped'>";
                output += "<th>companyName</th>";
                output += "<th>c_menu</th>";
                output += "<th>c_introduction</th>";
                output += "<th>c_location</th></tr>";
                for(let i in result){
                    output += "<tr>";
                    output += "<td>" + result[i].companyName + "</td>";
                    output += "<td>" + result[i].c_menu + "</td>";
                    output += "<td>" + result[i].c_introduction + "</td>";
                    output += "<td>"+  result[i].c_location+"</td>";
                    output += "</tr>";
                }
                output+="</table>";
                document.getElementById('searchList').innerHTML=output;
                },
        });
    }
</script>
</html>
