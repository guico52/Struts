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
    <%--导入css--%>
    <link href="teacher.css" rel="stylesheet">
</head>
<body>
<table>
    <div>
        <a href="lookTeacher.jsp">查看教师</a>
        添加教师
        <a href="findTeacher.jsp">更新教师</a>
    </div>


<form action="addTeacher.action">
    <table>
        <tr>
            <td>教师编号</td>
            <td><input type="text" name="id" id="id"> </td>
        </tr>
        <tr>
            <td>教师姓名</td>
            <td><input type="text" name="name" id="name"></td>
        </tr>
        <tr>
            <td>教师性别</td>
            <td>
                <select name="sex" id="sex" >
                    <option value="男" selected>男</option>
                    <option value="女">女</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>教师年龄</td>
            <td><input type="number" name="age" id="age"></td>
        </tr>
        <tr>
            <td>教师职称</td>
            <td><input type="text" name="department"></td>
        </tr>
        <tr>
            <td>
                <button type="submit" onclick="check()">提交</button>
            </td>

        </tr>
    </table>
</form>
<script>
    function check() {
        var id = document.getElementById("id").value;
        var name = document.getElementById("name").value;
        var age = document.getElementById("age").value;
        if (id === "" || name === "" || age === "") {
            alert("请填写完整信息");
            return false;
        }
        return true;
    }
</script>
</body>

</html>
