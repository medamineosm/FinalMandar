
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Metier.Bac"%>
<%@page import="Metier.Filiere"%>
<%@page import="Metier.Institut"%>
<%@page import="Metier.TypeBac"%>
<%@page import="Metier.SerieBac"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Metier.Etudiant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/taglib.jsp"%>
<%@include file="Header.jsp" %>
<% Etudiant e = Etudiant.GetEtudiantByCne(request.getParameter("id_etudiant")) ; %>
<% Bac b = Bac.GetBacByIdEtudiant(e); %>
<div class="medium-11 columns content-area">
    <div class="large-12 right-align columns">
          
          <h3>Etudiant <small>All</small></h3>
          <form action="<%=request.getContextPath()%>/ModifierInscriptionServlet" method="post">
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
                        value="<%= e.getTuteur().getNom() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.nom2"/></label>
                        <input type="text" class="form-control" name="nom_ar" 
                        value="<%= e.getTuteur().getNom_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.prenom"/></label>
                        <input type="text" class="form-control"  name="prenom" 
                        value="<%= e.getTuteur().getPrenom() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.prenom2"/></label>
                        <input type="text" class="form-control" name="prenom_ar" 
                        value="<%= e.getTuteur().getPrenom_ar() %>"/>
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
                               value="<%=e.getVille().getNom() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Ville2"/></label>
                        <input type="text" class="form-control"  name="Ville_ar" 
                        value="<%=e.getVille().getNom_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.adresse"/></label>
                        <input type="text" class="form-control"  name="adresse" 
                               value="<%= e.getAddress() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.adresse2"/></label>
                        <input type="text" class="form-control"  name="adresse_ar" 
                        value="<%= e.getAddress_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Pays"/></label>
                        <input type="text" class="form-control"  name="Pays" 
                               value="<%=b.getEtudiant().getVille().getPays().getNom() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Pays2"/></label>
                        <input type="text" class="form-control"  name="Pays_ar" 
                        value="<%=b.getEtudiant().getVille().getPays().getNom_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.nationalite2"/></label>
                        <input type="text" class="form-control"  name="nationalite_ar" 
                        value="<%= e.getNationalite_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.dateNaissance"/></label>
                        <input type="text" class="form-control" name="dateNaissance" 
                               value="<%= new SimpleDateFormat("dd/MM/yyyy").format(b.getEtudiant().getDateNaissance()) %>"/>
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
                        value="<%=b.getEtudiant().getNatureHandicap() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.NatureHandicape2"/></label>
                        <input type="text" class="form-control"  name="NatureHandicape_ar" 
                        value="<%=b.getEtudiant().getNatureHandicap_ar() %>"/>
                    </div>
                        <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.DateCin"/></label>
                        <input type="text" class="form-control"  name="DateCin" 
                        value="<%=new SimpleDateFormat("dd/MM/yyyy").format(b.getEtudiant().getDateCin()) %>"/>
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
                        value="<%=b.getEtudiant().getTuteur().getProfession() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.profession2"/></label>
                        <input type="text" class="form-control" name="profession_ar" 
                        value="<%=b.getEtudiant().getTuteur().getProfession_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.tel"/></label>
                        <input type="text" class="form-control" name="tel" 
                        value="<%=b.getEtudiant().getTuteur().getTelephone() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.email"/></label>
                        <input type="text" class="form-control" name="email" 
                        value="<%=b.getEtudiant().getTuteur().getEmail() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.cin"/></label>
                        <input type="text" class="form-control" name="cin" 
                        value="<%= e.getCIN() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label for="exampleInputFile"><fmt:message key="accueil.form.photo"/></label>
                        <input type="file" name="photo" value="<%=b.getEtudiant().getPhoto() %>"/>
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
                        value="<%=b.getLycee_Bac() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Academie"/></label>
                        <input type="text" class="form-control" name="Academie" 
                        value="<%=b.getAcademie() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Academie"/></label>
                        <input type="text" class="form-control" name="Academie_ar" 
                        value="<%=b.getAcademie_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Province"/></label>
                        <input type="text" class="form-control" name="Province" 
                        value="<%=b.getProvince() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Province"/></label>
                        <input type="text" class="form-control" name="Province_ar" 
                               value="<%=b.getProvince_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.Mention"/></label>
                        <input type="text" class="form-control" name="Mention" 
                        value="<%=b.getMention_Bac() %>"/>
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
                                    <td><input value="<%=b.getMATH_EN() %>" type="text" class="form-control" name="Math_en"/></td>
                                    <td><input value="<%=b.getPHYS_EN() %>" type="text" class="form-control" name="Phys_en"/></td>
                                    <td><input value="<%=b.getNAT_EN() %>" type="text" class="form-control" name="nat_en" /></td>
                                    <td><input value="<%=b.getMOY_ER() %>" type="text" class="form-control" name="moy_er" /></td>
                                    <td><input value="<%=b.getMOY_EN()%>" type="text" class="form-control" name="moy_en" /></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.nom"/></label>
                        <input type="text" class="form-control" name="nomPere" 
                               value="<%=b.getEtudiant().getPere().getNom() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.nom"/></label>
                        <input type="text" class="form-control" name="nom_arPere" 
                        value="<%=b.getEtudiant().getPere().getNom_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.prenom"/></label>
                        <input type="text" class="form-control" name="prenomPere" 
                               value="<%=b.getEtudiant().getPere().getPrenom() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.prenom"/></label>
                        <input type="text" class="form-control" name="prenom_arPere" 
                        value="<%=b.getEtudiant().getPere().getPrenom_ar() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.profession"/></label>
                        <input type="text" class="form-control" name="professionPere" 
                        value="<%=b.getEtudiant().getPere().getProfession() %>"/>
                    </div>
                    <div class="large-12 colums form-group">
                        <label><fmt:message key="accueil.form.profession"/></label>
                        <input type="text" class="form-control" name="profession_arPere" 
                        value="<%=b.getEtudiant().getPere().getProfession_ar() %>"/>
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
                                value="<%=b.getEtudiant().getMere().getNom() %>"/>
                            </div>
                            <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.nom"/></label>
                                <input type="text" class="form-control" name="nom_arMere" 
                                value="<%=b.getEtudiant().getMere().getNom_ar() %>"/>
                            </div>
                            <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.prenom"/></label>
                                <input type="text" class="form-control" name="prenomMere" 
                                value="<%=b.getEtudiant().getMere().getPrenom() %>"/>
                            </div>
                            <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.prenom"/></label>
                                <input type="text" class="form-control" name="prenom_arMere" 
                                value="<%=b.getEtudiant().getMere().getPrenom_ar()%>"/>
                            </div>
                            <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.profession"/></label>
                                <input type="text" class="form-control" name="professionMere" 
                                value="<%=b.getEtudiant().getPere().getProfession() %>"/>
                            </div>
                            <div class="large-12 colums form-group">
                                <label><fmt:message key="accueil.form.profession"/></label>
                                <input type="text" class="form-control" name="profession_arMere" 
                                value="<%=b.getEtudiant().getPere().getProfession_ar()%>"/>
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
                                           value="<%=b.getEtudiant().getT().getNom() %>"/>
                                </div>
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.nom"/></label>
                                    <input type="text" class="form-control" name="nom_arTuteur" 
                                    value="<%=b.getEtudiant().getT().getNom_ar() %>"/>
                                </div>
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.prenom"/></label>
                                    <input type="text" class="form-control" name="prenomTuteur" 
                                    value="<%=b.getEtudiant().getT().getPrenom() %>"/>
                                </div>
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.prenom"/></label>
                                    <input type="text" class="form-control" name="prenom_arTuteur" 
                                    value="<%=b.getEtudiant().getT().getPrenom_ar() %>"/>
                                </div>
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.profession"/></label>
                                    <input type="text" class="form-control" name="professionTuteur" 
                                    value="<%=b.getEtudiant().getT().getProfession() %>"/>
                                </div>
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.profession"/></label>
                                    <input type="text" class="form-control" name="profession_arTuteur" 
                                    value="<%=b.getEtudiant().getT().getProfession_ar() %>"/>
                                </div>
                                        <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.Address"/></label>
                                    <input type="text" class="form-control" name="AddressTuteur" 
                                    value="<%=b.getEtudiant().getT().getAddress() %>"/>
                                </div>
                                <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.Address"/></label>
                                    <input type="text" class="form-control" name="Address_arTuteur" 
                                    value="<%=b.getEtudiant().getT().getAddress_ar() %>"/>
                                </div>

                                        <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.Telephone"/></label>
                                    <input type="text" class="form-control" name="TelephoneTuteur" 
                                    value="<%=b.getEtudiant().getT().getTelephone() %>"/>
                                </div>
                                        <div class="large-12 colums form-group">
                                    <label><fmt:message key="accueil.form.Email"/></label>
                                    <input type="text" class="form-control" name="EmailTuteur" 
                                    value="<%=b.getEtudiant().getT().getEmail() %>"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <Button class="btn btn-large btn-success">Validre</Button>
        </form>
    </div>
</div>
<%@include file="footer.jsp" %>