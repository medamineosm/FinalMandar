<%-- 
    Document   : index
    Created on : 2 juin 2015, 23:12:10
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
    </head>
    <body>
        <div class="row">
            <h2>Espace Etudiant</h2>
        </div>
        <br>
        <div class="large-4 push-2">
            <form method="post" action="<%=request.getContextPath()%>/AuthentificationServlet">
                <fieldset>
                <legend>Connexion</legend>
                <div class="large-12">
                    <div class="row">
                        <div class="large-11 columns">
                          <div class="row collapse prefix-radius">
                            <div class="small-3 columns">
                              <span class="prefix">CNE</span>
                            </div>
                            <div class="small-9 columns">
                              <input type="text" class="error" required name="cne" placeholder="code national etudiant">
                              <!--<small class="error">Invalid entry</small>-->
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
