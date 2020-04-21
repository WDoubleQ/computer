<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>第四步页面</title>
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
        <div class="p-5" style="margin-top: 50px;color: white;">
            <h1>选择2-4个中意的外观嘛！</h1>
        </div>
        <div style="height: 300px">

                <div class="row p-5">
                    <c:if test="${not empty list}">
                        <c:forEach items="${list}" var="computer" varStatus="status">
                            <c:if test="${(status.index+1) mod 3 !=1}">
                                <div class="col-4 border" id="${computer.image}" onclick="clickImage('${computer.id}')">
                                    <img src="${fns:getDictValue('ip', 'ip', 'http://127.0.0.1:8080')}/${computer.image}" class="img-fluid rounded">
                                </div>
                            </c:if>
                            <c:if test="${(status.index+1) mod 3==1}">
                                <div class="row p-5">
                                    <div class="col-4 border" id="${computer.image}" onclick="clickImage('${computer.id}')">
                                        <img src="${fns:getDictValue('ip', 'ip', 'http://127.0.0.1:8080')}/${computer.image}" class="img-fluid rounded">
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </c:if>
                </div>

            <form>
                <div class="row mt-5">
                    <div class="col-4 offset-8">
                        <button type="submit" class="btn btn-primary">下一步</button>
                    </div>

                </div>
            </form>

        </div>
    </div>
</div>
</body>
<script>
    function clickImage(id) {
        alert(id);
    }
</script>
</html>
