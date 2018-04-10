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
        }
        #all{
            position: absolute;
            top: 60px;
            left: 180px;
            width: calc(100% - 60px);
        }
        #all table{
            margin-top: 3%;
            width: 80%;
            margin-left: 7%;
            background-color: white;
            border-style: solid;
            border-color: #afb7b5;
            border-width: 1px;
            margin-right: 10%;
        }
        th{
            height: 5%;
            background-color: white;
            border-style: solid;
            border-color: #afb7b5;
            border-width: 1px;

        }
        tr{
            height: 60px;
        }
        .tr1{
            background-color: #99cdff;
        }
        .tr2{
            background-color: #ebebeb;
        }
        td{
            border-style: solid;
            border-color: #afb7b5;
            border-width: 1px;
        }
        table tr td div.answer{
            width: 200px;
            white-space: nowrap !important;/*不换行*/
            text-overflow: ellipsis;/*超出部分用...代替*/
            overflow: hidden;/*超出隐藏*/
        }
        .pages{
            width: 15%;
            height: 45px;
            margin-left: 40%;
            border-style: solid;
            border-color: #afb7b5;
            border-width: 1px;
            border-radius: 10px;
        }
        .page_term{
            width: 25%;
            height: 100%;
            float: left;
            border-right-style: solid;
            border-color: #afb7b5;
            border-width: 1px;
            color: #66a4c4;
            font-size: 0.8vw;
            line-height: 40px;

        }
        .page_term:hover{
            background-color:#99cdff ;
            color: white;
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap2.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.min.js"></script>
</head>
<body>
    <div id="all">
        <table class="table active table-hover">
            <tr>
                <th style="width:10%; ">问题 </th>
                <th style="width:57%;">答案</th>
                <th style="width:8%; ">使用次数</th>
                <th style="width:10%; ">解决问题次数</th>
                <th style="width:10%; ">未解决次数</th>
                <th style="width:5%; ">操作</th>
            </tr>
            <%
                int i = 0;

            %>
            <c:forEach begin="0" step="1" items="${knowledgeList}" var="list" varStatus="knowledgelist">
                <%
                    if(i==0){
                        out.print("<tr class=\"tr1\">");
                        i=1;
                    }
                    else{
                        out.print("<tr class=\"tr2\">");
                        i=0;
                    }
                %>
                <%--<tr class="tr2">--%>
                <td>${list.question1}</td>
                <td>${list.answer}</td>
                <td>${list.useNum}</td>
                <td>${list.solveNum}</td>
                <td>${list.unsolveNum}</td>
                <td class="delete" id="${list.id}"> <a href="javascript:if(confirm('确实要删除该内容吗?'))location='/PeiqiGoManage/web/knowledge/${list.id}/delete'">删除</a></td>
                <%--</tr>--%>
                <%
                    out.print("</tr>");
                %>

            </c:forEach>
        </table>
 <p style="color: #aaaaaa;margin-left:44%">一共${page.pages}页,当前第${page.pageNum}页</p>
        <div class="pages" align="center">
            <a href="/PeiqiGoManage/web/knowledge?page=${page.firstPage}"> <div class="page_term" style="border-bottom-left-radius: 10px;border-top-left-radius: 10px;">首页</div></a>
            <a href="/PeiqiGoManage/web/knowledge?page=${page.prePage}">  <div class="page_term">上一页</div></a>
            <a href="/PeiqiGoManage/web/knowledge?page=${page.nextPage}"> <div class="page_term">下一页</div></a>
            <a href="/PeiqiGoManage/web/knowledge?page=${page.lastPage}"> <div class="page_term" style="border-style: none;border-bottom-right-radius: 10px;border-top-right-radius: 10px;">尾页</div></a>

        </div>


    </div>
</body>

</html>
