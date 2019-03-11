<%@page language="java" contentType="text/html; ISO-8859-1" pageEncoding="utf-8" %>


<form action="/updateCategory" method="post">
    <input type="hidden" name="id" value="${category.id}">
    name:<input name="name" ${category.name} value="${category.name}"> <br>
    <button type="submit">提交</button>
</form>