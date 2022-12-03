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
    <tr>添加教师</tr>
    <tr><a href="findTeacher.jsp">更新教师</a></tr>
</table>

<form action="addTeacher.action">
    <table>
        <tr>
            <td>教师编号</td>
            <td><input type="text" name="id"> </td>
        </tr>
        <tr>
            <td>教师姓名</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>教师性别</td>
            <td><input type="text" name="sex"></td>
        </tr>
        <tr>
            <td>教师年龄</td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td>教师职称</td>
            <td><input type="text" name="department"></td>
        </tr>
        <input type="submit" value="提交">
    </table>
</form>
</body>
</html>
