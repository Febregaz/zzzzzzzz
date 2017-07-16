<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'demo3.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/amazeui.min.css" />
<link rel="stylesheet" href="css/admin.css">

<link rel="stylesheet" href="css/muke1.css" type="text/css" />
<link rel="stylesheet" href="css/muke2.css" type="text/css" />
<script src="js/jquery-1.7.2.min.js"></script>

</head>

<body>
	<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

	<div id="header">
		<div class="page-container" id="nav">

			<ul class="nav-item">

				<li><a href="index.jsp" class="active" target="_self">首页</a></li>
				<li><a href="view/list.jsp" target="_self">课程</a></li>
				<li><a href="tri" target="_self">资料</a></li>
				<li><a href="view/sos.jsp" target="_self">搜索</a></li>
			</ul>
			<c:choose>
				<c:when test="${sessionScope.sno!=null}">
					<div id="login-area">
						<ul class="header-unlogin clearfix">
							<li class="header-signin"><a href="">${sessionScope.sno}
							</a></li>
							<li class="header-signup"><a href="">个人中心</a></li>
						</ul>
					</div>

				</c:when>

				<c:otherwise>
					<div id="login-area">
						<ul class="header-unlogin clearfix">
							<li class="header-signin"><a href="view/login.jsp">登录</a></li>
							<li class="header-signup"><a href="view/zhuce.jsp" id="js-signup-btn">注册</a>
							</li>
						</ul>
					</div>
				</c:otherwise>

			</c:choose>

		</div>
	</div>
	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
			<div class="am-offcanvas-bar admin-offcanvas-bar">
				<ul class="am-list admin-sidebar-list">
					<li><a href="admin-index.html"><span class="am-icon-home"></span>
							首页</a></li>
					<li class="admin-parent"><a class="am-cf"
						data-am-collapse="{target: '#collapse-nav'}"><span
							class="am-icon-file"></span> 页面模块 <span
							class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in"
							id="collapse-nav">
							<li><a href="admin-user.html" class="am-cf"><span
									class="am-icon-check"></span> 个人资料<span
									class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
							<li><a href="admin-help.html"><span
									class="am-icon-puzzle-piece"></span> 帮助页</a></li>
							<li><a href="admin-gallery.html"><span
									class="am-icon-th"></span> 相册页面<span
									class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
							<li><a href="admin-log.html"><span
									class="am-icon-calendar"></span> 系统日志</a></li>
							<li><a href="admin-404.html"><span class="am-icon-bug"></span>
									404</a></li>
						</ul></li>
					<li><a href="admin-table.html"><span class="am-icon-table"></span>
							表格</a></li>
					<li><a href="admin-form.html"><span
							class="am-icon-pencil-square-o"></span> 表单</a></li>
					<li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
				</ul>

				<div class="am-panel am-panel-default admin-sidebar-panel">
					<div class="am-panel-bd">
						<p>
							<span class="am-icon-bookmark"></span> 公告
						</p>
						<p>时光静好，与君语；细水流年，与君同。</p>
					</div>
				</div>


			</div>
		</div>
		<!-- sidebar end -->

		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-cf am-padding am-padding-bottom-0">
					<div class="am-fl am-cf">
						<strong class="am-text-primary am-text-lg">教师</strong> / <small>出题</small>
					</div>
				</div>

				<hr>

				<div class="am-tabs am-margin" data-am-tabs>

					<s:form action="option" 
						class="am-form" method="post">
						<fieldset>





							<div class="am-form-group">
								<label for="doc-select-1">课程名</label> <select
									id="text" name="select">
									<option value="0">请选择</option>		
									<s:iterator value="#op1" id="kcc">									
									<option value="<s:property value="#kcc.cid" />"><s:property value="#kcc.ktitle" /></option>									
									</s:iterator>								
								</select> <span class="am-form-caret"></span>
							</div>


                             
                                
                               <div class="am-form-group">
								<label for="doc-ipt-email-1">题目</label> <input type="text"
									class="" name="liantitle" placeholder="练习题目">
							</div>
                               <div class="am-form-group">
								<label for="doc-ipt-email-1">答案</label> <input type="text"
									class="" name="ans" placeholder="答案">
							</div>
                               
                               <div class="am-form-group">
								<label for="doc-ipt-email-1">A选项</label> <input type="text"
									class="" name="oaname" placeholder="A选项">
							</div>
                               <div class="am-form-group">
								<label for="doc-ipt-email-1">B选项</label> <input type="text"
									class="" name="obname" placeholder="A选项">
							</div>
                               <div class="am-form-group">
								<label for="doc-ipt-email-1">C选项</label> <input type="text"
									class="" name="ocname" placeholder="A选项">
							</div>
							    <div class="am-form-group">
								<label for="doc-ipt-email-1">D选项</label> <input type="text"
									class="" name="odname" placeholder="D选项">
							</div>
                               

	                               
							<button type="submit" class="am-btn am-btn-default">提交</button>

						</fieldset>
					</s:form>
				</div>


			</div>


		</div>
		<!-- content end -->

	</div>



	<div id="footer">
		<div class="waper">
			<div class="footerwaper clearfix">
				<div class="followus r">
					<a class="followus-weixin" href="" target="_blank" title="微信">
						<div class="flw-weixin-box"></div>
					</a> <a class="followus-weibo" href="" target="_blank" title="新浪微博"></a>
					<a class="followus-qzone" href="" target="_blank" title="QQ空间"></a>
				</div>
				<div class="footer_intro l">
					<div class="footer_link">
						<ul>
							<li><a href="" target="_blank">网站首页</a></li>
							<li><a href="" target="_blank" title="企业合作">企业合作</a></li>
							<li><a href="" target="_blank">人才招聘</a></li>
							<li><a href="" target="_blank">联系我们</a></li>
							<li><a href="" target="_blank">讲师招募</a></li>
							<li><a href="" target="_blank">常见问题</a></li>
							<li><a href="" target="_blank">意见反馈</a></li>
							<li><a href="" target="_blank">慕课大学</a></li>
							<li><a href="" target="_blank">友情链接</a></li>
							<!--  <li><a href="/corp/index" target="_blank">合作专区</a></li>
                        <li><a href="/about/us" target="_blank">关于我们</a></li> -->
						</ul>
					</div>
					<p>Copyright © 2017 All Rights Reserved | 京ICP备 88888888号-2</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
