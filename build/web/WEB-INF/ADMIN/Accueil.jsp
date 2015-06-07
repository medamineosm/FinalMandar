<%-- 
    Document   : Accueil
    Created on : 4 juin 2015, 22:21:14
    Author     : PC
--%>

<%@page import="Metier.Inscription"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp" %>
<div class="medium-11 columns content-area">
    <div class="large-12 right-align columns">
          
          <h3>Liste Preinscription <small>All</small></h3>
          
          <table class="responsive dataTable">
            <tr>
                <th><center>Numero</center></th>
                <th><center>Date Inscription</center></th>
                <th><center>Etat</center></th>
                <th><center>CNE</center></th>
                <th><center>Nom</center></th>
                <th><center>Prenom</center></th>
                <th><center>Institut</center></th>
                <th><center>Filiere</center></th>
                <th><center>Resultat</center></th>
                <th width="250"><center>Actions</center></th>
            </tr>
            <% ArrayList<Inscription> l = Inscription.getAllInscription(); 
                for(int i =0;i<l.size();i++)
                {
            %>
            <tr>
                <td><%= l.get(i).getNumero() %></td>
                <td><%= l.get(i).getDate_inscription() %></td>
                <td><%= l.get(i).isEtat_inscription() %></td>
                <td><%= l.get(i).getBac().getEtudiant().getCNE() %></td>
                <td><%= l.get(i).getBac().getEtudiant().getT().getNom() %></td>
                <td><%= l.get(i).getBac().getEtudiant().getT().getPrenom() %></td>
                <td><%= l.get(i).getInstitut().getNom() %></td>
                <td><%= l.get(i).getFiliere().getLibelle() %></td>
                <td><%= l.get(i).getResultat() %></td>
                <td><center>
                    <ul class=" button-group round">
                        <li ><a href="<%=request.getContextPath()%>/validerPreinscriptionServet?id=<%= l.get(i).getNumero() %>" class="small button">
                                V
                            </a>
                        </li>
                        <li ><a  href="<%=request.getContextPath()%>/ModifEtudiantServlet?id_etudiant=<%= l.get(i).getBac().getEtudiant().getCNE() %>" class="small button">
                                M
                            </a>
                        </li>
                        <li ><a href="<%=request.getContextPath()%>/validerPreinscriptionServet?id=<%= l.get(i).getNumero() %>" class="small button">
                                S
                            </a>
                        </li>
                    </ul>
                    </center>
                </td>
                
                
            </tr>
            <%
                }
            %>
        </table>      
    </div>
</div>
<%@include file="footer.jsp" %>
