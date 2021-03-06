<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>로그인</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <style>
        @font-face {
            font-family: 'SuncheonB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/SuncheonB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        body {
            color: #999;
            background: #f5f5f5;
            font-family: 'SuncheonB';
            /*font-family: 'Varela Round', sans-serif;*/
        }

        .form-control {
            box-shadow: none;
            border-color: #ddd;
        }

        .form-control:focus {
            border-color: #4aba70;
        }

        .login-form {
            width: 350px;
            margin: 0 auto;
            padding: 30px 0;
        }

        .login-form form {

            color: #434343;
            border-radius: 1px;
            margin-bottom: 15px;
            background: #fff;
            border: 1px solid #f3f3f3;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }

        .login-form h4 {
            text-align: center;
            font-size: 22px;
            margin-bottom: 20px;
        }

        .login-form .avatar {
            color: #fff;
            margin: 0 auto 30px;
            text-align: center;
            width: 100px;
            height: 100px;
            border-radius: 50%;
            z-index: 9;
            background: #4aba70;
            padding: 15px;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
        }

        .login-form .avatar i {
            font-size: 62px;
        }

        .login-form .form-group {
            margin-bottom: 20px;
        }

        .login-form .form-control, .login-form .btn {
            min-height: 40px;
            border-radius: 2px;
            transition: all 0.5s;
        }

        .login-form .close {
            position: absolute;
            top: 15px;
            right: 15px;
        }

        .login-form .btn {
            background: #4aba70;
            border: none;
            line-height: normal;
        }

        .login-form .btn:hover, .login-form .btn:focus {
            background: #42ae68;
        }

        .login-form .checkbox-inline {
            float: left;
        }

        .login-form input[type="checkbox"] {
            margin-top: 2px;
        }

        .login-form .forgot-link {
            float: right;
        }

        .login-form .small {
            font-size: 13px;
        }

        .login-form a {
            color: #4aba70;
        }
    </style>
</head>
<body>
<div class="login-form">
    <div class="row">
        <div class="col">
            <h4 class="btn_show">개인회원</h4>
        </div>
        <div class="col">
            <h4 class="btn_hide">기업회원</h4>
        </div>
    </div>
    <div class="personalLogin-form">
        <form action="/member/login" method="post">
            <div class="avatar"><i class="material-icons">&#xE7FF;</i></div>
            <h4 class="modal-title">개인회원로그인</h4>
            <div class="form-group">
                <input type="text" class="form-control" name="memberId" placeholder="Id" required="required">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="memberPassword" placeholder="Password"
                       required="required">
            </div>
            <input type="submit" class="btn btn-primary btn-block btn-lg" value="로그인">
        </form>
    </div>
    <div class="companyLogin-form" style="display: none">
        <form action="/company/login" method="post">
            <div class="avatar"><i class="material-icons">&#xE7FF;</i></div>
            <h4 class="modal-title">기업회원 로그인</h4>
            <div class="form-group">
                <input type="text" class="form-control" name="companyId" placeholder="Id" required="required">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="companyPassword" placeholder="Password"
                       required="required">
            </div>
            <input type="submit" class="btn btn-primary btn-block btn-lg" value="로그인">
        </form>
    </div>
</div>
</body>
<script>
    $(function () {
        $('.btn_show').click(function () {
            $('.personalLogin-form').show();
            $('.companyLogin-form').hide();
        });
        $('.btn_hide').click(function () {
            $('.personalLogin-form').hide();
            $('.companyLogin-form').show();
        });
    });
</script>
</html>