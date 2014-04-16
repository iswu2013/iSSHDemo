<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xiugai.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <center>
    <table>
    <s:form action="student!xiugai" method="post">
    <s:iterator value="#request.s" var="stu">  </s:iterator>
    <s:hidden name="id" value="%{#request.stu.id}"></s:hidden>
    <s:textfield name="name" value="%{#request.stu.name}" label="用户姓名"></s:textfield>
    <s:textfield name="age" value="%{#request.stu.age}" label="用户年龄"></s:textfield>
     <s:textfield name="pswd" value="%{#request.stu.pswd}" label="用户密码"></s:textfield>
     <s:submit value="提交"></s:submit>

     </s:form>

    </table>
    
    </center>
  </body>
</html>
