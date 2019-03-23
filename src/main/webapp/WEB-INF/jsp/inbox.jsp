<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% pageContext.setAttribute("contextPath", request.getContextPath());%>

<link rel="stylesheet" href="${contextPath}/layui-v2.4.5/layui/css/layui.css">
<script src="${contextPath}/layui-v2.4.5/layui/layui.js" charset="utf-8"></script>

<script type="text/html" id="barDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="add">添加</button>
        <button class="layui-btn layui-btn-sm" lay-event="delete">删除</button>
        <button class="layui-btn layui-btn-sm" lay-event="update">编辑</button>
    </div>
</script>

<table class="layui-hide" id="demo" lay-filter="test"></table>

<script>
    layui.use('table', function () {
        var table = layui.table;

        //执行一个 table 实例
        table.render({
            elem: '#demo'
            , height: 420
            , url: '${contextPath}/getInboxList'
            , title: '收集箱'
            , page: true //开启分页
            , toolbar: '#barDemo' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
            // ,totalRow: true //开启合计行
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'id', title: 'ID', width: 80, sort: true, fixed: 'left', totalRowText: '合计：'}
                , {field: 'title', title: '标题', width: 80}
                , {field: 'description', title: '描述', width: 90, sort: true}
                , {field: 'priority', title: '优先级', width: 80, sort: true}
                , {field: 'allDay', title: '全天任务', width: 80, sort: true}
                , {
                    field: 'startTime', title: '开始时间', templet: function (d) {
                        return showTime(d.endTime);
                    }, width: 80, sort: true
                }
                , {
                    field: 'endTime', title: '结束时间', templet: function (d) {
                        return showTime(d.endTime);
                    }, width: 80, sort: true
                }
                , {
                    field: 'estimateTime', title: '预估时间', templet: function (d) {
                        return showTime(d.endTime);
                    }, width: 80, sort: true
                }
                , {field: 'environment', title: '情境', width: 80, sort: true}
                , {field: 'project', title: '项目', width: 80, sort: true}
                , {field: 'label', title: '标签', width: 80, sort: true}
                , {field: 'repeatOrNot', title: '是否重复', width: 80, sort: true}
                , {field: 'remind', title: '提醒', width: 80, sort: true}
            ]]
        });

        function showTime(tempDate) {
            var d = new Date(tempDate);
            var year = d.getFullYear();
            var month = d.getMonth();
            month++;
            var day = d.getDate();
            var hours = d.getHours();

            var minutes = d.getMinutes();
            var seconds = d.getSeconds();
            month = month < 10 ? "0" + month : month;
            day = day < 10 ? "0" + day : day;
            hours = hours < 10 ? "0" + hours : hours;
            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;

            var time = year + "-" + month + "-" + day + " " + hours + ":" + minutes + ":" + seconds;
            return time;
        }

        //监听事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id);
            switch (obj.event) {
                case 'add':
                    addInbox();
                    break;
                case 'delete':
                    layer.msg('删除');
                    break;
                case 'update':
                    layer.msg('编辑');
                    break;
            }
            ;
        });

        function addInbox() {
            //页面层
            layer.open({
                type: 2,
                title:'收集箱',
                offset: 't',
                skin: 'layui-layer-rim', //加上边框
                area: ['520px', '700px'], //宽高
                content:'createInbox'
            });
        }
    });
</script>