<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/addadminstyle.css" rel='stylesheet' type='text/css' />

<script type="application/x-javascript">
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 





</script>

</head>
<body>
	<div class="main">
		<form action="adminadd">
			<ul class="left-form">
				<h2>添加User</h2>
				<li><input type="text" placeholder="用户名" name="aname" required /> <a
					href="#" class="icon ticker"> </a>
					<div class="clear"></div></li>
				<li><input type="text" placeholder="密码" name="apw" required /> <a
					href="#" class="icon ticker"> </a>
					<div class="clear"></div></li>
				<li><input type="text" placeholder="类型" name="atype" required /> <a
					href="#" class="icon ticker"> </a>
					<div class="clear"></div></li>
				<li><input type="text" placeholder="个人简介" name="amessage" required /> <a
					href="#" class="icon ticker"> </a>
					<div class="clear"></div></li>
				<li><input type="text" placeholder="用户余额" name="amoney" required /> <a
					href="#" class="icon ticker"> </a>
					<div class="clear"></div></li>
				<input type="submit" onClick="myFunction()" value="添加用户">
				<div class="clear"></div>
			</ul>
			<div class="clear"></div>

		</form>

	</div>
</body>
</html>