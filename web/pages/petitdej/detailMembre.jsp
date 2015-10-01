<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html>
<head>
</head>
<body>
<h4> Detail des utilisteurs </h4>
<table border="1">
<tr>
    <td width="10%">Nom</td>
    <td width="20%">Prenom</td>
    <td width="20%">Preference</td>
</tr>

<s:iterator value="memberById">
<tr>
    <td width="10%"><a href="<s:url namespace="/" action="listMember"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="firstName"/></a></td>
    <td width="20%"><s:property value="lastName"/></td>
    <td width="20%"><s:property value="preference"/></td>
    <s:url namespace="/" action="deleteMember" var="lien1">
        <s:param name="id">
        <s:property value="memberById.id"/>
        </s:param>
        </s:url>
        
        <s:url namespace="/" action="updateMember" var="lien2">
        <s:param name="id">
        <s:property value="memberById.id"/>
        </s:param>
        </s:url>
        
        
        <td><s:a href="%{lien1}">Supprimer</s:a></td>
         <td><s:a href="%{lien2}">Editer</s:a></td>
</tr>
</s:iterator>
</table>

  <div>
     <s:actionerror theme="bootstrap"/>
            <s:actionmessage theme="bootstrap"/>
            <s:fielderror theme="bootstrap"/>


            <s:form action="ajouterMember" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
                    label="Ajouter Utilisateur" method="post">
                <s:textfield
                        label="Nom"
                        name="memberById.firstName"
                        tooltip="Entrez le nom"/>
  
               <s:textfield
                        label="Prenom"
                        name="memberById.lastName"
                        tooltip="Entrez le prenom"/>
               <s:textfield
                        label="Login"
                        name="memberById.login"
                        tooltip="Entrez le login"/>
                        
                        
                <s:textfield
                        label="Mot de Passe"
                        name="memberById.password"
                        tooltip="Entrez le mot de passe"/>
            
                            
                      
             <s:select
                        tooltip="Entrez votre préference"
                        label="Preference"
                        list="{'SUCRE', 'SALE'}"
                        name="memberById.preference"
                        emptyOption="true"
                        headerKey="None"
                        headerValue="None"/>
                        
  
   <s:submit value="validez" name="submit">
        </s:submit>
            </s:form>
  
  </div>
  
  
  
  
  
  
  

</body>
</html>





