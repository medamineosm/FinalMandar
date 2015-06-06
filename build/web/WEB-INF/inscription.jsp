<%-- 
    Document   : inscription
    Created on : 2 juin 2015, 23:52:22
    Author     : PC
--%>

<%@page import="Metier.TypeBac"%>
<%@page import="Metier.Institut"%>
<%@page import="Metier.Filiere"%>
<%@page import="Metier.SerieBac"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Metier.Etudiant_Charge"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/taglib.jsp"%>
<% Etudiant_Charge e = (Etudiant_Charge)request.getSession().getAttribute("CurrentEtudiant");%>
<%@include file="header.jsp" %>
        <form action="<%=request.getContextPath()%>/validerInscriptionServlet" method="post">
            <div class="panel-heading default">INFO-PERSONNEL</div>
                <div class="panel-body">
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.cne"/></label>
                        <input type="text" class="form-control"  name="cne" 
                        value="<%= e.getCNE() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.nom"/></label>
                        <input type="text" class="form-control"  name="nom" 
                        value="<%= e.getNom() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.nom2"/></label>
                        <input type="text" class="form-control" name="nom_ar" 
                        value="<%= e.getNom_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.prenom"/></label>
                        <input type="text" class="form-control"  name="prenom" 
                        value="<%= e.getPrenom() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.prenom2"/></label>
                        <input type="text" class="form-control" name="prenom_ar" 
                        value="<%= e.getPrenom_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                     <label><fmt:message key="accueil.form.Sexe"/></label>
                    <div class="radio">
                      <label>
                        <input type="radio" name="Sexe" value="M" />
                        M
                      </label>
                      <label>
                        <input type="radio" name="Sexe" value="F" checked />
                        F  
                      </label>
                    </div>

                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.nationalite"/></label>
                        <input type="text" class="form-control"  name="nationalite" 
                        value="<%= e.getNationalite() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Ville"/></label>
                        <input type="text" class="form-control"  name="Ville" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Ville2"/></label>
                        <input type="text" class="form-control"  name="Ville_ar" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.adresse"/></label>
                        <input type="text" class="form-control"  name="adresse" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.adresse2"/></label>
                        <input type="text" class="form-control"  name="adresse_ar" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Pays"/></label>
                        <input type="text" class="form-control"  name="Pays" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Pays2"/></label>
                        <input type="text" class="form-control"  name="Pays_ar" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.nationalite2"/></label>
                        <input type="text" class="form-control"  name="nationalite_ar" 
                        value="<%= e.getNationalite_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.dateNaissance"/></label>
                        <input type="text" class="form-control" name="dateNaissance" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                     <label><fmt:message key="accueil.form.Handicape"/></label>
                    <div class="radio">
                      <label>
                        <input type="radio" name="Handicape" value="true" />
                        Oui
                      </label>
                      <label>
                        <input type="radio" name="Handicape" value="false" checked />
                        Non  
                      </label>
                    </div>

                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.NatureHandicape"/></label>
                        <input type="text" class="form-control"  name="NatureHandicape" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.NatureHandicape2"/></label>
                        <input type="text" class="form-control"  name="NatureHandicape_ar" 
                        value=""/>
                    </div>
                        <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.DateCin"/></label>
                        <input type="text" class="form-control"  name="DateCin" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                     <label><fmt:message key="accueil.form.Bourse"/></label>
                    <div class="radio">
                      <label>
                        <input type="radio" name="Bourse" value="true" />
                        Oui
                      </label>
                      <label>
                        <input type="radio" name="Bourse" value="false" checked />
                        Non  
                      </label>
                    </div>

                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.profession"/></label>
                        <input type="text" class="form-control"  name="profession" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.profession2"/></label>
                        <input type="text" class="form-control" name="profession_ar" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.tel"/></label>
                        <input type="text" class="form-control" name="tel" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.email"/></label>
                        <input type="text" class="form-control" name="email" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.cin"/></label>
                        <input type="text" class="form-control" name="cin" 
                        value="<%= e.getCIN() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label for="exampleInputFile"><fmt:message key="accueil.form.photo"/></label>
                        <input type="file" name="photo"/>
                        <p class="help-block">png.</p>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.from2.serieBac"/></label>
                        <select name="serieBac"class="form-control">
                            <%
                                ArrayList<SerieBac> sr = SerieBac.GetAllSerieBac();

                                for(int i=0;i<sr.size() ;i++)
                                    {
                                        //Bac betd = Bac.GetBacByIdEtudiant(e);
                                        out.println("<option value='"+SerieBac.GetIDSerieBac(sr.get(i).getIntituler())+"'>"+((SerieBac)sr.get(i)).getIntituler()+" "+((SerieBac)sr.get(i)).getIntituler_ar()+"</option>");

                                    }
                            %>
                        </select>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.from2.typeBac"/></label>
                        <select name="typeBac" class="form-control">
                            <%
                                ArrayList<TypeBac> ltb = TypeBac.GetAllTypeBac();

                                for (int i=0;i<ltb.size();i++) {
                                    out.println(
                                                "<option value='"+TypeBac.GetIDTypeBac(ltb.get(i).getIntituler())+"'>"+ltb.get(i).getIntituler()+" "+ltb.get(i).getIntituler_ar()+"</option>"
                                        );
                                }
                            %>
                        </select>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.from2.Institut"/></label>
                        <select name="institut" class="form-control">
                            <%
                                ArrayList<Institut>li = Institut.GetAllInstitut();
                                for (int i=0;i<li.size();i++) {
                                    out.println(
                                                "<option value='"+Institut.GetInstitutById(li.get(i).getNom()) +"'>"+li.get(i).getNom()+" "+li.get(i).getNom_ar()+"</option>"
                                        );
                                }
                            %>
                        </select>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.from2.Filiere"/></label>
                        <select name="filiere" class="form-control">
                            <%
                                ArrayList<Filiere>lf = Filiere.GetAllFiliere();
                                for (int i=0;i<li.size();i++) {
                                    out.println(
                                                "<option value='"+Filiere.GetFiliereById(lf.get(i).getLibelle()) +"'>"+lf.get(i).getLibelle()+" "+lf.get(i).getLibeller_ar()+"</option>"
                                        );
                                }
                            %>
                        </select>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.lycee"/></label>
                        <input type="text" class="form-control" name="lycee" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Academie"/></label>
                        <input type="text" class="form-control" name="Academie" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Academie"/></label>
                        <input type="text" class="form-control" name="Academie_ar" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Province"/></label>
                        <input type="text" class="form-control" name="Province" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Province"/></label>
                        <input type="text" class="form-control" name="Province_ar" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Mention"/></label>
                        <input type="text" class="form-control" name="Mention" 
                        value="<%=e.getMention_Bac()%>"/>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th><fmt:message key="accueil.form.Moy.Math"/></th>
                                    <th><fmt:message key="accueil.form.Moy.Phy"/></th>
                                    <th><fmt:message key="accueil.form.Moy.Nat"/></th>
                                    <th><fmt:message key="accueil.form.Moy.Regional"/></th>
                                    <th><fmt:message key="accueil.form.Moy.National"/></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="text" class="form-control" name="Math_en"/></td>
                                    <td><input type="text" class="form-control" name="Phys_en"/></td>
                                    <td><input type="text" class="form-control" name="nat_en" /></td>
                                    <td><input type="text" class="form-control" name="moy_er" /></td>
                                    <td><input type="text" class="form-control" name="moy_en" /></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.nom"/></label>
                        <input type="text" class="form-control" name="nomPere" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.nom"/></label>
                        <input type="text" class="form-control" name="nom_arPere" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.prenom"/></label>
                        <input type="text" class="form-control" name="prenomPere" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.prenom"/></label>
                        <input type="text" class="form-control" name="prenom_arPere" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.profession"/></label>
                        <input type="text" class="form-control" name="professionPere" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.profession"/></label>
                        <input type="text" class="form-control" name="profession_arPere" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Address"/></label>
                        <input type="text" class="form-control" name="AddressPere" 
                        value=""/>
                    </div>
                                <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Address_ar"/></label>
                        <input type="text" class="form-control" name="Address_arPere" 
                        value=""/>
                    </div>
                            <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Telephone"/></label>
                        <input type="text" class="form-control" name="TelephonePere" 
                        value=""/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Email"/></label>
                        <input type="text" class="form-control" name="EmailPere" 
                        value=""/>
                    </div>
                </div>
                  <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">INFO-MERE</div>
                        <div class="panel-body">
                            <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.nom"/></label>
                                <input type="text" class="form-control" name="nomMere" 
                                value=""/>
                            </div>
                            <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.nom"/></label>
                                <input type="text" class="form-control" name="nom_arMere" 
                                value=""/>
                            </div>
                            <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.prenom"/></label>
                                <input type="text" class="form-control" name="prenomMere" 
                                value=""/>
                            </div>
                            <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.prenom"/></label>
                                <input type="text" class="form-control" name="prenom_arMere" 
                                value=""/>
                            </div>
                            <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.profession"/></label>
                                <input type="text" class="form-control" name="professionMere" 
                                value=""/>
                            </div>
                            <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.profession"/></label>
                                <input type="text" class="form-control" name="profession_arMere" 
                                value=""/>
                            </div>
                            <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.Address"/></label>
                                <input type="text" class="form-control" name="AddressMere" 
                                value=""/>
                            </div>
                                        <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.Address_ar"/></label>
                                <input type="text" class="form-control" name="Address_arMere" 
                                value=""/>
                            </div>
                                    <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.Telephone"/></label>
                                <input type="text" class="form-control" name="TelephoneMere" 
                                value=""/>
                            </div>
                                    <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.Email"/></label>
                                <input type="text" class="form-control" name="EmailMere" 
                                value=""/>
                            </div>
                        </div>
                    </div>
                </div>  
                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">INFO-TUTEUR</div>
                            <div class="panel-body">
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.nom"/></label>
                                    <input type="text" class="form-control" name="nomTuteur" 
                                    value=""/>
                                </div>
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.nom"/></label>
                                    <input type="text" class="form-control" name="nom_arTuteur" 
                                    value=""/>
                                </div>
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.prenom"/></label>
                                    <input type="text" class="form-control" name="prenomTuteur" 
                                    value=""/>
                                </div>
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.prenom"/></label>
                                    <input type="text" class="form-control" name="prenom_arTuteur" 
                                    value=""/>
                                </div>
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.profession"/></label>
                                    <input type="text" class="form-control" name="professionTuteur" 
                                    value=""/>
                                </div>
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.profession"/></label>
                                    <input type="text" class="form-control" name="profession_arTuteur" 
                                    value=""/>
                                </div>
                                        <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.Address"/></label>
                                    <input type="text" class="form-control" name="AddressTuteur" 
                                    value=""/>
                                </div>
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.Address"/></label>
                                    <input type="text" class="form-control" name="Address_arTuteur" 
                                    value=""/>
                                </div>

                                        <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.Telephone"/></label>
                                    <input type="text" class="form-control" name="TelephoneTuteur" 
                                    value=""/>
                                </div>
                                        <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.Email"/></label>
                                    <input type="text" class="form-control" name="EmailTuteur" 
                                    value=""/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <Button class="btn btn-large btn-success">Validre</Button>
                <a href="PDF" class="btn btn-large btn-danger">PDF</a>
            </form>    
        </form> 
<%@include file="footer.jsp" %>