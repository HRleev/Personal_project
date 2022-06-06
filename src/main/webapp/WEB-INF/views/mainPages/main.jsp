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
        .circle {
            height: 80px;
            width: 80px;
            border-radius: 50%;
            margin-left: 40px;
        }
        .icon{
            margin-left: 300px;
        }

    </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>

<div class="icon">
    <img src="../../../resources/img/icon1.jpeg" style="width:10%">&nbsp;&nbsp;
    <img src="../../../resources/img/icon2.jpeg" style="width:10%">&nbsp;&nbsp;
    <img src="../../../resources/img/icon3.jpeg" style="width:10%">&nbsp;&nbsp;
    <img src="../../../resources/img/icon4.jpeg" style="width:10%">&nbsp;&nbsp;
    <img src="../../../resources/img/icon5.jpeg" style="width:10%">&nbsp;&nbsp;
    <img src="../../../resources/img/icon6.jpeg" style="width:10%">
</div>
<div class="container">
    <table class="table table-striped">
        <tr>
            <th>companyName</th>
            <th>c_menu</th>
            <th>c_menuFile</th>
        </tr>
    </table>
</div>
</body>
</html>
