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
          
          <table class="responsive dataTable dataTables_wrapper dt-foundation">
            <tr>
                <th>Numero</th>
                <th>Date Inscription</th>
                <th>Etat</th>
                <th>CNE</th>
                <th>Nom</th>
                <th>Prenom</th>
                <th>Institut</th>
                <th>Filiere</th>
                <th>Resultat</th>
                <th>Actions</th>
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
                <td>
                    <ul class="button-group round">
                        <li><a href="<%=request.getContextPath()%>/validerPreinscriptionServet?id=<%= l.get(i).getNumero() %>" class="small button">
                                <span class="<%=request.getContextPath()%>/img/images/fi-check.svg"></span>
                            </a>
                        </li>
                        <li><a href="<%=request.getContextPath()%>/validerPreinscriptionServet?id=<%= l.get(i).getNumero() %>" class="small button">
                                <span class="<%=request.getContextPath()%>/img/images/fi-zoom-in.svg" ></span>
                            </a>
                        </li>
                        <li><a href="<%=request.getContextPath()%>/validerPreinscriptionServet?id=<%= l.get(i).getNumero() %>" class="small button">
                                <span class="<%=request.getContextPath()%>/img/images/fi-minus.svg" ></span>
                            </a>
                        </li>
                    </ul>
                </td>
                
                
            </tr>
            <%
                }
            %>
        </table>      
    </div>
</div>
<%@include file="footer.jsp" %>
