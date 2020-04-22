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
        <div>

                <div class="row p-5" >
                    <c:if test="${not empty list}">
                        <c:forEach items="${list}" var="computer" varStatus="status">
                            <c:if test="${(status.index+1) mod 3 !=1}">
                                <div class="col-4 p-5">
                                    <img height="200" width="200" src="${fns:getDictValue('ip', 'ip', 'http://127.0.0.1:8080')}/${computer.image}" class="border" id="${computer.id}" onclick="clickImage('${computer.id}')">
                                </div>
                            </c:if>
                            <c:if test="${(status.index+1) mod 3==1}">
                                <div class="row p-5">
                                    <div class="col-4 p-5">
                                        <img height="200" width="200" src="${fns:getDictValue('ip', 'ip', 'http://127.0.0.1:8080')}/${computer.image}" class="border" id="${computer.id}" onclick="clickImage('${computer.id}')">
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </c:if>
                </div>

            <form>
                <div class="row mt-5">
                    <div class="col-4 offset-8">
                        <button type="button" onclick="next()" class="btn btn-primary">下一步</button>
                    </div>

                </div>
            </form>

        </div>
    </div>
</div>
</body>
<script>
    function clickImage(id) {

        if($("#"+id).hasClass("border-primary")){
            $("#"+id).removeClass("border-primary")
        }else{
            $("#"+id).addClass("border-primary");
        }

        // $("#"+id).removeClass("border-primary");
        // alert(id);

    }

    function next() {
        var imgIds=[];
        $(".border-primary").each(function(){

            imgIds.push($(this).attr('id'))
        });

        $.ajax({
            url: "${front}/computer/finally",
            traditional:true,
            async: false,
            data: {imgIds:imgIds},
            type: "post",
            success: function (data) {
                window.location.href = "${front}/computer/finallyPage";
            }
        });
    }
</script>
</html>
