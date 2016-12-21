<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24/11/2016
  Time: 06:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="modele.Utilisateur" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Administration</title>
    <link rel="stylesheet" type="text/css" href="ressourcesAdmin/css/theme.css" />
    <link rel="stylesheet" type="text/css" href="ressourcesAdmin/css/style.css" />
    <link rel="stylesheet" type="text/css" href="ressourcesAdmin/css/theme1.css" />
    <link rel="stylesheet" type="text/css" href="ressourcesAdmin/css/theme2.css" />
    <link rel="stylesheet" type="text/css" href="ressourcesAdmin/css/theme3.css" />
    <link rel="stylesheet" type="text/css" href="ressourcesAdmin/css/theme4.css" />
    <!--[if IE]>
    <link rel="stylesheet" type="text/css" href="css/ie-sucks.css" />
    <![endif]-->
</head>
<body bgcolor="#f5f5f5">
<%@include file="HeaderAdmin.jsp"%>

<div id="top-panel">
    <div id="panel">
        <ul>
            <li><a href="#adduser" class="useradd">Ajout utilisateur</a></li>

        </ul>
    </div>
</div>

<div id="wrapper">
    <div id="content">
        <div id="box">
            <h3>utilisateurs</h3>
            <table width="100%">

                <thead>
                <tr>
                    <th width="40px"><a href="#">ID<img src="ressourcesAdmin/img/icons/arrow_down_mini.gif" width="16" height="16" align="absmiddle" /></a></th>
                    <th><a href="#">Prénom</a></th>
                    <th><a href="#">Nom</a></th>
                    <th width="70px"><a href="#">  Sexe  </a></th>
                    <th width="50px"><a href="#">Email</a></th>
                    <th width="90px"><a href="#">Profile</a></th>
                </tr>
                </thead>
                <tbody>
                <%
                    List<Utilisateur> utilisateurs= (List<Utilisateur>) request.getAttribute("utilisateurs");
                    for(Utilisateur utilisateur : utilisateurs){
                %>
                <tr>
                    <td class="a-center"><%= utilisateur.getIdCompe()%></td>
                    <td><a href="#"><%= utilisateur.getPrenom()%></a></td>
                    <td><a href="#"><%= utilisateur.getNom()%></a></td>
                    <td><%= utilisateur.getSexe()%></td>
                    <td><%= utilisateur.getEmail()%></td>
                    <td><%= utilisateur.getProfile()%></td>
                    <td><a href="#"><img src="ressourcesAdmin/img/icons/user.png" title="Show profile" width="16" height="16" /></a><a href="#"><img src="ressourcesAdmin/img/icons/user_edit.png" title="Edit user" width="16" height="16" /></a><a href="#"><img src="ressourcesAdmin/img/icons/user_delete.png" title="Delete user" width="16" height="16" /></a></td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>

        </div>
        <br />
        <div id="box">
            <h3 id="adduser">Ajouter un utilisateur</h3>
            <form id="form" action="/utilisateurs" method="post">

                <label for="prenom">Prenom : </label>
                <input name="prenom" id="prenom" type="text" tabindex="1" />
                <br />

                <label for="nom">Nom : </label>
                <input name="nom" id="nom" type="text" tabindex="1" />
                <br />

                <label for="sexe">Sexe : </label>
                <input name="sexe" id="sexe" type="text" tabindex="1" />
                <br />

                <label for="email">Email : </label>
                <input name="email" id="email" type="text" tabindex="1" />
                <br />

                <label for="password">Password : </label>
                <input name="password" id="password" type="password" tabindex="1" />
                <br />

                <label for="profile">Profile : </label>
                <input name="profile" id="profile" type="text" tabindex="1" />
                <br />
                <div align="center">
                    <input id="button1" type="submit" value="Send" />
                    <input id="button2" type="reset" />
                </div>
            </form>

        </div>
    </div>
</div>
<%@include file="FooterAdmin.jsp"%>
</body>
</html>
