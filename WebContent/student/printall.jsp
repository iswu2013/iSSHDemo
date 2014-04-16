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
    
    <title>My JSP 'printall.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script language = "javascript" type="text/javascript">
		function del(proid){
			var b = confirm("确认要将该条信息删除么？");
			if(b){
				window.location.href="<%=basePath %>"+"student!del?id="+proid;
			}else{
			
				alert("删除操作取消！！！");
			
			}
			

		}
  </script>

  </head>
    
  <body>
     <center>
        <table border="1" width="600">
        <tr><td>用户编号</td><td>用户姓名</td><td>用户年龄</td><td>用户密码</td><td>操作</td></tr>
        <s:iterator value="#request.list" var="list" >
        <tr>   
        <td><s:property value="#list.id"/></td>
        <td><s:property value="#list.name"/></td>
        <td><s:property value="#list.age"/></td>
        <td><s:property value="#list.pswd"/></td>
        <td><a href="student!findId?id=<s:property value="#list.id"/>">修改</a>
       <a href="javascript:del(<s:property value="#list.id"/>)">删除</a>
        </td>
        </tr>
        </s:iterator>
        
        </table> 
          <a href="student/add.jsp">添加新用户</a>
         
     </center>
  </body>
</html>
