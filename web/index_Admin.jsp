<%-- 
    Document   : index_Admin
    Created on : 4 juin 2015, 22:10:25
    Author     : PC
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/taglib.jsp"%>
<%@include file="header.jsp" %>
</head>
    <body>
        <h1>Authentification</h1>
        <div class="large-4 push-2">
            <form method="post" action="<%=request.getContextPath()%>/AuthenAdminServlet">
                <fieldset>
                <legend>Connexion</legend>
                <div class="large-12">
                    <div class="row">
                        <div class="large-11 columns">
                          <div class="row collapse prefix-radius">
                            <div class="small-3 columns">
                              <span class="prefix">LOGIN</span>
                            </div>
                            <div class="small-9 columns">
                              <input type="text" class="error" required name="login" placeholder="login">
                              <!--<small class="error">Invalid entry</small>-->
                            </div>
                          </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="large-11 columns">
                          <div class="row collapse postfix-radius">
                            <div class="small-3 columns">
                              <span class="prefix">PASSWORD</span>
                            </div>
                            <div class="small-9 columns">
                                <input type="password"class="error" required name="pass" placeholder="password">
                                <!-- <small class="error">Invalid entry</small>-->
                            </div>
                          </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="large-11 columns">
                            <div class="small-12 columns">
                                <button type="submit" class="button expand">S'authentifier</button>
                            </div>
                          
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </body>
</html>
