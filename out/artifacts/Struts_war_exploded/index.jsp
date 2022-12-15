<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: guico
  Date: 2022/11/29
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        body{
            margin: 0;
            padding: 0;
        }
        .background{
            width: 100%;
            height: 100vh;


            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background: linear-gradient(220.55deg, #8FFF85 0%, #39A0FF 100%);
        }

        .introduce{
            font-size: 25px;
            letter-spacing: 5px;

            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;

            background: linear-gradient(220.55deg, #7CF7FF 0%, #4B73FF 100%);

            height: 200px;
            width: 50%;

            border-radius: 10px;
            text-align: center;

        }

        .link{
            width: 70px;
            height: 40px;
            text-align: center;

            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;

            border-radius: 5px;
            background:  #00E0EE;
        }
        .inter{
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="background">
    <div class="introduce">
        基于Struts2+Hibernate5的教师信息管理系统<br>
        可以对教师信息进行增删改查
    </div>
    <br>
    <div class="link">
        <a class="inter" href="${pageContext.request.contextPath}/teacher/lookTeacher.jsp">点此进入</a>
    </div>
    <div class="link">
        <a href="${pageContext.request.contextPath}/pet.jsp">实验五</a>
    </div>
</div>
</body>
</html>

