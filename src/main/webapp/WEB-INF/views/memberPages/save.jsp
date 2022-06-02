<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-02
  Time: 오후 6:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>save</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
</head>
<body>
<div class="container">
      <form action="/member/save" method="post">
        <input type="text" onblur="duplicateCheck()" id="memberId" name="memberId"><br>
        <div id="dup-check-result"></div>
        <input type="text" name="memberPassword" onblur="regular()" id="memberPassword"
               placeholder="영문 숫자 포함 5자 이상"><br>
        <input type="text" name="memberName"><br>
        <input type="text" name="memberEmail"><br>
        <input type="text" name="memberMobile"><br>
        <input type="text" name="memberLocation"><br>
        <input type="submit" value="회원가입">
    </form>
</div>
</body>
<script>
    const duplicateCheck = () => {
            }
    const regular =() =>{

    }
</script>
</html>
