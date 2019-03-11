<%@ page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8" %>

<form action="/upload" method="post" enctype="multipart/form-data">
    <%--type=date：<input type="date">--%>
    选择图片:<input type="file" name="file" accept="image/*">
    <input type="submit" value="上传">
</form>