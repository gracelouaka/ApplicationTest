<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/11/2016
  Time: 04:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<ul>
    <li>Accueil</li>
    <li>Categorie 1
    <ul style="vertical-align: text-top">
        <%String chaine="voici grace"; %>
        <li><a href="/inscription?valeur=<%= chaine%>" target="_parent" >sous categorie 1</a></li>
        <li>sous categorie 2</li>
        <li>sous categorie 3</li>
    </ul>
    </li>
    <li>Categorie 2</li>


</ul>
</body>
</html>
