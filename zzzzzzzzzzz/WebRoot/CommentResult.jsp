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
						<th>ID</th>
						<th>所属视频栏目</th>
						<th>发布者</th>
						<th>发布内容</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="comment_list" var="sd">
						<tr>
							<td><s:property value="#sd.mid" /></td>
							<td><s:property value="#sd.mvid" /> <span
								style="WHITE-SPACE: pre"> </span></td>
							<td><s:property value="#sd.mfounder"></s:property></td>
							<td><s:property value="#sd.mmessage"></s:property></td>
							<td><a
								href="admincommentdelete.action?mid=<s:property value="#sd.mid" />"
								class="delete">删除</a> <input type="hidden"
								value="<s:property value="#sd.mid" /> " /></td>
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