<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table border="1">
    <thead>
    <tr>
        <td>id</td>
        <td>项目</td>
        <td>金额</td>
        <td>时间</td>
        <td>备注</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="cost" items="${costList}">
        <tr>
            <td><c:out value="${cost.id}"></c:out></td>
            <td><c:out value="${cost.item}"></c:out></td>
            <td><c:out value="${cost.price}"></c:out></td>
            <td><c:out value="${cost.date}"></c:out></td>
            <td><c:out value="${cost.remark}"></c:out></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<form action="/addCost" method="post">
    时间<input type=""><br>
    项目<select></select><br>
    金额<input>
    备注<textarea></textarea>
</form>
