<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html>
<head>
</head>
<body>
<h4> Detail des equipes </h4>
<table border="1">
<tr>
    <td width="10%">Libelle</td>
    
</tr>

<s:iterator value="teamById">
<tr>
    <td width="10%"><a href="<s:url namespace="/" action="listTeam"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="libelle"/></a></td>
    <td width="20%"><s:property value="libelle"/></td>
   
    <s:url namespace="/" action="deleteTeam" var="lien1">
        <s:param name="id">
        <s:property value="teamById.id"/>
        </s:param>
        </s:url>
        
        <s:url namespace="/" action="updateTeam" var="lien2">
        <s:param name="id">
        <s:property value="id"/>
        </s:param>
        </s:url>
        
         <s:url namespace="/" action="ajouterMember" var="lien3">
        <s:param name="teamById.id">
        <s:property value="memberById.id"/>
        </s:param>
        </s:url>
        <td><s:a href="%{lien1}">Supprimer</s:a></td>
         <td><s:a href="%{lien2}">Editer</s:a></td>
         <td><s:a href="%{lien3}">Affecter un utilisateur</s:a></td>
</tr>
</s:iterator>
</table>
  
   <div>
     <s:actionerror theme="bootstrap"/>
            <s:actionmessage theme="bootstrap"/>
            <s:fielderror theme="bootstrap"/>


            <s:form action="ajouterTeam" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
                    label="Ajouter Equipe" method="post">
                <s:textfield
                        label="Nom"
                        name="teamById.libelle"
                        tooltip="Entrez la libelle"/>
                        
                        
  
   <s:submit value="validez" name="submit">
        </s:submit>
            </s:form>
  
  </div>
  

</body>
</html>





