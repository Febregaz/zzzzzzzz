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

<%
	String aname = request.getParameter("aname");
	String apw = request.getParameter("apw");
	String atype = request.getParameter("atype");
	String amessage = request.getParameter("amessage");
	String amoney = request.getParameter("amoney");
%>

</head>
<body>
	<div class="main">
		<form action="amodify.action">
			<ul class="left-form">
				<h2>添加User</h2>
				<li><input type="text" value="<%=aname%>" name="aname" required />
					<a href="#" class="icon ticker"> </a>
					<div class="clear"></div></li>
				<li><input type="text" value="<%=apw%>" name="apw" required />
					<a href="#" class="icon ticker"> </a>
					<div class="clear"></div></li>
				<li><input type="text" value="<%=atype%>" name="atype" required />
					<a href="#" class="icon ticker"> </a>
					<div class="clear"></div></li>
				<li><input type="text" value="<%=amessage%>" name="amessage" required />
					<a href="#" class="icon ticker"> </a>
					<div class="clear"></div></li>
				<li><input type="text" value="<%=amoney%>" name="amoney" required />
					<a href="#" class="icon ticker"> </a>
					<div class="clear"></div></li>
				<input type="submit" onClick="myFunction()" value="确认修改">
				<div class="clear"></div>
			</ul>
			<div class="clear"></div>

		</form>

	</div>
</body>
</html>