<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/11/2016
  Time: 04:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="modele.Produit" %>
<%@ page import="modele.Categorie" %>
<%@ page import="static com.googlecode.objectify.ObjectifyService.ofy" %>
<!DOCTYPE html>
<html>
<head>
    <title>O-Livre</title>
</head>
<body bgcolor="#f5f5f5">

<%@include file="Header.jsp"%>


<div class="row">
    <div id="sidebar" class="span3">
        <div class="well well-small">
            <ul class="nav nav-list">

                <%
                    List<Categorie> categoriess = ofy().load().type(Categorie.class).list();
                    for(Categorie categorie : categoriess){
                %>
                <li><a href="#"><span class="icon-chevron-right"></span><%=categorie.getLibelle()%></a></li>
                <%
                    }
                %>

            </ul>
        </div>

    </div>
    <div class="span9">

        <div class="well well-small">

            <%
                String recherche=null;
                if(request.getParameter("recherche")!=null)
                    recherche=request.getParameter("recherche");

                List<Produit> produits = ofy().load().type(Produit.class).list();
                for(Produit produit : produits){
                    if(((recherche!=null)&&(produit.getLibelle().startsWith(recherche)))||recherche==null){

            %>
            <div class="row-fluid">
                <!--
                    <div class="span2">
                    <img src="assets/img/a.jpg" alt="">
                </div>
                -->
                <div class="span6">
                    <h5><%=produit.getLibelle()%> </h5>
                    <p><%=produit.getDescription()%>
                    </p>
                </div>
                <div class="span4 alignR">
                    <form class="form-horizontal qtyFrm">
                        <h3> <%=produit.getPrix()%> €</h3>
                        <br>
                        <div class="btn-group">
                            <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                            <a href="product_details.html" class="shopBtn">VIEW</a>
                        </div>
                    </form>
                </div>
            </div>
            <hr class="soften">
            <%
                    }
                }
            %>

        </div>
    </div>
</div>


<%@include file="Footer.jsp"%>
</body>
</html>
