<%--
  Created by IntelliJ IDEA.
  User: 锴
  Date: 2018/3/3
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>PeiqiGo智能客服系统<decorator:title/></title>
    <meta http-equiv="Content-Type" content="charset=utf-8"/>
    <meta name="keywords" content="Peiqi,智能"/>
    <meta name="description" content="PeiqiGo智能客服系统">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main2.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css" />
    <decorator:head/>
</head>

<body>
<div class="header" >
    <a href=""> <div class="logo"><img src="${pageContext.request.contextPath}/static/images/logo.png" /> </div></a>

    <div class="user_content">
        <div class="user_info">
            <img src="${pageContext.request.contextPath}/static/images/user.jpg"/>
            <p style="overflow: hidden">欢迎您，admin</p>
        </div>
        <div class="user_hidden">
            <button class="btn btn-info">账户信息</button>
            <a href="/PeiqiGoManage/"><button class="btn btn-info">切换账户</button></a>
        </div>
    </div>
</div>
<div id="navLwapper">
    <ul>
        <li>
            <a href="/PeiqiGoManage/web/situation" class="situation">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PeiqiGo概况
            </a>
        </li>
        <li>
            <a href="/PeiqiGoManage/web/setting" class="setting">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PeiqiGo设置
            </a>
        </li>
        <li>
            <a href="/PeiqiGoManage/web/knowledge" class="knowledge">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;知识库
            </a>
        </li>
        <li>
            <a href="/PeiqiGoManage/web/extend" class="extend">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;能力扩展
            </a>
        </li>
        <li>
            <a href="/PeiqiGoManage/web/analyze" class="analysis">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数据分析
            </a>
        </li>
        <li>
            <a href="/PeiqiGoManage/web/update" class="update">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;版本升级
            </a>
        </li>


    </ul>
</div>
<decorator:body/>
</body>
</html>
