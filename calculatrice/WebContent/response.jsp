<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>calculatrice</title>
</head>
<body>
<%
int op1 =Integer.parseInt(request.getParameter("op1"));
int op2 =Integer.parseInt(request.getParameter("op2"));
String operation =request.getParameter("r");


%>
<h1>reponce</h1>
<%
if (operation.equals("add"))
{

%>
<h1>le resulta est <%=op1+op2%> </h1>
<%
}
if (operation.equals("sous"))
{

%>
<h1>le resulta est <%=op1-op2%> </h1>
<% 
}
if (operation.equals("multi"))
{

%>
<h1>le resulta est <%=op1*op2%> </h1>
<% 
}
if (operation.equals("div"))
{ if(op2==0){%>
<jsp:forward page="erreur.html"></jsp:forward>
<% }else
{

%>
<h1>le resulta est <%=op1/op2%> </h1>
<%
}}
%>
<hr>
<table>
<tr>
<th> resultat</th>

</tr>

</table>
</body>
</html>