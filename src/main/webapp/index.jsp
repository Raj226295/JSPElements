<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.Connection" %>
    
    <!-- JSP ELEMENT -->
<% 
int a=20;
%>

<!-- how to print any value using expression tag -->

a=<%=a  %>
<%-- declaration tag--%>
<%! int square(int x){
	return x*x; }
	%>  
	Square of <%= square(4) %>

<%-- JSP Action Element --%>
<jsp:include page="html/welcome.html" />

<h2>JSTL Example</h2>
<c:set var="name" value="Admin" />
<p>Welcome ${name}</p>

<h2>Java Date Example</h2>
<%
    Date d = new Date();
    out.println(d);
%>

<%-- JSP Forward Example (commented) --%>
<%-- <jsp:forward page="login.jsp" /> --%>	 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP element</title>
</head>
<body>
<form action ="index.jsp" method="get">
Enter email:<input type="email" name="email">
<button type="submit" value="submit">Submit</button>
</form>
<%String email=request.getParameter("email"); %>
email<%=email %><%--how to print variable --%>
</body>
</html>