<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div style="width: 500px; border:1px solid lightgreen; margin: 200px auto; padding:80px;">
    <strong>系统出现异常!</strong> <br>
    <Strong>异常原因是：</Strong>${Exception};
    <br>
    <Strong>出现异常的地址是:</Strong> ${url};
</div>