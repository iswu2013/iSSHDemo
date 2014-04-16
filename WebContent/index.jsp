<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="/css/styles.css">
<script type="text/javascript" src="/js/jquery-1.11.0.js"></script>
<script type="text/javascript" defer="defer">
	
	var inputs = document.getElementsByTagName('input');
	var un = $("#userName");
	alert(un);

	for (var i = 0; i < inputs.length; i++) {
		var input = inputs[i];
		alert(input.name);
		input.addEventListener('keyup', bindUI, false);
	}

	function bindUI() {
		if (this.value) {
			this.classList.add('not-empty');
		} else {
			this.classList.remove('not-empty');
		}
	}
</script>
</head>
<body>
	<center>
		<s:form action="login.action" method="post">
			<div class='input'>
				<s:textfield id="userName" name="userName" label="姓名"></s:textfield>
			</div>
			<div class='input'>
				<s:textfield id="password" name="password" label="密码"></s:textfield>
			</div>
			<s:submit value="提交"></s:submit>
		</s:form>
	</center>

</body>
</html>
