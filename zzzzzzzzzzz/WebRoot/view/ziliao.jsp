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
    
    <title>My JSP 'ziliao.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="http://static.mukewang.com/static/css/??base.css,common/common-less.css?t=2.5,article/article-index-less.css?v=2017060812" type="text/css" />
<link rel="stylesheet" href="http://static.mukewang.com/static/css/??base.css,common/common-less.css?t=2.5,article/create-less.css?v=2017060812" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="css/jquery-ui-1.10.4.custom.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

<!-- mooc.css -->
<link rel="stylesheet"
	href="css/muke1.css"
	type="text/css" />
<link rel="stylesheet"
	href="css/muke3.css"
	type="text/css" />
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

 <c:choose>
   		<c:when test="${sessionScope.sno!=null}">  
<div class="opus-wrap clearfix">

<div class="article-wrap" >
    <!-- article title -->
    <h2 class="article-title">发布资料</h2>

    <!-- article content -->
    <div class="article-form">
<form action="addt" method="post">
      <!-- 标题 -->
      <div class="form-group">
          <span class="needed">*</span>
          <div class="form-ipt-wrap">
              <input type="text" name="arttitle" style="margin: 0px; width: 764px; height: 40px; Border:1px solid #000;"  placeholder="请在此输入标题，最多20中文字长度" />          
              <p class="form-ipt-error"></p>
          </div>
        
      </div>
      <!-- 编辑 -->


      <div class="form-group clearfix">
          <span class="needed">*</span>
       
          <div class="form-ipt-wrap edit-area">
           <div >
           <textarea  name="content" rows="10" cols="30" placeholder="请输入内容，不超过200字。"  style="margin: 0px; width: 764px; height: 201px; Border:1px solid #000;"></textarea>   
              <p class="form-ipt-error"></p>
          </div>
          </div>
      </div>
     
    </div>


  
      
      <br>
      	<button type="submit"  class="btn btn-red">提交</button>
</form>

</div>
</div>
</div>
</c:when>
</c:choose>


<div class="opus-wrap clearfix">

<s:iterator value="#tt" id="kk" status="vs">

<div class="article-lwrap ">
	
	<h3 class="item-title">
		<a href="" class="title-detail" target="_blank"><s:property value="#kk.ttitle" /></a>
	
	<!-- text -->
	<div class="">
		
		<p class="item-bd"><s:property value="#kk.tmessage" /></p>
		<div class="item-btm clearfix">
			<ul class="l left-info" data-fuid="1102391">
																</ul>
			<div class="r right-info">
				<span class="looked">作者：</span>
				<span class="recom"><s:property value="#kk.tfounder" /></span>
				
			</div>
		</div>
	</div>
</div>
</s:iterator>

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
