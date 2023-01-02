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
<body>
	<h1>nouveau client</h1>
	<form action="ajouterClient" method="post">

	
	
	
	 <div class="form-group">
      <label for="nom">nom:</label>
      <input type="text" class="form-control" id="nom" placeholder="Enter votre nom" name="nom">
    </div>
    <div class="form-group">
      <label for="prenom">prenom:</label>
      <input type="text" class="form-control" id="prenom" placeholder="Enter votre prenom" name="prenom">
    </div>
    </div>
    	<div class="form-group">
      	<label for="age">age:</label>
      	<input type="number" class="form-control" id="age" placeholder="Enter votre age" name="age">
    </div>
    
   <input type="submit" value="envoyer"  class="btn btn-primary"> 
	</form>
</body>
</html>