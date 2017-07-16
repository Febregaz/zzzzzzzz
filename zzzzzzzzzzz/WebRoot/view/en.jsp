<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'en.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/jquery-ui-1.10.4.custom.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="css/jquery-ui-1.10.4.custom.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

<!-- mooc.css -->
<link rel="stylesheet" href="css/muke1.css" type="text/css" />
<link rel="stylesheet" href="css/muke3.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="my.css" />
<!-- my.css -->

<!-- 外来引用 -->
<script type="text/javascript" src="handlebars.js"></script>
<script type="text/javascript" src="handlebars-jquery.js"></script>
<link rel="stylesheet" href="main.css">
<link rel="stylesheet" href="sinaFaceAndEffec.css">
<!-- 外来引用 end -->


<!-- 外来js -->

<script id="commentTmpl" type="text/x-handlebars-template">
	{{#each comments}}
		<li>
		<div class="head-face">
		<img src="images/1.jpg" />
		</div>
		<div class="reply-cont">
		<p class="username">{{mfounder}}</p>
		<p class="comment-body">{{mmessage}}</p>
		<p class="comment-footer">2016年10月5日　回复:{{mmid}}　点赞54　转发12</p>
		</div>';
		</li>';
	{{/each}}
</script>

<script type="text/javascript">
	$(document).ready(
			function() {
				$.ajax({
					type : "POST",
					url : "commentall.action",
					dataType : "json",
					success : function(data, status) {
						console.log(data);
						var de = eval("(" + data + ")");
						console.log(de);
						var d = {
							comments : de
						};
						console.log(d);
						var template = $("#commentTmpl").template(d).appendTo(
								"#info-show ul");
					}
				});
			});
</script>

<!-- 外来js end -->


<script>
	$(function() {
		$("#accordion").accordion({
			heightStyle : "content"
		});
		$('a').button();
		//$('li').css("list-style", "none");

	});
	/* 	$(document).ready(function(){
	 $("#accordion").accordion({
	 heightStyle : "content"
	 });
	 $('a').button();
	 }); */

	function abc(b) {

		var admin = "${sessionScope.sno}";
		var aadmin = "${sessionScope.pp}";
		if (admin != "") {

			$.ajax({
				type : "get",
				cache : false,
				async : true,
				url : "yanzheng.action",
				success : function(data) {
					if (data.aa) {

						window.location.href = "view/play.jsp?vidio="
								+ b.attr('value');// 打开同路径下的b.jsp文件
					} else {
						alert("请购买课程")
					}

				},
				error : function(data) {
				}
			});

		}

		else {
			alert("请先登陆");

		}

	}

	function adc(d) {

		var acmin = "${sessionScope.sno}";

		var aacmin = "${sessionScope.pp}";
		if (acmin != "") {
			$.ajax({
				type : "get",
				cache : false,
				async : true,
				url : "yanzheng.action",
				success : function(data) {
					if (data.aa) {

						window.location.href = "student/anss.jsp?xuan="
								+ d.attr('value');// 打开同路径下的b.jsp文件
					} else {
						alert("请购买课程")
					}

				},
				error : function(data) {
				}
			});

		}

		else {
			alert("请先登陆");

		}

	}
	function apc(b) {

		var admin = "${sessionScope.sno}";
		var aadmin = "${sessionScope.pp}";
		if (admin != "") {

			$.ajax({
				type : "get",
				cache : false,
				async : true,
				url : "buy.action",
				success : function(data) {
					if (data.rr) {

						alert("购买成功");
					} else {
						alert("你已经购买了此课程");
					}

				},
				error : function(data) {
				}
			});

		}

		else {
			alert("请先登陆");

		}

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
							<li class="header-signin"><a href="">${sessionScope.sno}
							</a></li>
							<li class="header-signup"><a href="">个人中心</a></li>
						</ul>
					</div>

				</c:when>

				<c:otherwise>
					<div id="login-area">
						<ul class="header-unlogin clearfix">
							<li class="header-signin"><a href="view/login.jsp"
								target="_blank">登录</a></li>
							<li class="header-signup"><a href="view/zhuce.jsp"
								id="js-signup-btn" target="_blank">注册</a></li>
						</ul>
					</div>
				</c:otherwise>

			</c:choose>

		</div>
	</div>
	<s:iterator value="#session.entry2" id="kc">
		<div class="course-infos">
			<div class="w pr">
				<div class="path"></div>
				<div class="hd clearfix">
					<h2 class="l">
						<s:property value="#kc.ktitle" />
					</h2>
				</div>
				<div class="moco-btn l learn-btn green-btn red-btn" onclick="apc()">

					<font color="black">购买课程</font>
				</div>





			</div>

		</div>
	</s:iterator>



	<div class="course-info-main clearfix w" id="accordion-resizer">
		<!-- 课程章节 -->
		<div class="chapter" id="accordion">
			<!-- 章节标题 -->
			<s:iterator value="#session.entry1" id="kk" status="vs">
				<h3>
					<span class="icon-drop_down js-close"></span> <strong> <i
						class="icon-chapter"></i> <s:property value="#kk.lmessage" />
					</strong>
				</h3>
				<div>
					<!-- 章节小节 -->
					<ul class="video">

						<s:iterator value="#session.entry3" id="aa" status="vs">

							<s:if test="#kk.lid==#aa.vlid">

								<li data-media-id="14949"><a class="J-media-item"
									onclick="abc($(this))" value="<s:property value='#aa.vname' />">
										<s:property value='#aa.vtitle' />
								</a></li>
							</s:if>
						</s:iterator>


						<s:iterator value="#session.entry4" id="ss" status="vs">

							<s:if test="#kk.lid==#ss.ohid">

								<li data-media-id="14949"><a class="J-media-item"
									onclick="adc($(this))" value="<s:property value='#ss.oid' />">
										<s:property value='#ss.oname' />
								</a></li>
							</s:if>
						</s:iterator>

					</ul>
					<!-- 章节小节 end -->
				</div>
				<!-- 章节标题 end -->
			</s:iterator>
		</div>

	</div>
	<!-- 课程章节 end -->

	<!-- 评论区 -->

	<div class="wrap">
		<form action="addcomment.action?mfounder=${sessionScope.sno}" method="post">
			<div class="comment">
				<div class="head-face">
					<img src="images/1.jpg" />
					<p style="color:red;">${sessionScope.sno}</p>
				</div>
				<div class="content">
					<div class="cont-box">
						<textarea name="mmessage" class="text" placeholder="请输入..."></textarea>
					</div>
					<div class="tools-box">
						<div class="operator-box-btn">
							<span class="face-icon">☺</span><span class="img-icon">▧</span>
						</div>
						<div class="submit-btn">
							<input type="submit" value="提交评论" />
						</div>
					</div>
				</div>
			</div>
		</form>
		<div id="info-show">
			<ul></ul>
		</div>
	</div>

	<!-- 评论区end -->


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