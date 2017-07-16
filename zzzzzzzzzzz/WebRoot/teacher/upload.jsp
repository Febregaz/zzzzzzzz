<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'upload.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/H-ui.css" />
<style type="text/css">
.ui-sortable .panel-header{ cursor:move}
</style>


</head>

<body>
	<div >
		<div class="panel-header">表单</div>
		<div >

			<s:form action="upload" enctype="multipart/form-data" method="post">
	        <!--  <s:textfield name="sno" placeholder="Username" size="8" />    <s:file name="uploadfile" ></s:file> --> 
         	
           
						  
				
				
			<s:submit value="login"></s:submit>
			
			     		<div class="am-form-group">
								<label for="doc-ipt-email-1">邮件</label> <input type="email"
									class="" name="sno" placeholder="输入电子邮件">
							</div>

							<div class="am-form-group">
								<label for="doc-ipt-pwd-1">密码</label> <input type="password"
									class="" name="spw" placeholder="设置个密码吧">
							</div>

							<div class="am-form-group">
								<label for="doc-ipt-file-1">原生文件上传域</label> <input type="file"
									name="uploadfile">
								<p class="am-form-help">请选择要上传的文件...</p>
							</div>
			
  	       </s:form>




	</div>
	</div>
</body>
</html>