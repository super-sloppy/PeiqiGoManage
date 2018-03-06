<%--
  Created by IntelliJ IDEA.
  User: 锴
  Date: 2018/3/5
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>


<%
    String importMsg = "";
    if (request.getSession().getAttribute("msg") != null) {
        importMsg = request.getSession().getAttribute("msg").toString();
    }
    request.getSession().setAttribute("msg", "");
%>


<head>
    <title>设置</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            padding-top: 70px;
            padding-left: 190px;
            font-family: "微软雅黑";
        }
        #setting{
            position: absolute;
            top: 60px;
            left: 180px;
            right: 0;
            bottom: 0;
        }
        #setting #upLoad{

            margin-left: 50px;
            margin-top: 30px;
            margin-right: 80px;
            height: 250px;
            background: #EBEBEB;
        }
        #setting #downLoad{

            margin-left: 50px;
            margin-bottom: 20px;
            margin-right: 80px;
            margin-top: 20px;
            height: 200px;
            background: #EBEBEB;
        }
        #setting #upLoad #upLoadInput{
            position: absolute;
            top: 84px;
            left: 340px;
            height: 70px;
            width: 220px;
            font-size: 22px;
            border-radius: 25px;
            background: #383840;
        }
        #setting #upLoad img.excelPng{

            position: absolute;
            top: 66px;
            left: 326px;
            width: 100px;
            height: 100px;
        }
        #setting #upLoad #excel_file{
            position: absolute;
            top: 89px;
            left: 578px;
            width: auto;
            height: auto;

        }
        #setting #upLoad #dragPlace{
            align-content: center;
            position: absolute;
            top: 116px;
            left: 580px;
            width: 200px;
            height: 100px;
            border: dotted 4px #398439;
        }
        #setting #upLoad #upLoadIntro{
            position: absolute;
            top: 190px;
            left: 284px;
            width: auto;
            height: auto;
        }
        #setting #upLoad #importMsg{
            position: absolute;
            top: 158px;
            left: 372px;
            width: auto;
            height: auto;
        }
        #setting #downLoad #downLoadSpan{
            position: absolute;
            margin-top: 90px;
            margin-left: 58px;
        }
        #setting #downLoad #modelIntro{
            position: absolute;
            margin-top: 52px;
            margin-left: 340px;
        }
        #setting #downLoad #downLoadInput {
            position: absolute;
            top: 373px;
            left: 776px;
            height: 50px;
            width: 158px;
            font-size: 22px;
            border-radius: 25px;
            background: #269ABC;
        }
        #setting #downLoad img.downLoadPng{
            position: absolute;
            top: 370px;
            left: 779px;
            width: 56px;
            height: 56px;
        }
        #setting #upLoad img.linePng{
            position: absolute;
            top: 220px;
            left: 50px;
            width: 1038px;
            height: 78px;
        }
    </style>
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
        function check() {
            var excel_file = $("#excel_file").val();
            if (excel_file == "" || excel_file.length == 0) {
                alert("请选择文件路径！");
                return false;
            } else {
                return true;
            }
        }

        $(document).ready(function() {
            var msg = "";
            if ($("#importMsg").text() != null) {
                msg = $("#importMsg").text();
            }
            if (msg != "") {
                alert(msg);
            }
        });

    </script>

</head>
<body>




<%--<form action="setting/fileDown" method="get">--%>
    <%--<input type="submit" value="下载模板">--%>
<%--</form>--%>

<%--<div>--%>
    <%--<font color="blue">批量导入客户</font>--%>
<%--</div>--%>

<%--<form action="setting/uploadFile" method="post" enctype="multipart/form-data" onsubmit="return check();">--%>
    <%--<div style="margin: 30px;">--%>
        <%--<input id="excel_file" type="file" name="filename" accept="xlsx" size="80" />--%>
        <%--<input id="excel_button" type="submit" value="导入Excel" />--%>
    <%--</div>--%>
    <%--<font id="importMsg" color="red"><%=importMsg%></font><input type="hidden" />--%>
<%--</form>--%>
<div id="setting">
    <div id="upLoad">
        <form action="setting/uploadFile" method="post" enctype="multipart/form-data" onsubmit="return check();">
            <input type="submit" id="upLoadInput"  style="color: #fff;" value="       上传Excel文件" />
            <img src="${pageContext.request.contextPath}/static/images/excel.png" class="excelPng"/>
            <input type="file" name="filename" id="excel_file" accept="xlsx" />
            <font id="importMsg" color="red"><%=importMsg%></font><input type="hidden" />
        </form>
        <div id="dragPlace">
            拖拽文件到此处也可上传
        </div>
        <div id="upLoadIntro">
            上传说明：上传Excel文件来导入用户信息
        </div>
        <img src="${pageContext.request.contextPath}/static/images/line.png" class="linePng"/>
    </div>
    <div id="downLoad">
				<span id="downLoadSpan">
					模板下载
				</span>
        <span id="modelIntro">
					<h3>模板说明:</h3>
					<br>
					<p>用户格式必须按照xxxx</p>
					<p>xxxxxxxxxxxxxxxxxxxxxx</p>
					<p>xxxxxxxxxxxxxxxxxxxxxx</p>
				</span>
        <form action="setting/fileDown" method="get">

            <input type="submit" id="downLoadInput"   value="      下载模板" style="color: #fff;"/>
        </form>
        <img src="${pageContext.request.contextPath}/static/images/download.png" class="downLoadPng"/>
    </div>
</div>



</body>
</html>