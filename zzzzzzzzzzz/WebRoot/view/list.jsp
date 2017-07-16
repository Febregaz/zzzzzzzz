<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String servletPath=request.getServletPath(); 
	  servletPath=servletPath.replace("/",""); 
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'id.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/lanrenzhijia.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet"
	href="/static/moco/v1.0/dist/css/moco.min.css?t=201705081743"
	type="text/css" />
<link rel="stylesheet"
	href="http://static.mukewang.com/static/css/??base.css,common/common-less.css?t=2.5,course/course_list-v2-less.css?v=1.0?v=201705081743"
	type="text/css" />
	<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/lanrenzhijia.js"></script>
</head>

<body>

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

	<div id="main">

		<div class="wrap ">
			<div class="top">
				<div class="course-content">
					<div class="course-nav-box">
					<ul class="select">
		<li class="select-list">
			<dl id="select1">
				<dt>分类：</dt>
				<dd class="select-all selected"><a href="javascript:">全部</a></dd>
				<dd><a href="javascript:">HTML/CSS</a></dd>
				<dd><a href="javascript:">JavaScript</a></dd>
				<dd><a href="javascript:">Html5</a></dd>
				<dd><a href="javascript:">CSS3</a></dd>
				<dd><a href="javascript:">jQuery</a></dd>
				<dd><a href="javascript:">Node.js</a></dd>
				<dd><a href="javascript:">AngularJS</a></dd>
				<dd><a href="javascript:">Bootstrap</a></dd>
				<dd><a href="javascript:">Vue.js</a></dd>
				<dd><a href="javascript:">React.JS</a></dd>
				<dd><a href="javascript:">CSS3</a></dd>
				<dd><a href="javascript:">Sass/Less</a></dd>
				<dd><a href="javascript:">WebApp</a></dd>			
				<dd><a href="javascript:">PHP</a></dd>
				<dd><a href="javascript:">java</a></dd>
				<dd><a href="javascript:">Python</a></dd>
				<dd><a href="javascript:">c</a></dd>
				<dd><a href="javascript:">C++</a></dd>
				<dd><a href="javascript:">Go</a></dd>
				<dd><a href="javascript:">C#</a></dd>
				<dd><a href="javascript:">Ruby</a></dd>
				<dd><a href="javascript:">Android</a></dd>
				<dd><a href="javascript:">Unity 3D</a></dd>
				<dd><a href="javascript:">CSS3</a></dd>
				<dd><a href="javascript:">Cocos2d-x</a></dd>
				<dd><a href="javascript:">WebApp</a></dd>
				<dd><a href="javascript:">MySQL</a></dd>                                         
                 <dd><a href="javascript:">MongoDB</a></dd>
				<dd><a href="javascript:">Oracle</a></dd>
				<dd><a href="javascript:">SQL Server</a></dd>			
				<dd><a href="javascript:">Linux</a></dd>
		
				
		</dl>
		</li>
		<li class="select-list">
			<dl id="select2">
				<dt>类型：</dt>
				<dd class="select-all selected"><a href="javascript:">全部</a></dd>
				<dd><a href="javascript:">基础</a></dd>
				<dd><a href="javascript:">案例</a></dd>
		
			</dl>
		</li>
		
		<!--  
		<li class="select-result">
			<dl>
				<dt>已选条件：</dt>
				<dd class="select-no">暂时没有选择过滤条件</dd>
			</dl>
	
		</li>
			-->
	</ul>
			
					
					</div>

				</div>
			</div>
		</div>
		<div class="container">			
			<div class="course-list">
				<div class="moco-course-list">
					<ul class="clearfix">					
	                	 <div id=jsondiv>							       
                        </div>
					</ul>
				</div>
				<!-- 按需要在这里添加分页 -->
			</div>

		</div>

	</div>

	<div id="footer">
		<div class="waper">
			<div class="footerwaper clearfix">
				<div class="followus r">
					<a class="followus-weixin" href="" target="_blank"
						title="微信">
						<div class="flw-weixin-box"></div>
					</a> <a class="followus-weibo" href=""
						target="_blank" title="新浪微博"></a> <a class="followus-qzone"
						href="" target="_blank"
						title="QQ空间"></a>
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
					<p>Copyright © 2017  All Rights Reserved | 京ICP备
						88888888号-2</p>
				</div>
			</div>
		</div>
	</div>


	


</body>
</html>

