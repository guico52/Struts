<%--
  Created by IntelliJ IDEA.
  User: guico
  Date: 2022/12/3
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr><a href="lookTeacher.jsp">查看教师</a></tr>
    <tr><a href="addTeacher.jsp">添加教师</a></tr>
    <tr>更新教师</tr>
</table>
<form action="updateTeacher.jsp">
    输入id以查询：
    <input type="text" name="id">
    <input type="submit" value="提交">
</form>
</body>
</html>
