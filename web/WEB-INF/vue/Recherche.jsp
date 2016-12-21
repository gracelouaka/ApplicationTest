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
                <li><a href="products.html"><span class="icon-chevron-right"></span>Fashion</a></li>
                <li><a href="products.html"><span class="icon-chevron-right"></span>Watches</a></li>
                <li><a href="products.html"><span class="icon-chevron-right"></span>Fine Jewelry</a></li>
                <li><a href="products.html"><span class="icon-chevron-right"></span>Fashion Jewelry</a></li>
                <li><a href="products.html"><span class="icon-chevron-right"></span>Engagement & Wedding</a></li>
                <li><a href="products.html"><span class="icon-chevron-right"></span>Men's Jewelry</a></li>
                <li><a href="products.html"><span class="icon-chevron-right"></span>Vintage & Antique</a></li>
                <li><a href="products.html"><span class="icon-chevron-right"></span>Loose Diamonds </a></li>
                <li><a href="products.html"><span class="icon-chevron-right"></span>Loose Beads</a></li>
                <li><a href="products.html"><span class="icon-chevron-right"></span>See All Jewelry & Watches</a></li>
                <li style="border:0"> &nbsp;</li>
                <li> <a class="totalInCart" href="cart.html"><strong>Total Amount  <span class="badge badge-warning pull-right" style="line-height:18px;">$448.42</span></strong></a></li>
            </ul>
        </div>

    </div>
    <div class="span9">

        <div class="well well-small">

            <%
                String recherche=null;
                if(request.getParameter("recherche")!="")
                    recherche=request.getParameter("recherche");

                List<Produit> produits = ofy().load().type(Produit.class).list();
                for(Produit produit : produits){
                    if(((recherche!=null)&&(produit.getLibelle().toLowerCase().startsWith(recherche.toLowerCase())))||recherche==null){

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
                            <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Ajouter au panier</a>

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
