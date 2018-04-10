<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Highcharts Example</title>

    <style type="text/css">

    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/update.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap2.css">
</head>
<body>

<div id="all">
    <div class="content">
        <div class="head">
            <img src="${pageContext.request.contextPath}/static/images/logo2.png" height="100%">
            <p>PeiqiGo   &nbsp; 版本 V 1.0</p>
            <button class="btn btn-info" style="margin-top: 8px;" onclick="alert('最新版本：V1.0 (已是最新版本)');">检查更新 </button>
        </div>

        <div class="intro1">
            <p class="intro_title">PeiqiGo简介</p>
            <div class="intro_content"></div>
        </div>
        <div class="intro2">
            <p class="intro_title">版本介绍</p>
            <div class="intro_content"></div>
        </div>

    </div>
</div>
</body>
</html>
