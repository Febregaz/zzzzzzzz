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
<script type="text/javascript">
var a;
function get_data() {  
  $.ajax({  
        type: "get",  
        cache: false,  
        data: {zz:a}, 
        async: true,  
        url: "uplob.action",  
        success: function(data) { 
			console.log(data.op2.length);			
			var userStr="<label for='doc-select-1'>目录</label> <select id='t' name='less'>";

			  for(var i=0; i<data.op2.length; i++)  
			  {  
			       
			       userStr+="<option value='"
			      userStr+=data.op2[i].lid;
			       userStr+="'>";
			       userStr+=data.op2[i].lmessage;
			        userStr+="</option>";
			  }  
			userStr+="</select> <span class='am-form-caret'></span>";
				 document.getElementById('change').innerHTML=userStr;
		
			
				
        }, error: function(data) { 
        }  
    });  
 }
function abc(){
var  myselect=document.getElementById("text");
  var index=myselect.selectedIndex ;    
  a = myselect.options[index].value;    // selectedIndex代表的是你所选中项的index
 alert(a);
     get_data()
 }
 
</script>
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
						</ul></li>
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
						<strong class="am-text-primary am-text-lg">教师</strong> / <small>上传</small>
					</div>
				</div>

				<hr>

				<div class="am-tabs am-margin" data-am-tabs>

					<s:form action="upload" enctype="multipart/form-data"
						class="am-form" method="post">
						<fieldset>




							<div class="am-form-group">
								<label for="doc-ipt-email-1">视频名</label> <input type="text"
									class="" name="videoname" placeholder="视频名">
							</div>

							<div class="am-form-group">
								<label for="doc-ipt-file-1">上传视频</label> <input type="file"
									name="uploadfile">
								<p class="am-form-help">请选择要上传的文件...</p>
							</div>


							<div class="am-form-group">
								<label for="doc-select-1">课程名</label> 
								<select id="text" onchange="abc()">
									<option value="0">请选择</option>		
									<s:iterator value="#session.op1" id="kcc">
																	
									<option value="<s:property value="#kcc.cid" />"><s:property value="#kcc.ktitle" /></option>									
									</s:iterator>								
								</select> <span class="am-form-caret"></span>
							</div>


                              <div class="am-form-group" id="change">
								<label for="doc-select-2">目录</label> <select
									id="doc-select-2">								
								</select> <span class="am-form-caret"></span>
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
