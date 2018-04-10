
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="static/js/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <script type="text/javascript" src="static/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="static/css/login2.css">
    <script type="text/javascript" src="static/js/login.js"></script>
</head>

<body>
<div id="all" align="center">
    <form:form class="login form-horizontal" role="form"  method="post"  modelAttribute="TUser">
        <img src="static/images/logo1.png" width="250px"/>
        <div class="log_term" style="margin-top:60px ">
            <div class="col-lg-3" style="height: 100%">账号</div>
            <div class="col-lg-9" style="height: 100%">
                <form:input type="text" class="form-control" name="username" id="username" placeholder="请输入用户名" path="userName"/>
            </div>
        </div>
        <div class="log_term" >
            <div class="col-lg-3" style="height: 100%">密码</div>
            <div class="col-lg-9" style="height: 100%">
                <form:input type="password" class="form-control" name="password" id="password" placeholder="请输入密码" path="userPassword"/>
            </div>
        </div>
        <button type="submit" class="btn btn-primary" id="submitBtn" >管理员登录</button>
        <span style="left: 10px;">忘记密码?</span>
    </form:form>


</div>
</body>
<script>
    $(document).ready(function () {
        var w=($(window).height());
        $("#all").height(w);

    })
    $(window).resize(function() {
        var w=($(window).height());
        $("#all").height(w);

    });
</script>

</html>
