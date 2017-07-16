<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
 String s1=request.getParameter("vidio");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'play.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<style type="text/css">
<!--
div { line-height:26px; font-size:14px;}
body { background:#ffffff url(CuPlayerBg.jpg); padding:10px;margin:10px;} 
div,ul,li,ol,dl,dt,dd,form,img,p{margin: 0; padding: 0; border: 0; }
li{list-style-type:none;} 
/* myplayer */
div#myplayer { width:995px;margin:0 auto; border:1px #cccccc solid; clear:both;  background:#ffffff; clear:both; height:455px;}
div#CuPlayer { width:700px;float:left;margin-left:0px;margin-top:0px;}
div.list { width:270px;float:left;margin-top:10px;}
div.list dl img{ width:70px;height:50px; float:left; display:none;}
div.list dl strong { display:block; width:190px;float:left; padding-left:8px;}
div.list dl span { display:block; width:190px;float:left; padding-left:8px;}
div.list dl dt { width:270px;float:left; }
div.list dl dt a { display:block; line-height:18px;padding-top:10px;  border-bottom:1px #cccccc solid; 
 height:45px; padding-top:10px; color:#333; font-size:12px; text-decoration:none; }
div.list dl dt a:hover{  height:45px; padding-top:10px;  text-decoration:none; background:#efefef; }
.blank { clear:both; height:20px; }
div.help { line-height:32px; font-size:14px; clear:both; width:995px;margin:0 auto; font-family:"Microsoft YaHei","微软雅黑","Microsoft JhengHei",MingLiu,Verdana, Arial, Helvetica, sans-serif,"宋体"; }
h1 { border-bottom:1px #cccccc solid; line-height:58px;}
.video { OVERFLOW: hidden; WIDTH: 100%; POSITION: relative}
.close_light_bg {DISPLAY: none; BACKGROUND: #000; FILTER: alpha(opacity = 95); LEFT: 0px; WIDTH: 100%; POSITION: absolute; TOP: 0px; HEIGHT: 100%; opacity: .95}
ul.nav {width:980px;margin:0 auto;}
ul.nav li{ line-height:30px; height:30px;float:left; width:232px; margin-right:11px;}
ul.nav li a,ul.nav li a:link,ul.nav li a:visited{ background:#efefef; display:block; border:1px #666 solid; text-decoration:none; font-size:12px; text-align:center; color:#000; font-weight:bold;}
ul.nav li.on a,ul.nav li.on a:link,ul.nav li.on a:visited,ul.nav li a:hover {background:#b60229;  border:1px #b60229 solid;font-size:12px; color:#FF0; font-weight:bold; }
-->
</style>

<link rel="stylesheet"
	href="css/muke1.css"
	type="text/css" />
<link rel="stylesheet"
	href="css/muke2.css"
	type="text/css" />
<script>
	
function abc(b){
  
  
   
    
   this.location.href="view/play.jsp?vidio="+b.attr('value');// 打开同路径下的b.jsp文件
   
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
							<li class="header-signin"><a href="view/login.jsp">登录</a></li>
							<li class="header-signup"><a href="view/zhuce.jsp" id="js-signup-btn">注册</a>
							</li>
						</ul>
					</div>
				</c:otherwise>

			</c:choose>

		</div>
	</div>
 
<div class="close_light_bg" id="close_light_bg"></div>

<div class="blank"></div>
<!--myplayer/begin-->
<div id="myplayer">
<!--酷播v4.0列表免费版 代码开始-->
<div id="CuPlayer"  class="video" > 

<video width=700px height=450px  controls>
    
			<source src=".\media\<%=s1%>"  type="video/mp4"></source>
		   
		</video> </div>
<div class="list" style="height:440px;width:280px;overflow-x:hidden;overflow-y:auto" >

   <s:iterator value="#session.entry1" id="kk" status="vs">				
					<s:iterator value="#session.entry3" id="aa" status="vs">
					
					<s:if test="#kk.lid==#aa.vlid">
					
	<dl>
  <dt><a  class="J-media-item" onclick="abc($(this))" value="<s:property value='#aa.vname' />"><strong><s:property value='#aa.vtitle' /></strong><span></span></a></dt>
  </dl>
					
							
					

					</s:if>
					  </s:iterator>
					 
					
		</s:iterator>

  
  
  
  
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
