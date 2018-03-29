<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta name="Description" content="人人,人人网是一个真实的社交网络，联络你和你周围的朋友。加入人人,人人网你可以:联络朋友，了解他们的最新动态；和朋友分享相片、音乐和电影；找到老同学，结识新朋友；用照片和日志记录生活,展示自我。"><meta name="Keywords" content="Xiaonei,人人,人人网,大学,同学,同事,白领,个人主页,博客,相册,群组,社区,交友,聊天,音乐,视频,校园,人人,人人网">
<title>人人网 - 注册</title>
<link href="http://s.xnimg.cn/favicon-rr.ico" rel="shortcut icon" type="image/x-icon"><link href="http://s.xnimg.cn/renren_logo_apple.png" rel="apple-touch-icon">
<script type="text/javascript" src="./register_files/libs.js"></script>
<link rel="stylesheet" type="text/css" href="./register_files/base.css">
<link href="./register_files/reg.css" rel="stylesheet" rev="stylesheet" media="all">
<script type="text/javascript" src="./register_files/swfobject.js"></script>
<script type="text/javascript">
define.config({map:{
"ui/draggable":"http://s.xnimg.cn/a70750/nx/core/ui/draggable.js",
"ui/sortable":"http://s.xnimg.cn/a70749/nx/core/ui/sortable.js",
"ui/dialog":"http://s.xnimg.cn/a76395/nx/core/ui/dialog.js",
"ui/placeholder":"http://s.xnimg.cn/a72095/nx/core/ui/placeholder.js",
"ui/scrollbar": "http://s.xnimg.cn/a76868/nx/core/ui/scrollbar.js"
}});
nx.data.isDoubleFeed = Boolean();
nx.data.isDoubleFeedGuide = Boolean();
</script>
</head>
<body>
<iframe style="display: none;" src="./register_files/ajaxproxy.html"></iframe>
<div id="header">
<div id="nav">
<div class="logo"></div>
<div class="font">
<span class="right">已有人人帐号，<a href="/RenRenDemo/toLogin.do">登录</a> </span>
</div>
</div>
</div>
<div class="main_wrap clearfix" id="main">
<div class="main_con">
<ul class="left-timeline">
<li id="join-timeline" class="show">
<span class="item-icon"></span>
<div class="item-infos">
<h3 class="info-title">加入人人网</h3>
</div>
</li>
<li id="friend-timeline">
<span class="item-icon"></span>
</li>	
</ul>


<div class="main_left">
<div class="header">注册新帐号 加入人人网</div>
<div class="tab clearfix phoneact" style="display:none">
<a href="" id="tab_phone" class="phone"><span></span>手机注册</a>
<a href="" id="tab_email" class="email"><span></span>邮箱注册</a>
</div>
<div class="form_wrap">
<div class="reg_form">
<div class="item">

<form action="/RenRenDemo/register.action">
<div class="leftpart"><label for="regMobile">用户名&nbsp;:</label></div>
	<div class="rightpart">
		<input type="text" name="regEmail" maxlength="11" tabindex="1" class="left" autocomplete="off"/>
		<span id="pg"></span>
		<span id="regMobile_error_span" class="box_error left">
			<b id="regMobile_error_span_i"></b> 
		</span>
	</div>
</div>

<div class="item">
	<div class="leftpart"><label for="pwd">创建密码&nbsp;:</label></div>
	<div class="rightpart">
		<input type="password" name="pwd1" id="pwd" maxlength="20" tabindex="2" class="left"> 
		<span id="wg"></span> 
		<span id="pwd_error_span" class="box_error left"> <b id="pwd_error_span_i"></b> </span>
	</div>
</div>

<div class="item">
	<div class="leftpart"><label for="pwd2">确定密码&nbsp;:</label></div>
	<div class="rightpart">
		<input type="password" name="pwd2" id="pwd" maxlength="20" tabindex="2" class="left" placeholder="密码应由6-20个字符组成"> 
		<span id="wg"></span> 
		<span id="pwd_error_span" class="box_error left"> <b id="pwd_error_span_i"></b> </span>
	</div>
</div>

<div class="reg_btn clearfix">
	<input type="submit" class="regbtn" value="注册"/>
</div>

</form>
<div style="width:420px;height:30px;float:left;margin-top:10px;text-align:right;">
  点击完成注册表示您同意并遵守
  <a href="http://renren.com/info/agreement.jsp">人人网服务条款</a>
</div>
<script type="text/javascript" src="./register_files/reg3.js"></script></div>
<!-- regForm -->
</div>
</div>
</div>
</div>



<div class="ft-wrapper clearfix">

	<p>
		<strong>玩转人人</strong>
		<a href="http://page.renren.com/register/regGuide/" target="_blank">公共主页</a>
		<a href="http://public.renren.com/" target="_blank">公众平台</a>
		<a href="http://support.renren.com/helpcenter" target="_blank">客服帮助</a>
		<a href="http://www.renren.com/siteinfo/privacy" target="_blank">隐私</a>
	</p>

	<p>
		<strong>商务合作</strong>
		<a href="http://page.renren.com/marketing/index" target="_blank">品牌营销</a>
		<a href="http://bolt.jebe.renren.com/introduce.htm" class="l-2" target="_blank">中小企业<br>自助广告</a>
		<a href="http://dev.renren.com/" target="_blank">开放平台</a>
	</p>

	<p>
		<strong>公司信息</strong>
		<a href="http://www.renren-inc.com/zh/product/renren.html" target="_blank">关于我们</a>
		<a href="http://page.renren.com/gongyi" target="_blank">人人公益</a>
		<a href="http://www.renren-inc.com/zh/hr/" target="_blank">招聘</a>
	</p>

	<p>
		<strong>友情链接</strong>
		<a href="http://www.jingwei.com/" target="_blank">经纬网</a>
		<a href="http://wan.renren.com/" target="_blank">人人游戏</a>
		<a href="http://fenqi.renren.com/" target="_blank">人人分期</a>
		<a href="http://quxue.renren.com/" target="_blank">人人趣学</a>
	</p>

	<p>
		<strong>人人移动客户端下载</strong>
		<a href="http://mobile.renren.com/showClient?v=platform_rr&psf=42064" target="_blank">iPhone/Android</a>
		<a href="http://mobile.renren.com/showClient?v=platform_hd&psf=42067" target="_blank">iPad客户端</a>
		<a href="http://mobile.renren.com/" target="_blank">其他人人产品</a>
	</p>

	<!--<p class="copyright-info">-->
	<!-- 临时添加公司信息用 -->
	<p class="copyright-info" style="margi-left: -20px">
		<span>公司全称：北京千橡网景科技发展有限公司</span>
		<span>公司电话：010-84481818</span>
		<span>公司地址：北京市朝阳区酒仙桥中路18号<br>国投创意信息产业园北楼1层</span>
		<span><img id="wenhuajingying_icon" style="height: 28px;float: left; margin-left: 60px;" src="./register_files/wenhuajingying.png"><a href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/DFB957BAEB8B417882539C9B9F9547E6" target="_blank">京网文[2013]0136-030号</a></span>
		<span><a href="http://www.miibeian.gov.cn/" target="_blank">京ICP证090254号</a></span>
		<span>人人网©2015</span>
		<span><a href="http://reg.renren.com/xn6218.do?ss=10131&rt=1&g=v6reg#nogo" id="lawInfo">法律声明</a></span>
	</p>

</div>


</body></html>