<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-08
  Time: 오후 5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>boot</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<article>
    <div class="container" role="main">
        <form action="/boot/save" method="post" name="saveForm">
            <div class="mb-3">
                <label for="companyName">상호명</label>
                <input type="text" class="form-control" name="companyName" value="${menu.companyName}"
                       id="companyName" placeholder="${menu.companyName}" readonly></div>
            <div class="mb-3">
            <label for="memberName">예약자명</label>
            <input type="text" class="form-control" name="memberName" value="${sessionScope.loginMemberName}"
                   id="memberName" placeholder="${sessionScope.loginMemberName}" readonly></div>
            <div class="mb-3">
                <label for="datepiker">날짜선택</label>
                <input type="date" class="form-control" name="bootDate" id="datepiker"></div>
            <div class="mb-3">
                <label for="bootStrength">인원</label>
                <input type="text" class="form-control" name="bootStrength" id="bootStrength" ></div>
            <div>
                <input type="submit" onclick="boot()"id="save" class="btn btn-sm btn-primary" value="예약">
            </div>
        </form>
    </div>
</article>
</body>
<script>
    $(function () {
        $("#datepiker").datepicker({
            dateFormat :'yy-mm-dd'
        });
    });

    $(document).ready(function (){
        $("#save").click(function (){
            boot();
        })
    })
    function boot() {
        console.log("함수호출");
        var IMP = window.IMP;
        IMP.init(' imp72624975');
        IMP.request_pay({
            pg: "kakaopay",
            pay_method: 'card',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: '결제',
            amount: 10000,
            buyer_email: '구매자 이메일',
            buyer_name: '구매자 이름',
            buyer_tel: '구매자 번호',
            buyer_addr: '구매자 주소',
            buyer_postcode: '구매자 주소',
            m_redirect_url: '/member/detail'
        }, function (rsp) {
            if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                location.href = '결제완료후 갈 url';
            } else {
                var msg = '결제에 실패하였습니다.';
                rsp.error_msg;

            }
        });
    }


</script>
</html>
