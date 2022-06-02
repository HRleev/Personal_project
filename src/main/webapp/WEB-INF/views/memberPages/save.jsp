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
</head>
<body>
<div class="container">
    <%--@declare id="inputemail4"--%>
    <form action="/member/save" method="post" enctype="multipart/form-data" class="row g-3">
        <div class="col-md-12">
            <label for="inputEmail4" class="form-label">계정</label>
            <input type="text" onblur="duplicateCheck()"class="form-control" id="memberId" name="memberId" ><br>
            <div id="dup-check-result"></div>
        </div>
        <div class="col-md-12">
            <label for="inputEmail4" class="form-label">비밀번호</label>
            <input type="text" name="memberPassword" class="form-control"onblur="regular()" id="memberPassword"
                   placeholder="영문 숫자 포함 5자 이상"><br>
        </div>
        <div class="col-md-12">
            <label for="inputEmail4" class="form-label">이름</label>
            <input type="text" name="memberName"class="form-control" ><br>
        </div>
        <div class="col-md-12">
            <label for="inputEmail4" class="form-label">이메일</label>
            <input type="text" name="memberEmail" class="form-control" ><br>
        </div>
        <div class="col-md-12">
            <label for="inputEmail4" class="form-label">전화번호</label>
            <input type="text" name="memberMobile" class="form-control" ><br>
        </div>
        <div class="col-md-12">
            <label for="inputEmail4" class="form-label">프로필 사진</label>
            <input type="file" name="memberProfile" class="form-control"><br>
        </div>
        <input type="submit" value="회원가입">
    </form>
</div>
</body>
</html>
