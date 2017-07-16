<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
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
						<th>用户名</th>
						<th>密码</th>
						<th>类型</th>
						<th>个人简介</th>
						<th>用户余额</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="admin_list" var="sd">
						<tr>
							<td><s:property value="#sd.aname" /></td>
							<td><s:property value="#sd.apw" /> <span
								style="WHITE-SPACE: pre"> </span></td>
							<td><s:property value="#sd.atype"></s:property></td>
							<td><s:property value="#sd.amessage"></s:property></td>
							<td><s:property value="#sd.amoney"></s:property></td>
							<td><a
								href="adelete.action?aname=<s:property value="#sd.aname" />"
								class="delete">删除</a> <input type="hidden"
								value="<s:property value="#sd.aname" /> " /></td>
							<td><s:url value="/AdminModify.jsp" var="url">
									<s:param name="aname" value="#sd.aname" />
									<s:param name="apw" value="#sd.apw" />
									<s:param name="atype" value="#sd.atype" />
									<s:param name="amessage" value="#sd.amessage" />
									<s:param name="amoney" value="#sd.amoney" />
								</s:url> <s:a href="%{url}">修改</s:a></td>
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
	<script type="text/javascript"
		src="js/jquery-ui-1.10.4.custom.js"></script>

	<script type="text/javascript">
		$(function() {
			$(".delete").click(function() {
				var tr = $(this).parent().parent();
				var lastname = $(this).next(":hidden").val();
				var flag = confirm("确定要删除" + lastname + "的信息吗？");
				if (flag) {
					//用ajax方法删除
					var url = this.href;
					var args = {
						"time" : new Date()
					}/*json格式*/
					$.post(url, function(data) {
						if (data == 1) {
							alert("删除成功");
							tr.remove();
						} else {
							alert("删除失败");
						}
					});
				}

				return false;
			});
		})
	</script>

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