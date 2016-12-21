<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24/11/2016
  Time: 06:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="modele.Categorie" %>

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
            <li><a href="#adduser" class="useradd">Ajout categorie</a></li>

        </ul>
    </div>
</div>

<div id="wrapper">
    <div id="content">
        <div id="box">
            <h3>categories</h3>
            <table width="100%">

                <thead>
                <tr>
                    <th width="40px"><a href="#">ID<img src="ressourcesAdmin/img/icons/arrow_down_mini.gif" width="16" height="16" align="absmiddle" /></a></th>
                    <th><a href="#">Désignation</a></th>
                    <th><a href="#">Plus d'informations</a></th>
                    <th width="60px"><a href="#">Action</a></th>
                </tr>
                </thead>
                <tbody>
                <%
                    List<Categorie> categories= (List<Categorie>) request.getAttribute("categories");
                    for(Categorie categorie : categories){
                %>
                <tr>
                    <td class="a-center"><%= categorie.getId()%></td>
                    <td><a href="#"><%= categorie.getLibelle()%></a></td>
                    <td><%= categorie.getDescription()%></td>
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
            <h3 id="adduser">Ajouter un categorie</h3>
            <form id="form" action="/categories" method="post">
                <label for="libelle">Libelle : </label>
                <input name="libelle" id="libelle" type="text" tabindex="1" />
                <br />
                <label for="description">Description : </label>
                <input name="description" id="description" type="text"
                />
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
