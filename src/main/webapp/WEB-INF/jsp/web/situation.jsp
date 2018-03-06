<%--
  Created by IntelliJ IDEA.
  User: 锴
  Date: 2018/3/4
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/situation.css">
    <title>概况</title>
</head>


<body>
<div id="situation">
    <div id="box1">

        <img src="${pageContext.request.contextPath}/static/images/8.png"/>
        <div class="box1-text">
            &nbsp;昨日聊天数
        </div>
        <span id="yesterday-num">
					15
				</span>
    </div>
    <div id="box2">
        <img src="${pageContext.request.contextPath}/static/images/11.png"/>
        <div class="box2-text">
            昨日知识库使用数
        </div>
        <span id="yesterday-usekl">
					&nbsp;1&nbsp;
				</span>
    </div>
    <div id="box3">
        <img src="${pageContext.request.contextPath}/static/images/10.png"/>
        <div class="box3-text">
            昨日新增用户
        </div>
        <span id="yesterday-user">
					&nbsp;3&nbsp;
				</span>
    </div>
    <div id="box4">
        <img src="${pageContext.request.contextPath}/static/images/9.png"/>
        <div class="box4-text">
            昨日知识库使用次数
        </div>
        <span id="yesterday-newuser">
					&nbsp;0&nbsp;
				</span>
    </div>
</div>
<div id="ann-ques">
    <div id="announcement">
        <div class="ann">公告</div>
        <img src="${pageContext.request.contextPath}/static/images/announcement.png"/>
    </div>
    <div id="question">
        <div class="ques">
            ?&nbsp;	问答
        </div>
    </div>
</div>

</body>
</html>
