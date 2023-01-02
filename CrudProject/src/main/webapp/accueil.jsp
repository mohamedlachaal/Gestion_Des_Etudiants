<%@page import="beans.Client"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
</head>
<body>
<%
List<Client> clients = (List<Client>)request.getAttribute("list");
%>
<table class="table">
<tr>
	<th> id </th>
	<th> nom </th>
	<th> prenom </th>
	<th> age </th>
	<th> actions </th>
</tr>
<%
for(Client client : clients){
%>



	<tr>
<td><a href="ShowProfil?id=<%=client.getId() %>"><%=client.getId() %></a></td>
<td><%=client.getNom() %></td>
<td><%=client.getPrenom() %></td>
<td><%=client.getAge() %></td>
<td><a href="DeleteClient?id=<%=client.getId() %>" >delete</a> <a	 href="RecupeClient?id=<%=client.getId() %>">update</a></td>
</tr>


<%} %>
</table>
<p align="center">
<a href="nouveauClient.jsp">Ajouter un Nouveau Client</a>
</p>
</body>
</html>