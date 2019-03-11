<%@page language="java" contentType="text/html; ISO-8859-1" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table border="1">
    <thead>
    <tr>
        <td>id</td>
        <td>name</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="c123" items="${c123s}">
        <tr>
            <td><c:out value="${c123.id}"></c:out></td>
            <td><c:out value="${c123.name}"></c:out></td>
        </tr>
    </c:forEach>
    </tbody>
</table>