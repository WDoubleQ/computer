<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>第三步页面</title>
    <link rel="stylesheet" href="${ctxStatic}/bootstrap4/css/bootstrap.min.css"/>
    <script src="${ctxStatic}/jquery/jquery-3.5.0.min.js" type="text/javascript"></script>
    <script src="${ctxStatic}/bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<div class="container">
    <div style="height: 600px;background-color: #0ab1cb">
        <div style="text-align: right">
            <button type="button" class="btn btn-secondary">首页</button>
            <button type="button" class="btn btn-secondary">背后的故事</button>
            <button type="button" class="btn btn-secondary">联系我们</button>
        </div>
        <div class="p-5" style="margin-top: 50px;color: white;">
            <h1>请选择必要属性</h1>
        </div>
        <form action="${front}/computer/fourth">
            <input name="price" value="${money}" hidden/>
            <input name="playAttr" value="${play}" hidden/>
            <div class="row">
                <div class="col-4">
                    <div class="card text-white bg-secondary mb-3">
                        <div class="card-header">请选择CPU属性</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-9" style="background-color: white">
                                    <span style="color: black">均衡性为主</span>
                                </div>
                                <div class="col-3">
                                    <div class="custom-control custom-checkbox">
                                        <input name="cpuAttr" value="1" type="checkbox" class="custom-control-input" id="customCheck1">
                                        <label class="custom-control-label" for="customCheck1"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-5">
                                <div class="col-9" style="background-color: white">
                                    <span style="color: black">性能至上</span>
                                </div>
                                <div class="col-3">
                                    <div class="custom-control custom-checkbox">
                                        <input name="cpuAttr" value="2" type="checkbox" class="custom-control-input" id="customCheck2">
                                        <label class="custom-control-label" for="customCheck2"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card bg-light mb-3">
                        <div class="card-header">均衡性为主与性能至上的区别</div>
                        <div class="card-body">
                            <h5 class="card-title">Light card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card text-white bg-secondary mb-3">
                        <div class="card-header">请选择屏幕属性</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-9" style="background-color: white">
                                    <span style="color: black">我需要一块很大的屏幕</span>
                                </div>
                                <div class="col-3">
                                    <div class="custom-control custom-checkbox">
                                        <input name="screenAttr" value="1" type="checkbox" class="custom-control-input" id="customCheck3">
                                        <label class="custom-control-label" for="customCheck3"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-5">
                                <div class="col-9" style="background-color: white">
                                    <span style="color: black">需要放进包里，还要适合长时间办公</span>
                                </div>
                                <div class="col-3">
                                    <div class="custom-control custom-checkbox">
                                        <input name="screenAttr" value="2" type="checkbox" class="custom-control-input" id="customCheck4">
                                        <label class="custom-control-label" for="customCheck4"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
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
</body>
</html>
