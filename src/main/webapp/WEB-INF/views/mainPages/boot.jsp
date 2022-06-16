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
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
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
</style>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="wrapper" id="wrapperDiv">
    <div class="img swiper-lazy swiper-lazy-loaded"
         style="background-image: url(https://image.toast.com/aaaaaqx/catchtable/shopinfo/s716/716_19112817413723085.jpg?detail750&quot;);"><br>
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
            <div class="mb-3">
                <label for="bootStrength">예약금</label>
                <input type="text" class="form-control" name="deposit" id="deposit" placeholder="10000원" ></div>
            <div>
                <input type="button" onclick="requestPay()" id="save" class="btn btn-sm btn-primary" value="예약">
            </div>
        </form>
    </div>
</article>
    </div>
</div>
</body>
<script>
    $(function () {
        $("#datepiker").datepicker({
            dateFormat :'yy-mm-dd'
        });
    });

    // $(document).ready(function (){
    //     $("#save").click(function (){
    //         boot();
    //     })
    // })
    function requestPay() {
        var IMP = window.IMP;
        IMP.init('imp72624975');
        IMP.request_pay({
            pg: "kakaopay",
            pay_method: 'card',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: '결제',
            amount: 10000,
            buyer_email: '구매자 이메일',
            buyer_name: '${sessionScope.loginMemberName}',
            buyer_tel: '구매자 번호',
            buyer_addr: '구매자 주소',
            buyer_postcode: '구매자 주소',
            m_redirect_url: 'redirect url'
        }, function (rsp) {
            if (rsp.success) {
                alert("예약이 완료 되었습니다")
                location.href = '/member/detail';
                saveForm.submit();

            } else {
                var msg = '결제에 실패하였습니다.';
                rsp.error_msg;
            }
        });
    }


</script>
</html>
