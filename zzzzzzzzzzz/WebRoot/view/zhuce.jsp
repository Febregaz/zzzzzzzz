<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
<style type="text/css">
	body{
		text-align: center;
		background: #F7FAFC;
		overflow: hidden;
		background: #fff;
		}
</style>
<style>
*{
	margin:0;
	padding:0;
	font-family:"微软雅黑";
	font-size:12px;
}
.box{
	width:390px;
	height:350px;
	border:solid 1px #ddd;
	background:#FFF;
	position:absolute;
	left:50%;
	top:42%;
	margin-left:-195px;
	margin-top:-160px;
}
.box h2{
	font-weight:normal;
	color:#666;
	font-size:16px;
	line-height:46px;
	height:46px;
	overflow:hidden;
	text-align:center;
	border-bottom:solid 1px #ddd;
	background:#f7f7f7;
}
.input_box{
	width:350px;
	padding-bottom:15px;
	margin:0 auto;
	overflow:hidden;
}
.input_box input{
	float:left;
	width:348px;
	height:40px;
	font-size:14px;
	border:solid 1px #ddd;
	text-indent:10px;
	outline:none;
	line-height:40px;
}
.input_box button{
	width:350px;
	height:48px;
	background:#3f89ec;
	border:none;
	border-radius:2px;
	outline:none;
	cursor:pointer;
	font-size:16px;
	color:#FFF;
}
.input_box2{
	width:350px;
	padding-bottom:15px;
	margin:0 auto;
	overflow:hidden;
}
.input_box2 input{
	float:left;
	width:110px;
	height:30px;
	font-size:14px;
	border:solid 1px #ddd;
	text-indent:10px;
	outline:none;
	line-height:40px;
}
.input_box2 button{
	width:350px;
	height:48px;
	background:#3f89ec;
	border:none;
	border-radius:2px;
	outline:none;
	cursor:pointer;
	font-size:16px;
	color:#FFF;
}
#error_box{
	height:40px;
	width:350px;
	margin:0 auto;
	line-height:40px;
	color:#fc4343;
}
</style>
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
	
	<div style="margin:10px 15px 10px 20px; height:600px;">
	
   
	<s:form action="zhuce" method="post" theme="simple">
		
    <div id="error_box"></div>
    <div class="input_box">
     <c:choose>
   		<c:when test="${sessionScope.smm!=null}">  
   		 <label>用户名重复，请重新注册</label>
   		</c:when>
   	</c:choose>
   
			<s:textfield name="ano" placeholder="新的用户名" size="8"
				theme="simple" />
    </div>
    <div class="input_box">
			<s:password name="apw" placeholder="密码" size="8"
				theme="simple" />
    </div>
    
    <div class="input_box2" >   
   
    </div>
   <div  >
   
   </div>
   <div class="input_box">
   </div>
   
    <div class="input_box">
    	<s:submit value="注册"></s:submit>
    </div>
    
	</s:form>
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
