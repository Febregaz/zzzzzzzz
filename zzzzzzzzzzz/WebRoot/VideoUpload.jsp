<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<p style="text-align: center; font-size: 20px;">请输入视频的相关信息</p>
	<s:actionerror />
	<s:fielderror />
	<form class="form-horizontal" enctype="multipart/form-data"
		action="uploadd.action" theme="simple" namespace="/" method="post">
		<div class="form-group" style="margin-left: 500px;"> 
			<label for="firstname" class="col-sm-2 control-label">视频名称</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="vname" id="firstname"
					placeholder="请输入..." style="width: 400px;">
			</div>
		</div>
		<div class="form-group" style="margin-left: 500px;">
			<label for="lastname" class="col-sm-2 control-label">所属科目ID</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="vlid" id="lastname"
					placeholder="请输入..." style="width: 400px;">
			</div>
		</div>
		<div class="form-group" style="margin-left: 500px;">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label> <input type="checkbox"> 请阅读完相关责任说明书后再上传视频
					</label>
				</div>
			</div>
		</div>
		<div class="form-group" style="margin-left: 700px;">
			<div class=" col-sm-10">
				<s:file label="上传文件：" name="upload"></s:file>
				<button type="submit" class="btn btn-default">上传</button> 
			</div>
		</div>
	</form>
</body>
</html>