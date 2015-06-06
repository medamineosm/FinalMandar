<%-- 
    Document   : header
    Created on : 5 juin 2015, 11:28:07
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/taglib.jsp" %>
<!doctype html>
    <!--[if IE 9]><html class="lt-ie10" lang="en" > <![endif]-->
    <html class="no-js" lang="en" data-useragent="Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)">
    <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Espace Etudiant</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/foundation.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/foundation.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/normalize.css"/>
    <link type="text/css" media="screen" rel="stylesheet" href="<%=request.getContextPath()%>/css/responsive-tables.css" />
    </head>    
    <body>
        <nav class="top-bar" data-topbar role="navigation">
            <ul class="title-area">
                <li class="name">
                  <h1><a href="#">Espace Etudiant</a></h1>
                </li>
                 <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
                <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
            </ul>

            <section class="top-bar-section">
              <!-- Right Nav Section -->
              <ul class="right">
                <li><a name="lang" value="ar" href="<%= request.getContextPath()%>/LangServlet?lang=ar">ARABE</a></li>
                <li><a name="lang" value="fr" href="<%=request.getContextPath()%>/LangServlet?lang=fr">FRANCAIS</a></li>
              </ul>

              <!-- Left Nav Section -->
              <ul class="left">
                <li><a class="active" href="#">Accueil</a></li>
              </ul>
            </section>
          </nav>
    <div class="row">
        <div class="large-3 columns">
          <h1><img src="http://placehold.it/400x100&text=Logo"/></h1>
        </div>
      </div>

      <div class="row">       