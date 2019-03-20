<%--
  Created by IntelliJ IDEA.
  User: zhangqiang
  Date: 2019-03-21
  Time: 06:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% pageContext.setAttribute("contextPath", request.getContextPath()); %>
<html>
<head>
    <link rel="stylesheet" href="${contextPath}/layui-v2.4.5/layui/css/layui.css">
    <script src="${contextPath}/layui-v2.4.5/layui/layui.js"></script>

</head>
<body>
<form class="layui-form"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
    <div class="layui-form-item">
        <label class="layui-form-label">标题</label>
        <div class="layui-input-block">
            <input type="text" name="" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">开始时间</label>
        <div class="layui-input-block">
            <select name="interest" lay-filter="startTime">
                <option value="0">收集箱</option>
                <option value="1">今日待办</option>
                <option value="2">下一步行动</option>
                <option value="3">明日待办</option>
                <option value="4">日程</option>
                <option value="5">将来/也许</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">全天任务</label>
        <div class="layui-input-block">
            <input type="checkbox" lay-skin="switch">
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">请填写描述</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">截止时间</label>
        <div class="layui-inline">
            <input type="text" class="layui-input" id="test1">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
    <!-- 更多表单结构排版请移步文档左侧【页面元素-表单】一项阅览 -->
</form>


<script>
    layui.use(['form', 'laydate'], function () {
        var form = layui.form;
        $ = layui.jquery;
        laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
            elem: '#test1' //指定元素
        });

        //监听提交
        form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });

    });

    layui.use('laydate', function () {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#test1' //指定元素
        });
    });
</script>

</body>
</html>
