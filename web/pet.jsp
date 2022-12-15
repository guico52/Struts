<%@ page import="java.util.List" %>
<%@ page import="bean.Pet" %>
<%@ page import="DAO.PetDao" %>
<%@ page import="bean.PetOwner" %>
<%@ page import="DAO.PetOwnerDao" %><%--
  Created by IntelliJ IDEA.
  User: 13054
  Date: 2022/12/15
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Pet> petList = PetDao.getAllPets();
    List<PetOwner> petOwnerList = PetOwnerDao.getAllPetOwners();
%>
<table>
    <tr>
        <td>客户id</td>
        <td>客户名称</td>
        <td>客户电话</td>
        <td>客户地址</td>
    </tr>
    <%
        if(petOwnerList == null || petOwnerList.size() == 0){
    %>
    <tr>
        <td colspan="4">没有客户信息</td>
    </tr>
    <%
        } else {
            for (PetOwner petOwner : petOwnerList) {
    %>
    <tr>
        <td><%=petOwner.getId()%></td>
        <td><%=petOwner.getName()%></td>
        <td><%=petOwner.getTelephone()%></td>
        <td><%=petOwner.getAddress()%></td>
    <%
            }
        }
    %>

</table>

<table>
    <tr>
        <td>宠物id</td>
        <td>宠物姓名</td>
        <td>年龄</td>
        <td>类型</td>
        <td>所属客户id</td>
    </tr>
    <%
        if(petList == null || petList.size() == 0){
    %>
    <tr>
        <td colspan="5">没有宠物信息</td>
    </tr>
    <%
        }else{
            for (Pet pet : petList) {
    %>
    <tr>
        <td><%=pet.getId()%></td>
        <td><%=pet.getName()%></td>
        <td><%=pet.getAge()%></td>
        <td><%=pet.getType()%></td>
        <td><%=pet.getOwner_id()%></td>

    <%
            }
        }
    %>

</table>

</body>
</html>
