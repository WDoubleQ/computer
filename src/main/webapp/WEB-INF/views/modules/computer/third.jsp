<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>第三步页面</title>
    <link rel="stylesheet" href="${ctxStatic}/bootstrap4/css/bootstrap.min.css"/>
    <script src="${ctxStatic}/jquery/jquery-3.5.0.min.js" type="text/javascript"></script>
    <script src="${ctxStatic}/bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctxStatic}/jquery-validation/1.11.1/jquery.validate.js" type="text/javascript"></script>
    <script>
        $(document).ready(function() {
            $("#form").validate({
                rules: {
                    cpuAttr: {required: true},
                    screenAttr: {required: true}
                },
                messages: {
                    cpuAttr: "请选择",
                    screenAttr: "请选择"
                },
            });


        });
    </script>
</head>
<body>
<div class="container">
    <div class="p-5" style="height: 900px;background-color: #0ab1cb">
        <div style="text-align: right">
            <button type="button" class="btn btn-secondary">首页</button>
            <button type="button" class="btn btn-secondary">背后的故事</button>
            <button type="button" class="btn btn-secondary">联系我们</button>
        </div>
        <div class="p-5" style="margin-top: 50px;color: white;">
            <h1>请选择必要属性</h1>
        </div>
        <form id="form" action="${front}/computer/fourth">
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
                        <div class="card-header" id="title">均衡性为主与性能至上的区别</div>
                        <div class="card-body">
                            <p class="card-text" id="content">
                                性能至上带来的问题是耗电非常快，电脑发热量更高，一般使用风扇声音偏大，适合游戏与设计专业的同学。
                                均衡为主更适合大多数同学。
                                性能至上写文章可用为2-3个小时，
                                均衡性为主写文章可达到6个小时
                            </p>
                            <h5 class="card-title">使用情景：</h5>
                            <p>
                                我需要随身带去图书馆、教室学习
                                看看电影，写写文件，可以满足大学需求就好啦
                            </p>
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
<script>
    $("input[name='cpuAttr']").click(function () {
        $("input[name='cpuAttr']").not(this).prop("checked", false)
    });

    $("input[name='screenAttr']").click(function () {
        $("input[name='screenAttr']").not(this).prop("checked", false)
    });

    $("input[name='cpuAttr']").click(function () {
        var title = "均衡性为主与性能至上的区别";
        var content = "性能至上带来的问题是耗电非常快，电脑发热量更高，一般使用风扇声音偏大，适合游戏与设计专业的同学。\n" +
            "                                均衡为主更适合大多数同学。\n" +
            "                                性能至上写文章可用为2-3个小时，\n" +
            "                                均衡性为主写文章可达到6个小时";
        var use = "我需要随身带去图书馆、教室学习\n" +
            "                                看看电影，写写文件，可以满足大学需求就好啦";
        $("#title").text(title);
        $("#content").text(content);
        $("#use").text(use);
    });

    $("input[name='screenAttr']").click(function () {
        var title = "屏幕很重要吗";
        var content = "从直观上来谈：\n" +
            "屏幕的清晰度与色域都是一个很重要的指标，它也是常常被忽视的一个方面。镜面屏幕反光，但是非常适合看电影和做设计。雾面屏幕更适合看文件。这两种屏幕各有千秋，是个仁者见仁智者见智的选择。\n" +
            "从材料上比较：\n" +
            "屏幕面板分为IPS、VA等屏幕技术，各大厂家都有自己的标准，这仅仅作为一个知识扩展，感兴趣可以去百度查一查哦！本网站是从价格去推荐最合适的电脑屏幕，所以不用去纠结这些信息啦！";
        var use = "我只需要便携性，平时查查资料，写写文件，看看电影\n";
        $("#title").text(title);
        $("#content").text(content);
        $("#use").text(use);
    });

</script>
</body>
</html>
