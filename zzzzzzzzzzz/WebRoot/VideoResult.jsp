<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/zzsc-demo.css">
<link rel="stylesheet" type="text/css" href="../../css/stylee.css" />
<link rel="stylesheet" type="text/css" href="../../css/basictable.css" />
<link rel="stylesheet" type="text/css"
	href="../../css/jquery-ui-1.10.4.custom.css" />
<link rel="stylesheet" type="text/css" href="../../css/style.css" />

<link rel="stylesheet" type="text/css" href="css/zzsc-demo.css">
<link rel="stylesheet" type="text/css" href="css/stylee.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<link rel="stylesheet" type="text/css"
	href="css/jquery-ui-1.10.4.custom.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<div class="zzsc-container">
		<div id="page">
			<table id="table">
				<thead>
					<tr>
						<th>视频ID</th>
						<th>视频名称</th>
						<th>视频科目ID</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="video_list" var="sd">
						<tr>
							<td><s:property value="#sd.vid" /></td>
							<td><s:property value="#sd.vname" /> <span
								style="WHITE-SPACE: pre"> </span></td>
							<td><s:property value="#sd.vlid"></s:property></td>
							<td><a
								href="vdelete.action?vid=<s:property value="#sd.vid" />&vname=<s:property value="#sd.vname" />"
								class="delete">删除</a></td>
						</tr>
					</s:iterator>

				</tbody>
			</table>


		</div>
	</div>

	<script src="../../js/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="../../js/jquery.basictable.min.js"></script>
	<script type="text/javascript" src="../../js/jquery-1.10.2.js"></script>
	<script type="text/javascript"
		src="../../js/jquery-ui-1.10.4.custom.js"></script>


	<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.basictable.min.js"></script>
	<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.10.4.custom.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("a").button();
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#table').basictable();

			$('#table-breakpoint').basictable({
				breakpoint : 768
			});

			$('#table-swap-axis').basictable({
				swapAxis : true
			});

			$('#table-force-off').basictable({
				forceResponsive : true
			});

			$('#table-no-resize').basictable({
				noResize : true
			});

			$('#table-two-axis').basictable();

			$('#table-max-height').basictable({
				tableWrapper : true
			});
		});
	</script>
</body>
</html>