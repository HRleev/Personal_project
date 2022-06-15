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
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <style>
        @font-face {
            font-family: 'SuncheonB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/SuncheonB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }


        body {
            background: #C5E1A5;
        }

        form {
            width: 60%;
            margin: 60px auto;
            background: #efefef;
            padding: 60px 120px 80px 120px;
            text-align: center;
            -webkit-box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
            box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            position: relative;
            margin: 40px 0px;
        }

        .label-txt {
            position: absolute;
            top: -1.6em;
            padding: 10px;
            font-family: 'SuncheonB';
            font-size: .8em;
            letter-spacing: 1px;
            color: rgb(120, 120, 120);
            transition: ease .3s;
        }

        .input {
            width: 100%;
            padding: 10px;
            background: transparent;
            border: none;
            outline: none;
        }

        .line-box {
            position: relative;
            width: 100%;
            height: 2px;
            background: #BCBCBC;
        }

        .line {
            position: absolute;
            width: 0%;
            height: 2px;
            top: 0px;
            left: 50%;
            transform: translateX(-50%);
            background: #8BC34A;
            transition: ease .6s;
        }

        .input:focus + .line-box .line {
            width: 100%;
        }

        .label-active {
            top: -3em;
        }

        button {
            display: inline-block;
            padding: 12px 24px;
            background: rgb(220, 220, 220);
            font-weight: bold;
            color: rgb(120, 120, 120);
            border: none;
            outline: none;
            border-radius: 3px;
            cursor: pointer;
            transition: ease .3s;
        }

        button:hover {
            background: #8BC34A;
            color: #ffffff;
        }

    </style>
</head>
<body>
<div class="container">
    <form action="/member/save" method="post">
        <label>
            <p class="label-txt">아이디</p>
            <input type="text" class="input" onblur="duplicateCheck()" id="memberId" name="memberId">
            <div id="dup-check-result"></div>
            <div class="line-box">
                <div class="line"></div>
            </div>
        </label>
        <label>
            <p class="label-txt">비밀번호</p>
            <input type="text" class="input" name="memberPassword" onblur="regular()" id="memberPassword"
                   placeholder="영문 숫자 포함 5자 이상">
            <div class="line-box">
                <div class="line"></div>
            </div>
        </label>
        <label>
            <p class="label-txt">이름</p>
            <input type="text"class="input" name="memberName">
            <div class="line-box">
                <div class="line"></div>
            </div>
        </label>
        <label>
            <p class="label-txt">Email</p>
            <input type="text" class="input" name="memberEmail">
            <div class="line-box">

                <div class="line"></div>
            </div>
        </label>
        <label>
            <p class="label-txt">전화번호</p>
            <input type="text" class="input" name="memberMobile">
            <div class="line-box">
                <div class="line"></div>
            </div>
        </label>
        <label>
            <p class="label-txt">지역</p>
            <input type="text" class="input" name="memberLocation">
            <div class="line-box">
                <div class="line"></div>
            </div>
        </label>
            <button type="submit">제출</button>
    </form>
</div>
</body>
<script>
    const duplicateCheck = () => {
        const memberId=document.getElementById("memberId").value;
        const checkResult=document.getElementById("dup-check-result");
        $.ajax({
            type:"post",
            url:"/member/duplicate_check",
            data:{"memberId":memberId},
            dataType:"text",
            success:function (result){
                if(result=="ok"){
                    checkResult.innerHTML="사용 가능한 아이디 입니다";
                    checkResult.style.color="green";
                }else{
                    checkResult.innerHTML="사용중인 아이디 입니다.";
                    checkResult.style.color="red";
                }
            }
        });
    }
    const regular = () => {

    }
</script>
<script>
    $(document).ready(function(){

        $('.input').focus(function(){
            $(this).parent().find(".label-txt").addClass('label-active');
        });

        $(".input").focusout(function(){
            if ($(this).val() == '') {
                $(this).parent().find(".label-txt").removeClass('label-active');
            };
        });
    });
</script>
</html>
