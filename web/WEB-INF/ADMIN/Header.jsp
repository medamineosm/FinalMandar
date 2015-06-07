<%-- 
    Document   : Header
    Created on : 5 juin 2015, 00:46:28
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
    <!--[if IE 9]><html class="lt-ie10" lang="en" > <![endif]-->
    <html class="no-js" lang="en" data-useragent="Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)">
    <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Administration</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/foundation.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/foundation.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/normalize.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/dataTables.foundation.css"/>
    <link type="text/css" media="screen" rel="stylesheet" href="<%=request.getContextPath()%>/css/responsive-tables.css" />
    <style>
        .columns.content-area{border:0px solid #111;padding:0}
        .columns.sidebar{border:1px solid #111;padding:0}
        .columns.left-nav{padding:0}
        .icon-bar.vertical.five-up{width:100%;height: 100%}
    </style>
  </head>
  <body>
  <nav class="top-bar" data-topbar role="navigation">
    <ul class="title-area">
      <li class="name">
        <h1><a href="#" class="active"> MENU</a></h1>
      </li>
      <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
    </ul>

    <section class="top-bar-section">

      <!-- Right Nav Section -->
      <ul class="right">          
        <li class=""><a href="#">FRANCAIS</a></li>
        <li class=""><a href="#">ARABE</a></li>
        <li class="active"><a href="#"><i class="fa fa-diamond"></i> Deconnecter</a></li>
      </ul>

      <!-- Left Nav Section -->
      <ul class="left">
      </ul>
    </section>
  </nav>

  <!-- Left Nav Sidebar -->

<div class="medium-1 columns left-nav">
  <div class="icon-bar vertical five-up">
    <a class="item" href="<%=request.getContextPath()%>/StatistiqueServlet">
      <img src="<%=request.getContextPath()%>/img/images/fi-graph-bar.svg" >
      <label>Statistique</label>
    </a>
    <a class="item" data-reveal-id="myModal" href="#">
      <img src="<%=request.getContextPath()%>/img/images/fi-upload.svg" >
      <label>Upload</label>
    </a>
 </div>
</div>