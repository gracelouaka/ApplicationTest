<%@ page import="modele.Utilisateur" %>
<%@ page import="java.util.List" %>
<%@ page import="modele.Utilisateur" %>

<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/11/2016
  Time: 04:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Inscription</title>
    <meta charset="utf-8" />
</head>
<body>
<form action="/inscription" method="post">

    <p> <label>Nom    : </label><input type="text" name="nom"></p>
    <p> <label>Prenom : </label><input type="text" name="prenom"></p>
    <p> <label>Sexe   : </label><input type="text" name="sexe"></p>
    <p> <label>Date de Naissance : </label><input type="text" name="datenaissance"></p>
    <p> <label>Email : </label><input type="text" name="email"></p>
    <p> <label>Mot de passe : </label><input type="text" name="password"></p>
    <p> <label>Numero carte : </label><input type="text" name="numerocarte"></p>
    <p> <label>Code securite : </label><input type="text" name="codesecurite"></p>
    <p> <label>Date Expiration (MM/AA) : </label><input type="text" name="expirationcarte"></p>
    <p> <input type="submit" text="Envoyer"></p>
</form>
<h1>LISTE DES UTILISATEURS :</h1>
<%
    List<Utilisateur> users = (List<Utilisateur>) request.getAttribute("users");
    for (Utilisateur user : users) {
%>
<p>

<strong><%=user.getNom()+" "+user.getPrenom()+" Email = "+user.getEmail()%></strong>
</p>
<%
    }

%>
</body>
</html>
