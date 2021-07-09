<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.ClientBean"%>
<%@page import="java.io.PrintWriter"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <% out.println(request.getAttribute("value")); %>
  <script type="text/javascript">
  var x=   <% out.println(request.getAttribute("value")); %>;

  alert(x);</script>
  
 
</body>
</html>