<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: guico
  Date: 2022/11/29
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<H2>this is a struts2 project</H2>
<%--登录表单--%>
<form action="login.action">
    <label>
        <s:text name="from.username"/>:
        <input type="text" name="username">
    </label>
    <label>
        <s:text name="from.password"/>:
        <input type="password" name="password">
    </label>
    <input type="submit" value="<s:text name="from.submit"/>">
</form>
    <a href="changelan.action?request_locale=zh_CN">简体中文</a>&nbsp;&nbsp;&nbsp;
    <a href="changelan.action?request_locale=en_US">English</a>
</body>
</html>
