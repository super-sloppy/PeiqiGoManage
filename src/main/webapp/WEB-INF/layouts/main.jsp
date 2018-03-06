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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css">
    <decorator:head/>
</head>

<body>
<div class="header" >
    <div class="logo">
        <a href="" class="peiqi">

        </a>

    </div>
    <div class="profile">
        <img src="${pageContext.request.contextPath}/static/images/user.jpg"/>
    </div>
    <div class="hello">Hello! admin</div>
    <a href="/PeiqiGoManage/" class="logout">注销</a>
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
            <a href="" class="extend">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;能力扩展
            </a>
        </li>
        <li>
            <a href="" class="analysis">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数据分析
            </a>
        </li>
        <li>
            <a href="" class="update">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;版本升级
            </a>
        </li>


    </ul>
</div>
<decorator:body/>
</body>
</html>
