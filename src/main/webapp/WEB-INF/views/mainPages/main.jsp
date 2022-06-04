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
            /*background-image: url("https://cdn-icons-png.flaticon.com/512/25/25231.png");*/
            background-color: aquamarine;
            border-radius: 50%;
            margin-left: 40px;
        }

    </style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>

<div class="circle">
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
