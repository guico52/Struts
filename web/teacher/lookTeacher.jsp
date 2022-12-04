<%@ page import="DAO.TeacherDao" %>
<%@ page import="bean.Teanchinfo" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: guico
  Date: 2022/12/2
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="teacher.css" rel="stylesheet">

</head>
<body>
<div>
    查看教师
    <a href="addTeacher.jsp">添加教师</a>
    <a href="findTeacher.jsp">更新教师</a>
</div>


    <%
      List<Teanchinfo> allTeachers = TeacherDao.getAllTeachers();
    %>
<div>您要查询的数据库表中共有<%=allTeachers.size()%>人</div>
<table>
    <tr>
        <td>记录条数</td>
        <td>教师编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>所在学院</td>
    </tr>
    <%
        for (int i=1; i<=allTeachers.size();i++) {
            Teanchinfo teanchinfo = allTeachers.get(i-1);
    %>
    <tr>
        <td><%=i%></td>
        <td><%=teanchinfo.getId()%></td>
        <td><%=teanchinfo.getName()%></td>
        <td><%=teanchinfo.getSex()%></td>
        <td><%=teanchinfo.getAge()%></td>
        <td><%=teanchinfo.getDepartment()%></td>
        <td><a href="deleteTeacher.action?id=<%= teanchinfo.getId() %>">删除</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
