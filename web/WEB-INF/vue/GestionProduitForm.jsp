<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="modele.*" %>


<!DOCTYPE html>

<html>
<head>
    <title>Livre d'or</title>
    <meta charset="utf-8" />
</head>
<body>
<h1>Gestion des Produits du site</h1>
<form action="/main" method="post" >
    <table>
        <tr>
            <td> <label>Categorie :</label></td> <td> <select name="categorie" size="1"><optgroup label="Informatique"><option name="op1">Programation</option>
                                                                        <option name="op1">Programation</option>
                                                                        <option name="op1">BD</option>
                                                                        <option name="op1">CLOUD</option>
                                                                        <option name="op1">Reseau</option>
                                                                    </optgroup></select></td>
            </td>
            <td> <label>Libelle : </label></td> <td><input type="text" name="libelle" /> </td>
        </tr>
        <tr>
            <td> <label>Quantite : </label></td> <td><input type="number" name="quantite" /></td>
            <td> <label>Prix : </label></td> <td><input type="number" name="prix" /> </td>
        </tr>
        <tr>
            <td> <label>Prix : </label></td> <td><input type="date" name="datemisestock" /> </td>
            <td> <label>Autres informations : </label></td> <td><textarea name="description" style="width: 200px; height: 100px;"></textarea> </td>
        </tr>

    </table>


    <p>
        <input type="submit" />
    </p>
</form>

<h1>Ils ont aimé :</h1>
<%
    List<Produit> produits = (List<Produit>) request.getAttribute("produits");
    for (Produit produit : produits) {
%>
<p>
    <strong><%= produit.getLibelle() %></strong> a écrit :<br />
    <%= produit.getPrix() %>
</p>
<%
    }
%>
</body>
</html>