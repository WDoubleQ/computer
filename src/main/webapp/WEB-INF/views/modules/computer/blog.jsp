<%--
  Created by IntelliJ IDEA.
  User: YYF
  Date: 2020/4/22
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
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
    <title>我们的故事</title>
    <link rel="stylesheet" href="${ctxStatic}/blog/bootstrap.min.css">
    <link rel="stylesheet" href="${ctxStatic}/blog/github-markdown.min.css">
    <link rel="stylesheet" href="${ctxStatic}/blog/github-gist.min.css">
    <link rel="stylesheet" href="${ctxStatic}/blog/font_1749284_fmb4a04yx8h.css">
    <link rel="stylesheet" href="${ctxStatic}/blog/font_1736178_ijqayz9ro8k.css">
    <link rel="stylesheet" href="${ctxStatic}/blog/main.css">
    <link rel="stylesheet" href="${ctxStatic}/blog/custom.css">
    <meta name="generator" content="Hexo 4.2.0">
    <link rel="alternate" href="https://zkqiang.cn/atom.xml" title="张凯强的技术分享" type="application/atom+xml">
</head>
<body>
<header style="height:100vh">
    <nav id="navbar" class="navbar fixed-top navbar-expand-lg scrolling-navbar navbar-custom navbar-dark">
        <div class="container"><a class="navbar-brand" href="https://zkqiang.cn/">&nbsp;<strong></strong>&nbsp;</a>
            <button id="navbar-toggler-btn" class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <div class="animated-icon"><span></span><span></span><span></span></div>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto text-center">
                </ul>
            </div>
        </div>
    </nav>
    <div class="view intro-2" id="background" parallax="true"
         style="background: url('https://static.zkqiang.cn/images/20200307203002.jpg-slim') center center / cover no-repeat; transform: translate3d(0px, 0px, 0px);">
        <div class="full-bg-img">
            <div class="mask flex-center" style="background-color:rgba(0,0,0,.3)">
                <div class="container text-center white-text fadeInUp"><span class="h2" id="subtitle"></span><span
                        class="typed-cursor h2 typed-cursor--blink">_</span></div>
                <div class="scroll-down-bar"><i class="iconfont icon-arrowdown"></i></div>
            </div>
        </div>
    </div>
</header>
<main>
    <div class="container nopadding-md">
        <div class="py-5" id="board" style="margin-top:0">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-10 m-auto">
                        <c:if test="${not empty list}">
                            <c:forEach items="${list}" var="article" varStatus="status">
                                <div class="row mx-auto index-card">
                                    <div class="col-12 col-md-4 m-auto index-img">
                                        <a href="${pageContext.request.contextPath}${fns:getFrontPath()}/computer/blogDetail/${article.id}" target="_self">
                                            <img src="${article.image}" alt="${article.title}">
                                        </a>
                                    </div>
                                    <div class="col-12 col-md-8 mx-auto index-info">
                                        <a class="index-header" href="#">
                                                ${article.title}
                                        </a>
                                        <a href="#" class="index-excerpt">
                                            <div>
                                                    ${article.description}
                                            </div>
                                        </a>
                                        <div class="index-btm post-metas">
                                            <div class="post-meta mr-3">
                                                <i class="iconfont icon-date"></i>&nbsp;
                                                <fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>

                                            </div>
                                            <div class="post-meta">
                                                <i class="iconfont icon-tags"></i>
                                                <a href="#">${article.createBy.name}</a>
                                                <a href="#">${article.keywords}</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>

                        <!--                        <nav aria-label="navigation">-->
                        <!--                            <span class="pagination" id="pagination">-->
                        <!--                                <span class="page-number current">1</span>-->
                        <!--                                <a class="page-number" href="https://zkqiang.cn/page/2/#board">2</a>-->
                        <!--                                <a class="page-number" href="https://zkqiang.cn/page/3/#board">3</a>-->
                        <!--                                <a class="extend next" rel="next" href="https://zkqiang.cn/page/2/#board">-->
                        <!--                                    <i class="iconfont icon-arrowright"></i>-->
                        <!--                                </a>-->
                        <!--                            </span>-->
                        <!--                        </nav>-->
                        <script src="${ctxStatic}/blog/hm.js"></script>
                        <script src="${ctxStatic}/blog/push.js"></script>
                        <script>for (ele of document.getElementById("pagination").getElementsByTagName("a")) {
                            ele.href += '#board';
                        }</script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<a id="scroll-top-button" href="https://zkqiang.cn/#" role="button" style="bottom: -60px; right: 332.5px;"><i
        class="iconfont icon-arrowup" aria-hidden="true"></i></a>
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
        <div>
<%--            <a href="https://hexo.io/" target="_blank"--%>
<%--                rel="external nofollow noopener noreferrer">--%>
<%--                <span>Hexo</span>--%>
<%--            </a> --%>
<%--            <i class="iconfont icon-love"></i> --%>
<%--            <a--%>
<%--                href="https://github.com/fluid-dev/hexo-theme-fluid" target="_blank"--%>
<%--                rel="external nofollow noopener noreferrer">--%>
<%--                <span>Fluid</span>--%>
<%--            </a>--%>
        </div>
        <div>
<%--            <a href="http://beian.miit.gov.cn/" target="_blank" class="beian-icp"--%>
<%--                rel="external nofollow noopener noreferrer">浙ICP备19029560号-1</a>--%>
        </div>
    </div>
</footer>
<script src="${ctxStatic}/blog/jquery.min.js"></script>
<script src="${ctxStatic}/blog/bootstrap.min.js"></script>
<script src="${ctxStatic}/blog/main.js"></script>
<script src="${ctxStatic}/blog/lazyload.js"></script>
<script defer="" src="${ctxStatic}/blog/clipboard.min.js"></script>
<script src="${ctxStatic}/blog/clipboard-use.js"></script>
<script src="${ctxStatic}/blog/custom.js"></script>
<script defer="">var _hmt = _hmt || [];
!function () {
    var e = document.createElement("script");
    e.src = "https://hm.baidu.com/hm.js?829ca75dc8d623c50657258008415521";
    var t = document.getElementsByTagName("script")[0];
    t.parentNode.insertBefore(e, t)
}()</script>
<script src="blog/typed.min.js"></script>
<script>var typed = new Typed("#subtitle", {
    strings: ["  ", "Life Oriented Programming&nbsp;"],
    cursorChar: "_",
    typeSpeed: 70,
    loop: !1
});
typed.stop(), $(document).ready(function () {
    $(".typed-cursor").addClass("h2"), typed.start()
})</script>
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
<script src="${ctxStatic}/blog/anchor.min.js"></script>
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
<script src="${ctxStatic}/blog/local-search.js"></script>
<script>var path = "/local-search.xml", inputArea = document.querySelector("#local-search-input");
inputArea.onclick = function () {
    getSearchFile(path), this.onclick = null
}</script>
</body>
</html>
