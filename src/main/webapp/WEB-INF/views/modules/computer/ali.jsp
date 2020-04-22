<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <meta name="spm-id" content="a21e4">
    <meta name="description" content="">
    <meta name="keyword" content="">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">

    <link rel="stylesheet"
          href="${ctxStatic}/ali/main.css"
          media="screen" />
    <style>
        body {
            font-family: tahoma, arial, 'Hiragino Sans GB', 'Microsoft YaHei', sans-serif !important;
        }
    </style>

</head>



<div class="index-page">
    <div class="client-header">
        <div class="bg"></div>
        <div class="container">
            <a class="pull-left" href=//alimarket.taobao.com/markets/qnww/portal-group/index>
                <span class="iconfont icon-home"></span>
                <!--        <span class="text">阿里巴巴客户端产品族</span>-->
            </a>
            <div class="pull-right relative">
                <ul class="deflate">
                    <!--          <li><a href=//alimarket.taobao.com/markets/qnww/portal-group/ww/index data-click="ww-link">阿里旺旺</a></li>-->
                    <!--          <li><a href=//cts.alibaba.com/product/qianniu.htm data-click="qn-link">千牛</a></li>-->
                    <!--          <li><a href=//im.taobao.com data-click="yw-link">云旺</a></li>-->
                </ul>
            </div>
        </div>
    </div>
    <div class="banner">
        <div class="slide slide1">
            <div class="bg-wrapper" id="J_bgWrapper1">
                <div class="bg" id="J_bg1"></div>
                <div class="mask"></div>
            </div>
            <div class="content-wrapper">
                <div class="content-inner">
                    <div class="title"></div>
                    <div class="description">买家端选购沟通利器，打造我的专属顾问。</div>
                    <div class="products">
                        <a class="product product-wangwang" href="${pageContext.request.contextPath}${fns:getFrontPath()}/computer" data-click="ww">
                            <div class="icon"></div>
                            <div class="name" style="margin-top:-15px;margin-bottom:35px;">阿里旺旺</div>
                            <div class="more">
                                <span>了解更多</span>
                                <span class="caret"></span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <div class="slide slide2">
            <div class="bg-wrapper" id="J_bgWrapper2">
                <div class="bg" id="J_bg2"></div>
                <div class="mask"></div>
            </div>
            <div class="content-wrapper">
                <a class="content-inner" href="${pageContext.request.contextPath}${fns:getAdminPath()}" data-click="qn">
                    <div class="title"></div>
                    <div class="description">强大千牛工作台，更高效率，更多自由。</div>
                    <ul class="products">
                        <li class="product product-qianniu">
                            <div class="icon"></div>
                            <div class="name" style="margin-top:-15px;margin-bottom:35px;">千牛</div>
                            <div class="more">
                                <span>了解更多</span>
                                <span class="caret"></span>
                            </div>
                        </li>
                    </ul>
                </a>
            </div>
        </div>
    </div>
    <div class="index-footer">
        <!--    <div>Copyright &copy; 1998-2017 Alibaba.All Rights Reserved.</div>-->
        <!--    <div>阿里巴巴集团  版权所有</div>-->
        <div class="law">
            <!--      <a target="_blank" href="//www.taobao.com/go/chn/tb-fp/2014/law.php?spm=a21bo.50862.1997523009.38.9usNY6">法律声明</a>-->
            <!--      <span>增值电信业务经营许可证:</span>-->
            <!--      <a target="_blank" href="http://zcainfo.miitbeian.gov.cn/state/outPortal/loginPortal.action?spm=a21bo.50862.1997523009.41.F3ubs5&file=loginPortal.action">浙B2-20080224</a>-->
        </div>
    </div>
</div>

<script src="//g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
<script src="//g.alicdn.com/sj/portal-group/0.3.1/group/scripts/index/index.min.js"></script>
<script src="//g.alicdn.com/aliww/goldlog/0.0.3/goldlog.js"></script>
<script>
    $(function(){
        // 首页pv
        wwGoldlog.record('wwgw.1.1');
        // 买家/卖家按钮点击
        $('a[data-click]').click(function(){
            switch($(this).data('click')) {
                case 'ww':
                    wwGoldlog.record('wwgw.1.2');
                    break;
                case 'qn':
                    wwGoldlog.record('wwgw.1.3');
                    break;
                case 'ww-link':
                    wwGoldlog.record('wwgw.1.4');
                    break;
                case 'qn-link':
                    wwGoldlog.record('wwgw.1.5');
                    break;
                case 'yw-link':
                    wwGoldlog.record('wwgw.1.6');
                    break;
            }
        })
    })
</script>
<script src="http://s11.cnzz.com/z_stat.php?id=1253879788&web_id=1253879788" language="JavaScript"></script>
</body>
</html>
