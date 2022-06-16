<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-15
  Time: 오후 7:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>kakao</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

    <script>


        var IMP = window.IMP;
        IMP.init(' imp72624975');
        IMP.request_pay({
            pg : "kakaopay",
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : '결제',
            amount : 주문개수,
            buyer_email : '구매자 이메일',
            buyer_name : '구매자 이름',
            buyer_tel : '구매자 번호',
            buyer_addr : '구매자 주소',
            buyer_postcode : '구매자 주소',
            m_redirect_url : '/member/detail'
        }, function(rsp) {
            if ( rsp.success ) {
                var msg = '결제가 완료되었습니다.';
                location.href='결제완료후 갈 url';
            } else {
                var msg = '결제에 실패하였습니다.';
                rsp.error_msg;

            }
        });


    </script>
</head>
<body>

</body>
</html>