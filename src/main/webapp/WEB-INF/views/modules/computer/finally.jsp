<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>最终推荐页面</title>
    <link rel="stylesheet" href="${ctxStatic}/bootstrap4/css/bootstrap.min.css"/>
    <script src="${ctxStatic}/jquery/jquery-3.5.0.min.js" type="text/javascript"></script>
    <script src="${ctxStatic}/bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<div class="container">
    <div style="background-color: #0ab1cb">
        <div style="text-align: right">
            <button type="button" class="btn btn-secondary">首页</button>
            <button type="button" class="btn btn-secondary">背后的故事</button>
            <button type="button" class="btn btn-secondary">联系我们</button>
        </div>
        <div class="p-5 text-center" style="margin-top: 50px;color: white;">
            <h1>嗯哼，以下就是最终推荐结果</h1>
        </div>

        <div class="row p-5">
            <div class="col-3">
                <c:forEach items="${finallyList}" var="computer" varStatus="status">
                    <div class="card">
                        <img src="${fns:getDictValue('ip', 'ip', 'http://127.0.0.1:8080')}/${computer.image}" class="card-img-top" alt="...">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">${computer.recRate}<span class="badge badge-primary">推荐率</span></li>
                            <li class="list-group-item">${computer.brand}<span class="badge badge-primary">品牌</span></li>
                            <li class="list-group-item">${computer.model}<span class="badge badge-primary">型号</span></li>
                            <li class="list-group-item">${computer.flashPoint}<span class="badge badge-primary">闪光点</span></li>
                            <li class="list-group-item">${computer.used}<span class="badge badge-primary">使用场景</span></li>
                            <li class="list-group-item">${computer.upgrade}<span class="badge badge-primary">后期升级</span></li>
                        </ul>
                        <div class="card-body">
<%--                            <a href="#" class="card-link">Card link</a>--%>
<%--                            <a href="#" class="card-link">Another link</a>--%>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</body>
</html>
