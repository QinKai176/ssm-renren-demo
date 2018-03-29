<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="nx-main980">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
		<meta name="Description" content="人人网 校内是一个真实的社交网络，联络你和你周围的朋友。 加入人人网校内你可以:联络朋友，了解他们的最新动态；和朋友分享相片、音乐和电影；找到老同学，结识新朋友；用照片和日志记录生活,展示自我。">
		<meta name="Keywords" content="Xiaonei,Renren,校内,大学,同学,同事,白领,个人主页,博客,相册,群组,社区,交友,聊天,音乐,视频,校园,人人,人人网">
		<meta property="qc:admins" content="232517306762562566375">
		<meta property="wb:webmaster" content="f2fdc876b8ba2a5d">
		<meta name="msApplication-ID" content="App">
		<link rel="apple-touch-icon" href="http://a.xnimg.cn/wap/apple_icon_.png">
		<script type="text/javascript">nx.webpager.disable = true;</script>
		<link href="./login_files/login.css" rel="stylesheet" type="text/css" media="all">		
		<title>人人网，中国领先的实名制SNS社交网络。加入人人网，找到老同学，结识新朋友。</title>
		<script src="./login_files/base-all2.js.下载" type="text/javascript"></script>
	</head>
	<body id="syshome" class="login">
		<iframe src="./login_files/ajaxproxy.html" style="display: none;"></iframe>
		<div id="header">
			<div id="navBar" class="site-nav rr">
				<div class="navigation-wrapper">
					<div class="navigation navigation-new clearfix">
						<div id="logo2">
						<h1>
							<a href="http://www.renren.com/" title="人人网 renren.com - 人人网校内是一个真实的社交网络，联系朋友，一起玩游戏">
								<img alt="人人网 renren.com - 人人网校内是一个真实的社交网络，联系朋友，一起玩游戏" title="人人网 renren.com - 人人网校内是一个真实的社交网络，联系朋友，一起玩游戏" src="./login_files/logo-big.jpg">
							</a>
						</h1>
						</div>
						<div class="nav-body clearfix">
							<div class="nav-other">
								<div class="menu">
									<a href="" target="_blank" class="st-btn">学生团体申请入口</a>
								</div>
								<div class="menu">
									<a id="reg_link" title="注册" stats="homenav_reg" href="/RenRenDemo/register.action">注册</a>
								</div>
								<div class="menu">
									<a title="给我们提建议" stats="homenav_suggest" href="">反馈意见</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div id="opi" class="page-wrapper clearfix">
		<div class="full-page-holder">
			<div class="full-page"><div class="login-page clearfix login-wrap">
	<div class="side-column login-box">
	<div class="login-panel ">
	<div class="radiusimg">
	<div class="pic" style="
    font-size: 20px;
    color: blue;
    padding-top: 49px;
"><p>管理员登录</p></div>
	</div>
<span id="errorMessage" class="errors_div" style="display:none;"></span>
<div class="yellow-error" id="yellow_error">
<a class="close" href="javascript:closeError();"></a>
<p class="wrong">您的用户名和密码不匹配</p>
<p class="worp">为了账号安全，已向您的邮箱： <strong id="sendemail"></strong>发送了一封确认信，请通过邮件内链接登录。</p>
<p class="m-26"><a id="gotoEmail" href="http://www.renren.com/SysHome.do#" target="_blank">打开邮箱查收确认信</a></p>
<p class="m-26"><a href="javascript:closeError();">重新输入</a></p>
</div>
<div class="yellow-error" id="account_stop">
<a class="close" href="javascript:closeStop();"></a>
<p class="wrong"></p>
<p class="center">您的账号已停止使用，如有疑问请联系<a style="background:none;padding-left:0;" target="_blank" href="http://help.renren.com/#http://help.renren.com/support/contomvice?pid=2&amp;selection={couId:193,proId:342,cityId:1000375}">客服</a></p>
</div>
<div class="yellow-error" id="account_lock">
<a class="close" href="javascript:closeLock();"></a>
<p class="wrong">您的账号由于以下某种原因需要解锁才能登录</p>
<ol>
<li>删除过账号</li>
<li>长时间没有登录网站</li>
<li>安全原因</li>
</ol>
<p class="center"><a href="http://safe.renren.com/relive.do">立即解锁</a></p>
</div>
<form method="post" id="loginForm" class="login-form" action="/RenRenDemo/toAdminlogin.action">
<dl class="top clearfix">
<dd style="border-color: rgb(173, 182, 201);">
<input type="text" name="email" class="input-text" id="email" tabindex="1" value="" style="color: rgb(136, 136, 136);">
</dd>
</dl>
<dl class="pwd clearfix">
<dd style="border-color: rgb(142, 150, 161);">
<input type="password" id="password" name="password" error="请输入密码" class="input-text" tabindex="2">
<label class="pwdtip" id="pwdTip" for="password" style="visibility: hidden;">请输入密码</label>
<a class="forgetPwd" id="forgetPwd" href="http://safe.renren.com/findPass.do" stats="home_findpassword">忘记密码？</a>
</dd>
</dl>
<div class="caps-lock-tips" id="capsLockMessage" style="display:none"></div>
<dl class="savepassword clearfix">
<dt>
<label title="为了确保您的信息安全，请不要在网吧或者公共机房勾选此项！" for="autoLogin" class="labelCheckbox">
<input type="checkbox" name="autoLogin" id="autoLogin" value="true" tabindex="4">下次自动登录
</label>
</dt>
<dd>
<span class="getpassword" id="getpassword"><a href="http://safe.renren.com/findPass.do" stats="home_findpassword">忘记密码？</a></span>
</dd>
</dl>
<dl id="code" class="code clearfix" style="display: none;">
<dt><label for="code">验证码:</label></dt>
<dd>
<input id="icode" type="text" name="icode" class="input-text" tabindex="3" autocomplete="off">
<label class="codetip" id="codeTip" for="icode">请输入验证码</label>
</dd>
</dl>
<dl id="codeimg" class="codeimg clearfix" style="display: none;">
<dt></dt>
<dd><img id="verifyPic_login" src="./login_files/getcode.do">
</dd>
<a class="changeone" href="javascript:refreshCode_login();">换一个</a>
</dl>
<dl class="bottom">
<input type="hidden" name="origURL" value="http://www.renren.com/home">
<input type="hidden" name="domain" value="renren.com">
<input type="hidden" name="key_id" value="1">
<input type="hidden" name="captcha_type" id="captcha_type" value="web_login">
<input type="submit" id="login" class="input-submit login-btn" stats="loginPage_login_button" value="登录" tabindex="5">
</dl>
</form>
<p align="right" style="
    padding-top: 20px;
    padding-right: 33px;
"><font color="red" size="3" face="arial"><span class="required"> ${login_failed}</span></font></p>
<div class="other-login clearfix">
<div class="login-word login-item">其它账号登录：</div>
<a title="移动" class="login-item yidong" href="https://open.mmarket.com/omee-aus/services/oauth/authorize?responseType=code&amp;scope=getUserInfo&amp;clientId=300007884008&amp;redirectUri=http%3A%2F%2Fwww.renren.com%2Fbind%2Fcnmobile%2FloginCallBack&amp;clientState=9" id="login_cnmobile" stats="loginPage_baidu_link"></a>
<a title="天翼" class="login-item tianyi" id="login_tianyi" href="https://oauth.api.189.cn/emp/oauth2/authorize?app_id=296961050000000294&amp;response_type=code&amp;redirect_uri=http://www.renren.com/bind/ty/tyLoginCallBack" stats="loginPage_tianyi_link"></a>
<a title="360" class="login-item lo360" id="login_360" href="https://openapi.360.cn/oauth2/authorize?client_id=5ddda4458747126a583c5d58716bab4c&amp;response_type=code&amp;redirect_uri=http://www.renren.com/bind/tsz/tszLoginCallBack&amp;scope=basic&amp;display=default" stats="loginPage_360_link"></a>
 <a title="百度" class="login-item baidu" href="https://openapi.baidu.com/oauth/2.0/authorize?response_type=code&amp;client_id=foRRWjPq8In3SIhmKQw1Pep3&amp;redirect_uri=http%3A%2F%2Fwww.renren.com%2Fbind%2Fbaidu%2FbaiduLoginCallBack" id="login_baidu" stats="loginPage_baidu_link"></a>
</div>
</div>
</div>
<div class="main-column">
<div id="mainRecommend" class="main-recommend">
<div id="ad100000000061" data-pv="" class="wwwad"></div>
<script>
load_jebe_ads(1)
</script>
<div class="login-recommend clearfix">
<div class="intro">
<div class="item">
<a class="qrcode content" href="http://www.renren.com/SysHome.do#nogo" target="_blank" hidefocus="true"></a>
</div>
<div class="item">
<a class="phone content" href="http://2014.renren.com/mobile#container4" target="_blank" hidefocus="true"></a>
</div>
<div class="item">
<a class="pad content" href="http://2014.renren.com/ipad" target="_blank" hidefocus="true"></a>
</div>
<div class="item">
<a class="other content" href="http://2014.renren.com/" target="_blank" hidefocus="true"></a>
</div>
</div>
</div>
</div>
</div>
</div></div>
</div>
</div> 
</body></html>