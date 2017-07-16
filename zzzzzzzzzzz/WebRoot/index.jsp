<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
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




<!-- 页面css样式 -->
<link rel="stylesheet" href="css/tuniu.css" />

<!-- js文件 -->
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/index.js"></script>
<script>
	function Jump(para) {

		window.open("enn?pp=" + para, "_blank");
	}
</script>
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
							<li class="header-signin"><a href="logout.action" >登出</a></li>
							<li class="header-signin"><a href="">${sessionScope.sno}
							</a></li>
							<li class="header-signup"><a href="if.action?aname=${sessionScope.sno}">个人中心</a></li>
						</ul>
					</div>

				</c:when>

				<c:otherwise>
					<div id="login-area">
						<ul class="header-unlogin clearfix">
							<li class="header-signin"><a href="view/login.jsp">登出</a></li>
							<li class="header-signin"><a href="view/login.jsp">登录</a></li>
							<li class="header-signup"><a href="view/zhuce.jsp" id="js-signup-btn">注册</a>
							</li>
						</ul>
					</div>
				</c:otherwise>

			</c:choose>

		</div>
	</div>

	<div class="center">
		<div class="center_top">
			<!-- <==========================================================> -->
			<!-- 轮播图开始区域 -->
			<!-- <div id="bannar"> -->
			<div class="content_middle">
				<div class="common_da">

					<a class="common btnLeft" href="javascript:;"></a> <a
						class="common btnRight" href="javascript:;"></a>

				</div>


				<ul>
					<li
						style="background:url(images/4.png) no-repeat center center;opacity: 100;filter: alpha(opacity=1);"></li>
					<li style="background:url(images/6.png) no-repeat center center;"></li>
					<li style="background:url(images/3.png) no-repeat center center;"></li>

				</ul>
				<div class="table">
					<a class="small_active" href="javascript:;" onclick="Jump(1);">java大数据</a>
					<a href="javascript:;" onclick="Jump(2);">c语言的精髓</a> <a
						href="javascript:;" onclick="Jump(3);"> 四个月成大神</a>


				</div>
			</div>
		</div>
	</div>




	<div class="container">
		<div class="course-tool-bar clearfix">
			<div class="tool-left l">
				<a href="" class="sort-item">免费好课</a>

			</div>

			<div class="tool-right r">




				<a href='view/list.jsp' class='types-title-more'> <span>更多</span>
					<i class='imv2-arrow2_r'></i>
				</a>


			</div>
		</div>
		<div class="course-list">
			<div class="moco-course-list">
				<ul class="clearfix">
					<div id="">
						<div class="index-card-container course-card-container container ">
							<a target="_blank" class="course-card" href="enn?pp=1"><div
									class="course-card-top cart-color orange">
									<i class="imv2-war"></i> <span> java</span>
								</div>
								<div class="course-card-content">
									<h3 class="course-card-name">java入门第一季</h3>
									<p>本教程从Java环境搭建、工具使用、基础语法开始，带你入门</p>
								</div></a> <img src="/static/img/index/new/new.png"
								class="course-cart-new">
							<div class="course-card-bk">
								<img src="http://www.imooc.com/courseimg/s/cover050_s.jpg">
							</div>
						</div>
						<div class="index-card-container course-card-container container ">
							<a target="_blank" class="course-card" href="enn?pp=2"><div
									class="course-card-top cart-color orange">
									<i class="imv2-war"></i> <span> java</span>
								</div>
								<div class="course-card-content">
									<h3 class="course-card-name">Java入门第二季</h3>
									<p>Java 面向对象编程基本实现原理，进一步探索 Java 世界的奥秘</p>
								</div></a> <img src="/static/img/index/new/new.png"
								class="course-cart-new">
							<div class="course-card-bk">
								<img src="http://www.imooc.com/courseimg/s/cover050_s.jpg">
							</div>
						</div>
						<div class="index-card-container course-card-container container ">
							<a target="_blank" class="course-card" href="enn?pp=3"><div
									class="course-card-top cart-color orange">
									<i class="imv2-war"></i> <span> c</span>
								</div>
								<div class="course-card-content">
									<h3 class="course-card-name">C语言入门</h3>
									<p>C语言入门视频教程，带你进入编程世界的必修课-C语言</p>
								</div></a> <img src="/static/img/index/new/new.png"
								class="course-cart-new">
							<div class="course-card-bk">
								<img src="http://www.imooc.com/courseimg/s/cover050_s.jpg">
							</div>
						</div>
						<div class="index-card-container course-card-container container ">
							<a target="_blank" class="course-card" href="enn?pp=4"><div
									class="course-card-top cart-color orange">
									<i class="imv2-war"></i> <span> java</span>
								</div>
								<div class="course-card-content">
									<h3 class="course-card-name">使用Struts2+Hibernate</h3>
									<p>Strust2+Hibernate整合开发案例，Java Web开发技能更上一层楼</p>
								</div></a> <img src="/static/img/index/new/new.png"
								class="course-cart-new">
							<div class="course-card-bk">
								<img src="http://www.imooc.com/courseimg/s/cover050_s.jpg">
							</div>
						</div>
						<div class="index-card-container course-card-container container ">
							<a target="_blank" class="course-card" href="enn?pp=5"><div
									class="course-card-top cart-color orange">
									<i class="imv2-war"></i> <span> Python</span>
								</div>
								<div class="course-card-content">
									<h3 class="course-card-name">Python入门</h3>
									<p>学python入门视频教程，让你快速入门并能编写简单的Python程序</p>
								</div></a> <img src="/static/img/index/new/new.png"
								class="course-cart-new">
							<div class="course-card-bk">
								<img src="http://www.imooc.com/courseimg/s/cover050_s.jpg">
							</div>
						</div>



					</div>
				</ul>
			</div>
			<!-- 按需要在这里添加分页 -->
		</div>

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
