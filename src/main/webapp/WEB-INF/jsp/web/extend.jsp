<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Highcharts Example</title>

    <style type="text/css">

    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/extend.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap-switch.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/switch.css">
</head>
<body>

<div id="all">
    <p class="extend_bt">能力扩展</p>
    <div class="content">
        <div class="term" align="center">
            <div class="term_img"><img src="${pageContext.request.contextPath}/static/images/nlsc_icon013.png" width="100%"/> </div>
            <div class="switch" data-on="info" data-off="success">
                <input type="checkbox" checked />
            </div>
        </div>


        <div class="term" align="center">
            <div class="term_img"><img src="${pageContext.request.contextPath}/static/images/nlsc_icon012.png" width="100%"/> </div>
            <div class="switch" data-on="info" data-off="success">
                <input type="checkbox" checked />
            </div>
        </div>
        <div class="term" align="center">
            <div class="term_img"><img src="${pageContext.request.contextPath}/static/images/nlsc_icon015.png" width="100%"/> </div>
            <div class="switch" data-on="info" data-off="success">
                <input type="checkbox" checked />
            </div>
        </div>
        <div class="term" align="center">
            <div class="term_img"><img src="${pageContext.request.contextPath}/static/images/nlsc_icon018.png" width="100%"/> </div>
            <div class="switch" data-on="info" data-off="success">
                <input type="checkbox" checked />
            </div>
        </div>
        <div class="term" align="center">
            <div class="term_img"><img src="${pageContext.request.contextPath}/static/images/nlsc_icon004.png" width="100%"/> </div>
            <div class="switch" data-on="info" data-off="success">
                <input type="checkbox" checked />
            </div>
        </div>
        <div class="term" align="center">
            <div class="term_img"><img src="${pageContext.request.contextPath}/static/images/nlsc_icon033.png" width="100%"/> </div>
            <div class="switch" data-on="info" data-off="success">
                <input type="checkbox" checked />
            </div>
        </div>
        <div class="term" align="center">
            <div class="term_img"><img src="${pageContext.request.contextPath}/static/images/nlsc_icon005.png" width="100%"/> </div>
            <div class="switch" data-on="info" data-off="success">
                <input type="checkbox" checked />
            </div>
        </div>
        <div class="term" align="center">
            <div class="term_img"><img src="${pageContext.request.contextPath}/static/images/nlsc_icon017.png" width="100%"/> </div>
            <div class="switch" data-on="info" data-off="success">
                <input type="checkbox" checked />
            </div>
        </div>




    </div>
</div>
</body>
<script>
    $(document).ready(function () {
        var term_width = $(".term").css("width");
        if(term_width.length==5) var  term_height = Number(term_width.toString().substr(0,3))*1.3;
        else  var  term_height = Number(term_width.toString().substr(0,2))*1.3;
        $(".term").height(term_height);
        $(".term_img").height(term_height/1.3);
    })
    $(window).resize(function() {
        var term_width = $(".term").css("width");
        if(term_width.length==5) var  term_height = Number(term_width.toString().substr(0,3))*1.3;
        else  var  term_height = Number(term_width.toString().substr(0,2))*1.3;
        $(".term").height(term_height);
        $(".term_img").height(term_height/1.3);
    });
</script>
</html>
