<%@ page import="bean.Teanchinfo" %>
<%@ page import="DAO.TeacherDao" %><%--
  Created by IntelliJ IDEA.
  User: guico
  Date: 2022/12/3
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="teacher.css" rel="stylesheet">

</head>
<body>
<%
    String id = request.getParameter("id");
    Teanchinfo teachinfo = TeacherDao.getTeacherById(id);
%>
<form action="updateTeacher.action">
    <table>
        <tr>
            <td><label>
                教师编号：
                <input type="text" name="id" value="<%=teachinfo.getId()%>">
            </label></td>
            <td><label>
                教师姓名：
                <input type="text" name="name" value="<%=teachinfo.getName()%>">
            </label></td>
            <td>
                <label for="sex">
                    教师性别：
                </label><select name="sex" id="sex">
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
            </td>
            <td><label>
                教师年龄：
                <input type="number" name="age" value="<%=teachinfo.getAge()%>">
            </label></td>
            <td><label>
                所属学院：
                <input type="text" name="department" value="<%=teachinfo.getDepartment()%>">
            </label></td>
            <td><input type="submit" value="修改"></td>
        </tr>
    </table>
</form>


</body>
</html>
