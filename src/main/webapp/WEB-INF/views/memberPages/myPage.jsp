<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-09
  Time: 오후 3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>myPage</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="container">
    <div class="row">
        <div class="col">
            <table class="table table-striped">

                <tr>
                    <td>memberId</td>
                    <td>${member.memberId}</td>
                </tr>
                <tr>
                    <td>memberPassword</td>
                    <td>${member.memberPassword}</td>
                </tr>
                <tr>
                    <td>memberName</td>
                    <td>${member.memberName}</td>
                </tr>
                <tr>
                    <td>memberEmail</td>
                    <td>${member.memberEmail}</td>
                </tr>
                <tr>
                    <td>memberMobile</td>
                    <td>${member.memberMobile}</td>
                </tr>
                <tr>
                    <td>memberLocation</td>
                    <td>${member.memberLocation}</td>
                </tr>
            </table>
        </div>
        <div class="col">
            <div class="table table-striped">
                <table class="table">
                    <tr>
                        <th>예약번호</th>
                        <th>상호명</th>
                        <th>예약인원</th>
                        <th>날짜</th>
                        <th>예약변경</th>
                    </tr>
                    <c:forEach items="${bootList}" var="bootList">
                    <tr>
                        <td>${bootList.b_id}</td>
                        <td>${bootList.companyName}</td>
                        <td>${bootList.bootStrength}</td>
                        <td>${bootList.bootDate}</td>
                        <td>
                            <button class="btn_show" onclick="b_id('${bootList.b_id}')">선택</button>
                        </td>
                    </tr>
                    </c:forEach>
            </div>
            </table>
            <article>
                <div class="update_boot" role="main" style="display: none">
                    <form action="/boot/update" method="post">
                        <div class="mb-3">
                            <label for="b_id">예약번호</label>
                            <input type="text" class="form-control" name="b_id"
                                   id="b_id" readonly></div>
                        <div class="mb-3">
                            <label for="memberName">memberName</label>
                            <input type="text" class="form-control" name="memberName"
                                   value="${sessionScope.loginMemberName}"
                                   id="memberName" placeholder="${sessionScope.loginMemberName}" readonly></div>
                        <div class="mb-3">
                            <label for="datepiker">날짜선택</label>
                            <input type="date" class="form-control" name="bootDate" id="datepiker"></div>
                        <div class="mb-3">
                            <label for="bootStrength">인원</label>
                            <input type="text" class="form-control" name="bootStrength" id="bootStrength"></div>
                        <div>
                            <input type="submit" class="btn btn-sm btn-primary" value="예약변경">
                        </div>
                    </form>
                </div>
            </article>
        </div>
    </div>
</div>
</div>
</body>
<script>
    $(function () {
        $('.btn_show').click(function () {
            $('.update_boot').show();
            $('.btn btn-sm btn-primary').hide();
        });
    });

    $(function () {
        $("#datepiker").datepicker({
            dateFormat: 'yy-mm-dd'
        });
    });

    function b_id(b_id) {
        document.getElementById("b_id").value = b_id;
    }
</script>
</html>
