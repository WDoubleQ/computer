
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="apple-touch-icon" sizes="76x76" href="https://static.zkqiang.cn/images/20190818011319.png-slim">
    <link rel="icon" type="image/png" href="https://static.zkqiang.cn/images/20190818011319.png-slim">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no,shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <meta name="theme-color" content="#2f4154">
    <meta name="description" content="一位后端工程师的文章分享，主要发布 Python / Golang / Java 等编程技术类文章。">
    <meta name="author" content="张凯强">
    <meta name="keywords"
          content="Python,Python3,爬虫,Spider,Scrapy,Crawl,Crawler,数据,爬取,抓取,逆向,反编译,程序员,编程,技术,Go,Golang,Java,Spring,SpringBoot,JavaScript,分享,博客,Blog,张凯强,zkqiang">
    <title>文章详情</title>
    <style class="anchorjs"></style>
    <link rel="stylesheet" href="${ctxStatic}/blogDetail/bootstrap.min.css">
    <link rel="stylesheet" href="${ctxStatic}/blogDetail/github-markdown.min.css">
    <link rel="stylesheet" href="${ctxStatic}/blogDetail/github-gist.min.css">
    <link rel="stylesheet" href="${ctxStatic}/blogDetail/font_1749284_fmb4a04yx8h.css">
    <link rel="stylesheet" href="${ctxStatic}/blogDetail/font_1736178_ijqayz9ro8k.css">
    <link rel="stylesheet" href="${ctxStatic}/blogDetail/main.css">
    <link rel="stylesheet" href="${ctxStatic}/blogDetail/custom.css">
    <meta name="generator" content="Hexo 4.2.0">
    <link rel="alternate" href="https://zkqiang.cn/atom.xml" title="张凯强的技术分享" type="application/atom+xml">
</head>
<body>
<header style="height:70vh">
    <nav id="navbar" class="navbar fixed-top navbar-expand-lg scrolling-navbar navbar-custom navbar-dark">
        <div class="container"><a class="navbar-brand" href="https://zkqiang.cn/">&nbsp;<strong></strong>&nbsp;</a>
            <button id="navbar-toggler-btn" class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <div class="animated-icon"><span></span><span></span><span></span></div>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto text-center">
                    <!--                    <li class="nav-item"><a class="nav-link" href="https://zkqiang.cn/"><i-->
                    <!--                            class="iconfont icon-home-fill"></i> 首页</a></li>-->
                    <!--                    <li class="nav-item"><a class="nav-link" href="https://zkqiang.cn/archives/"><i-->
                    <!--                            class="iconfont icon-archive-fill"></i> 归档</a></li>-->
                    <!--                    <li class="nav-item"><a class="nav-link" href="https://zkqiang.cn/tags/"><i-->
                    <!--                            class="iconfont icon-tags-fill"></i> 标签</a></li>-->
                    <!--                    <li class="nav-item"><a class="nav-link" href="https://zkqiang.cn/links/"><i-->
                    <!--                            class="iconfont icon-link-fill"></i> 友链</a></li>-->
                    <!--                    <li class="nav-item"><a class="nav-link" href="https://zkqiang.cn/about/"><i-->
                    <!--                            class="iconfont icon-user-fill"></i> 关于</a></li>-->
                    <!--                    <li class="nav-item" id="search-btn"><a class="nav-link" data-toggle="modal"-->
                    <!--                                                            data-target="#modalSearch">&nbsp;&nbsp;<i-->
                    <!--                            class="iconfont icon-search"></i>&nbsp;&nbsp;</a>-->
                    <!--                    </li>-->
                </ul>
            </div>
        </div>
    </nav>
    <div class="view intro-2" id="background" parallax="true"
         style="background: url('https://static.zkqiang.cn/images/20190728030406.jpeg-slim') center center / cover no-repeat; transform: translate3d(0px, 0px, 0px);">
        <div class="full-bg-img">
            <div class="mask flex-center" style="background-color:rgba(0,0,0,.5)">
                <div class="container text-center white-text fadeInUp"><span class="h2" id="subtitle">${blog.title}</span><span
                        class="typed-cursor h2 typed-cursor--blink">_</span>
                    <div class="mt-3 post-meta"><i class="iconfont icon-date-fill" aria-hidden="true"></i>
                        <time datetime="2020-03-23 13:15"><fmt:formatDate value="${blog.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></time>
                    </div>
                    <div class="mt-1"><span class="post-meta mr-2">
<%--                        <i class="iconfont icon-chart"></i> 1.4k 字 </span><span class="post-meta mr-2">--%>
<%--                        <i class="iconfont icon-clock-fill"></i> 34 分钟</span>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<main>
    <div class="container-fluid">
        <div class="row">
            <div class="d-none d-lg-block col-lg-2"></div>
            <div class="col-lg-8 nopadding-md">
                <div class="container nopadding-md" id="board-ctn">
                    <div class="py-5" id="board">
                        <div class="post-content mx-auto" id="post">
                            <article class="markdown-body">
<%--                                <h2 id="简介">--%>
<%--                                    <a href="https://zkqiang.cn/posts/dc4bf29f/#%E7%AE%80%E4%BB%8B" class="headerlink"--%>
<%--                                       title="简介">--%>

<%--                                    </a>简介--%>
<%--                                    <a class="anchorjs-link " aria-label="Anchor" data-anchorjs-icon=""--%>
<%--                                       href="https://zkqiang.cn/posts/dc4bf29f/#%E7%AE%80%E4%BB%8B"--%>
<%--                                       style="opacity: 1; font: 1em / 1 anchorjs-icons; padding-left: 0.375em;">--%>

<%--                                    </a>--%>
<%--                                </h2>--%>
                               ${blog.articleData.content}




                            </article>


                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</main>
<a id="scroll-top-button" href="https://zkqiang.cn/posts/dc4bf29f/#" role="button"
   style="bottom: -60px; right: 332.516px;"><i class="iconfont icon-arrowup" aria-hidden="true"></i></a>
<div class="modal fade" id="modalSearch" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header text-center"><h4 class="modal-title w-100 font-weight-bold">搜索</h4>
                <button type="button" id="local-search-close" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body mx-3">
                <div class="md-form mb-5"><input type="text" id="local-search-input" class="form-control validate">
                    <label data-error="x" data-success="v" for="local-search-input">关键词</label></div>
                <div class="list-group" id="local-search-result"></div>
            </div>
        </div>
    </div>
</div>
<footer class="mt-5">
    <div class="text-center py-3">

    </div>
</footer>
<script src="${ctxStatic}/blogDetail/hm.js"></script>
<script src="${ctxStatic}/blogDetail/push.js"></script>
<script src="${ctxStatic}/blogDetail/jquery.min.js"></script>
<script src="${ctxStatic}/blogDetail/bootstrap.min.js"></script>
<script src="${ctxStatic}/blogDetail/main.js"></script>
<script src="${ctxStatic}/blogDetail/lazyload.js"></script>
<script src="${ctxStatic}/blogDetail/tocbot.min.js"></script>
<script>$(document).ready(function () {
    var t = $("#board-ctn").offset().top;
    tocbot.init({
        tocSelector: "#tocbot",
        contentSelector: ".post-content",
        headingSelector: "h2,h3,h4",
        linkClass: "tocbot-link",
        activeLinkClass: "tocbot-active-link",
        listClass: "tocbot-list",
        isCollapsedClass: "tocbot-is-collapsed",
        collapsibleClass: "tocbot-is-collapsible",
        collapseDepth: 0,
        scrollSmooth: !0,
        headingsOffset: -t
    }), 0 < $(".toc-list-item").length && $("#toc").css("visibility", "visible")
})</script>
<script defer="" src="${ctxStatic}/blogDetail/clipboard.min.js"></script>
<script src="${ctxStatic}/blogDetail/clipboard-use.js"></script>
<script src="${ctxStatic}/blogDetail/custom.js"></script>
<script defer="">var _hmt = _hmt || [];
!function () {
    var e = document.createElement("script");
    e.src = "https://hm.baidu.com/hm.js?829ca75dc8d623c50657258008415521";
    var t = document.getElementsByTagName("script")[0];
    t.parentNode.insertBefore(e, t)
}()</script>
<script src="${ctxStatic}/blogDetail/typed.min.js"></script>
<%--<script>var typed = new Typed("#subtitle", {--%>
<%--    strings: ["  ", ""],--%>
<%--    cursorChar: "_",--%>
<%--    typeSpeed: 70,--%>
<%--    loop: !1--%>
<%--});--%>
<%--typed.stop(), $(document).ready(function () {--%>
<%--    $(".typed-cursor").addClass("h2"), typed.start()--%>
<%--})</script>--%>
<style type="text/css" data-typed-js-css="true">
    .typed-cursor {
        opacity: 1;
    }

    .typed-cursor.typed-cursor--blink {
        animation: typedjsBlink 0.7s infinite;
        -webkit-animation: typedjsBlink 0.7s infinite;
        animation: typedjsBlink 0.7s infinite;
    }

    @keyframes typedjsBlink {
        50% {
            opacity: 0.0;
        }
    }

    @-webkit-keyframes typedjsBlink {
        0% {
            opacity: 1;
        }
        50% {
            opacity: 0.0;
        }
        100% {
            opacity: 1;
        }
    }
</style>
<script src="${ctxStatic}/blogDetail/anchor.min.js"></script>
<script>anchors.options = {
    placement: "right",
    visible: "always",

};
var el = "h1,h2,h3,h4,h5,h6".split(",");
var res = [];
for (item of el) {
    res.push(".markdown-body > " + item)
}
anchors.add(res.join(", "))</script>
<script src="${ctxStatic}/blogDetail/local-search.js"></script>
<script>var path = "/local-search.xml", inputArea = document.querySelector("#local-search-input");
inputArea.onclick = function () {
    getSearchFile(path), this.onclick = null
}</script>
<script src="${ctxStatic}/blogDetail/jquery.fancybox.min.js"></script>
<link rel="stylesheet" href="${ctxStatic}/blogDetail/jquery.fancybox.min.css">
<script>$("#post img:not(.no-zoom img, img[no-zoom]), img[zoom]").each(function () {
    var t = document.createElement("a");
    $(t).attr("data-fancybox", "images"), $(t).attr("href", $(this).attr("src")), $(this).wrap(t)
})</script>
</body>
</html>