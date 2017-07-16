<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
 String s1=request.getParameter("xuan");
 Integer s2=Integer.valueOf(s1);
session.setAttribute("s2", s2);
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'anss.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"
	href="/static/moco/v1.0/dist/css/moco.min.css?t=201705081743"
	type="text/css" />
<link rel="stylesheet"
	href="http://static.mukewang.com/static/css/??base.css,common/common-less.css?t=2.5,course/course_list-v2-less.css?v=1.0?v=201705081743"
	type="text/css" />
<link rel="stylesheet" href="http://static.mukewang.com/static/css/??base.css,common/common-less.css?t=3,course/inc/course_common-less.css?t=4,common/pic-viewer-less.css,course/ceping-less.css,nanoscroller.css?v=201705271628" type="text/css" />
<link rel="stylesheet" href="/static/lib/layer/1.6.0/skin/layer.css"/>

<link rel="stylesheet" href="/static/moco/v1.0/dist/css/moco.min.css" type="text/css" />
<script src="jquery-1.7.2.min.js"></script> 
<script type="text/javascript">
function aaa(b,c){

;
if(b==c)
{
var userStr="<div class='select-wrap'> "

userStr+="你的答案正确";
userStr+="<div>"
 document.getElementById('ccc').innerHTML=userStr;
}
else
{
var userStr="<div class='select-wrap'> "

userStr+="你的答案错误,正确答案是"+b;
userStr+="<div>"
document.getElementById('ccc').innerHTML=userStr;
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
	
		<s:iterator value="#session.entry4" id="as" status="vs">
			<s:if test="#as.oid==#session.s2 "  >
			
	 <div class="practiseBox clearfix">
        <div class="xitiList" id="video-box">
                <div id="feature-slide-block">
                                    <dl class="feature-slide-preview" style=" ">
                        <dt  class="nano">
                            <div class="con-box nano-content">
                                 <h2 class="ceping-head oneSel"><s:property value='#as.oname' /></h2>                               
                                <div class="ceping-description J_CodeLang">
                                  <h3 class="desc-hd"></h3>
                                  <div class="ceping-desc co clearfix"><s:property value='#as.otitle' />

                                  </div>
                                  <div class="ceping-tips">
                                    <div class="ceping-qa">
                                                                            </div>
                                  </div>
                                </div>
                            </div><!--con-box end-->
                        </dt>
                        <dd class="dd-wrap nano js-dd">
                            <div class="nano-content"  id="ccc">
                            
                                  <div class="select-wrap"  onclick="aaa('<s:property value='#as.oreal' />','<s:property value='#as.oa' />')">
                                  <div class="arrowSel"></div>
                                  <i class="round"></i>
                                  <span ><s:property value='#as.oa' /></span>
                                </div>
                                
                                  <div class="select-wrap" onclick="aaa('<s:property value='#as.oreal' />','<s:property value='#as.ob' />')">
                                  <div class="arrowSel"></div>
                                  <i class="round"></i>
                                  <span><s:property value='#as.ob' /></span>
                                </div>
                                
                               <div class="select-wrap" onclick="aaa('<s:property value='#as.oreal' />','<s:property value='#as.oc' />')">
                                  <div class="arrowSel"></div>
                                  <i class="round"></i>
                                  <span><s:property value='#as.oc' /></span>
                                </div>
                                
                                   <div class="select-wrap" onclick="aaa('<s:property value='#as.oreal' />','<s:property value='#as.od' />')">
                                  <div class="arrowSel"></div>
                                  <i class="round"></i>
                                  <span><s:property value='#as.od' /></span>
                                </div>
                                                                                          </div>
                            <!-- 答案与解析放置地方 -->
                              <div class="assess">
                                <div class="content"></div>
                              </div>
                        </dd>
                    </dl>
                                </div>
      </div>
	</div>
	    </s:if>
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