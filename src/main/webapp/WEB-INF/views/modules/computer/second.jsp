<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>第二步页面</title>
    <link rel="stylesheet" href="${ctxStatic}/bootstrap4/css/bootstrap.min.css"/>
    <script src="${ctxStatic}/jquery/jquery-3.5.0.min.js" type="text/javascript"></script>
    <script src="${ctxStatic}/bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctxStatic}/jquery-validation/1.11.1/jquery.validate.js" type="text/javascript"></script>
    <script>
        $(document).ready(function() {
            $("#form").validate({
                rules: {
                    play: {required: true},
                },
                messages: {
                    play: "请选择"
                },
            });


        });
    </script>
</head>
<body>
<div class="container">
    <div style="height: 500px;background-color: #0ab1cb">
        <div style="text-align: right">
            <button type="button" class="btn btn-secondary">首页</button>
            <button type="button" class="btn btn-secondary">背后的故事</button>
            <button type="button" class="btn btn-secondary">联系我们</button>
        </div>
        <div class="p-5" style="margin-top: 50px;color: white;">
            <h1>选择娱乐属性</h1>
        </div>
        <form id="form" action="${front}/computer/third">
            <input name="money" value="${money}" hidden/>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4"></div>
                <div class="col-4 pr-5">
                    <div>
                        <ul class="list-group">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                小小的娱乐需求
                                <div class="custom-control custom-checkbox">
                                    <input name="play" value="1" type="checkbox" class="custom-control-input" id="customCheck1">
                                    <label class="custom-control-label" for="customCheck1"></label>
                                </div>

                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                小小的游戏需求
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="play" value="2" class="custom-control-input" id="customCheck2">
                                    <label class="custom-control-label" for="customCheck2"></label>
                                </div>

                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                很高的游戏需求
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="play" value="3" class="custom-control-input" id="customCheck3">
                                    <label class="custom-control-label" for="customCheck3"></label>
                                </div>

                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-4 offset-8">
                    <button type="submit" class="btn btn-primary">下一步</button>
                </div>

            </div>
        </form>

    </div>
    <div class="row mt-5">
        <div class="col-3">
            <div class="card">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">第一步</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
        <div class="col-3">
            <div class="card">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">第二步</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
        <div class="col-3">
            <div class="card">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">第三步</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
        <div class="col-3">
            <div class="card">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">第四步</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $("input[name='play']").click(function () {
        $("input[name='play']").not(this).prop("checked", false)
    });
</script>
</body>
</html>