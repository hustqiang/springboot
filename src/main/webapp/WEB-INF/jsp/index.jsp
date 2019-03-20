<%@page language="java" pageEncoding="utf-8" %>
<% pageContext.setAttribute("contextPath", request.getContextPath());%>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>开始使用layui</title>
    <link rel="stylesheet" href="${contextPath}/layui-v2.4.5/layui/css/layui.css">
</head>
<body class="layui-layout-body">





<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">GTD</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    用户
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item">
                    <a href="javascript:;">聚焦</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" tab_id="111" data-url="${contextPath}/inbox">收集箱</a></dd>
                        <dd><a href="javascript:;" tab_id="111" data-url="${contextPath}/todayToDo">今日待办</a></dd>
                        <dd><a href="javascript:;" tab_id="222" data-url="${contextPath}/tomorrowToDo">明日待办</a></dd>
                        <dd><a href="javascript:;" tab_id="333">日程</a></dd>
                        <dd><a href="javascript:;" tab_id="555">等待</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="">组织</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">项目</a></dd>
                        <dd><a href="javascript:;">习惯</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="">情境</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">办公室</a></dd>
                        <dd><a href="javascript:;">家里</a></dd>
                        <dd><a href="javascript:;">电话</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="">完成</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">已完成</a></dd>
                        <dd><a href="javascript:;">垃圾箱</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <div class="layui-tab" lay-filter="mytab" lay-allowClose="true">
                <ul class="layui-tab-title">
                    <li class="layui-this">
                        <i class="layui-icon">
                            &#xe620;
                            <cite>控制面板</cite>
                        </i>
                    </li>
                </ul>
                <div class="layui-tab-content" style="min-height: 800px;border: none">
                    <div class="layui-tab-item layui-show">
                        <%--<iframe src="../index.html"></iframe>--%>
                        <iframe ></iframe>
                    </div>

                </div>
            </div>

        </div>

    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="${contextPath}/layui-v2.4.5/layui/layui.all.js"></script>
<script>
    //JavaScript代码区域
    var $ = layui.jquery,
        element = layui.element;
    $(document).on('click', 'a', function () {
        if (!$(this)[0].hasAttribute("tab_id") || $(this).attr("tab_id") === '') {
            return;
        }
        var layid = $(this).attr("tab_id");
        var text = $(this).text();
        var dataurl = $(this).attr("data-url");
        // alert(layid);
        var tabs = $(".layui-tab-title").children();
        var msg = true;
        $.each(tabs, function (i, item) {
            var tabid = $(item).attr("lay-id");
            // alert('遍历' + tabid);
            if (tabid === layid) {
                // alert('相等了');
                msg = false;
                return false;
            }

        });
        // alert('msg' + msg);
        if (msg) {
            element.tabAdd('mytab', {
                title: text,
                content: "<iframe frameborder='0' width='100%' height='100%' src='" + dataurl + "'></iframe>",
                id: layid
            });
        }
        resize();
        element.tabChange('mytab', layid);


    });

    function resize() {
        var $content = $(".layui-tab-content");
        $content.height($(this).height() - 200);
        $content.find('iframe').each(function () {
            $(this).height($content.height());
            $(this).width("100%")

        })

    }

    $(window).on('resize', function () {
        var $content = $(".layui-tab-content");
        $content.height($(this).height() - 200);
        $content.find('iframe').each(function () {
            $(this).height($content.height());
            $(this).width("100%")

        });

    });
    $(window).on('load', function () {
        var $content = $(".layui-tab-content");
        $content.height($(this).height() - 200);
        $content.find('iframe').each(function () {
            $(this).height($content.height());
            $(this).width("100%")

        });

    })


    /* element.on('nav(test)', function(elem){
         console.log(JSON.stringify(elem)); //得到当前点击的DOM对象
         var layid=location.hash.replace(/^#tab=/,'');
         alert(layid);
         element.tabChange('mytab',layid);
     });*/

</script>
</body>
</html>