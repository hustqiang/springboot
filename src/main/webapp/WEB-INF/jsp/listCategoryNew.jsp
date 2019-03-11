<%@page language="java" contentType="text/html; UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<table border="1" align="center" cellspacing="0">
    <thead>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>编辑</td>
        <td>删除</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="category" items="${page.content}">
        <tr>
            <td>
                <c:out value="${category.id}"></c:out></td>
            <td>
                <c:out value="${category.name}"></c:out>
            </td>
            <td>
                <a href="editCategory?id=${category.id}">编辑</a>
            </td>
            <td>
                <a href="deleteCategory?id=${category.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<br>

<div>
    <a href="?start=0">[首 页]</a>
    <a href="?start=${page.number -1}">[上一页]</a>
    <a href="?start=${page.number +1}">[下一页]</a>
    <a href="?start=${page.totalPages -1}">[末 页]</a>
</div>
<br>

<form action="/addCategory" method="post">
    name:<input name="name"><br>
    <button type="submit">新增</button>
</form>