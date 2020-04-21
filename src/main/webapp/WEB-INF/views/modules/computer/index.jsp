<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>购机指导首页</title>
    <link rel="stylesheet" href="${ctxStatic}/bootstrap4/css/bootstrap.min.css"/>
    <script src="${ctxStatic}/jquery/jquery-3.5.0.min.js" type="text/javascript"></script>
    <script src="${ctxStatic}/bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<div class="container">
    <div style="height: 500px;background-color: #0ab1cb">
        <div style="text-align: right">
            <button type="button" class="btn btn-secondary">首页</button>
            <button type="button" class="btn btn-secondary">背后的故事</button>
            <button type="button" class="btn btn-secondary">联系我们</button>
        </div>
        <div style="text-align: center;margin-top: 100px;color: white">
            <h1>笔记本电脑购机指导网站</h1>
        </div>
        <div style="text-align: center;margin-top: 100px; color: white">
            <h5>技术创造平等</h5>
        </div>
    </div>
    <div style="background-color: white">
        <div class="row m-5">
            <div class="col-4"></div>
            <div class="col-4">
                <form class="form-inline" action="${front}/computer/second">
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword2" class="sr-only">请输入最高预算</label>
                        <input type="text" name="money" class="form-control" id="inputPassword2" placeholder="请输入最高预算">
                    </div>
                    <button type="submit" class="btn btn-primary mb-2">下一步</button>
                </form>
            </div>
            <div class="col-4"></div>
        </div>
        <div class="row">
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
</div>
</body>
</html>