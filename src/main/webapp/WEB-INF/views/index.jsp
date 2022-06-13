<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-31
  Time: 오후 1:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
    <style>
        .img-size {
            position: relative;
            width: 100%;
            height: 600px;
        }
        .img-center {
            text-align: center;
            position: absolute;
            top: 0;
            right: -200%;
            bottom: 0;
            left: -200%;
        }
        img {
            max-width: 100%;
            max-height: 100%;
            margin-top: 250px;
        }
    </style>
</head>
<body>
<div class="img-size">
    <div class="img-center">
    <a href="/main/main"><img src="../../resources/img/gat.PNG" ></a>
    </div>
</div>
</body>
</html>
