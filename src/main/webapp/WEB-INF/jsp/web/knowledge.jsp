<%--
  Created by IntelliJ IDEA.
  User: 锴
  Date: 2018/3/4
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <title>知识库</title>
    <style>
        body{
            font-family: "微软雅黑" !important;
            padding-top: 70px;
            padding-left: 190px;
        }
        table tr td div.answer{
            width: 200px;
            white-space: nowrap !important;/*不换行*/
            text-overflow: ellipsis;/*超出部分用...代替*/
            overflow: hidden;/*超出隐藏*/

        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap2.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">

    </script>
</head>
<body>
    <table class="table active table-hover">
        <tr>
            <th>问题 </th>
            <th>答案</th>
            <th>使用次数</th>
            <th>解决问题次数</th>
            <th>未解决次数</th>
            <th>操作</th>
        </tr>
        <c:forEach begin="0" step="1" items="${knowledgeList}" var="list" varStatus="knowledgelist">
        <tr>
            <td>${list.question1}</td>
            <td>${list.answer}</td>
            <td>${list.useNum}</td>
            <td>${list.solveNum}</td>
            <td>${list.unsolveNum}</td>
            <td><a href="/PeiqiGoManage/web/knowledge/${list.id}/delete">删除</a> </td>
        </tr>
        </c:forEach>
    </table>
    <p>一共${page.pages}页,当前第${page.pageNum}页</p>
    <a href="/PeiqiGoManage/web/knowledge?page=${page.firstPage}">第一页</a>
    <a href="/PeiqiGoManage/web/knowledge?page=${page.prePage}">上一页</a>
    <a href="/PeiqiGoManage/web/knowledge?page=${page.nextPage}">下一页</a>
    <a href="/PeiqiGoManage/web/knowledge?page=${page.lastPage}">最后页</a>

</body>
</html>
