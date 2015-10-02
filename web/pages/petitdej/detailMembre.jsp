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
    <td width="10%">Login</td>
    <td width="20%">Password</td>
    <td width="20%">Team</td>
     <td width="20%">Petit Dejeuner</td>
</tr>

<s:iterator value="memberById">
<tr>
    <td width="10%"><a href="<s:url namespace="/" action="listMember"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="firstName"/></a></td>
    <td width="20%"><s:property value="lastName"/></td>
    <td width="20%"><s:property value="preference"/></td>
    <td width="20%"><s:property value="login"/></td>
    <td width="20%"><s:property value="password"/></td>
    <td width="20%"><s:property value="memberById.team.id"/></td>
    <td width="20%"><s:property value="memberById.petitdej.id"/></td>
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
<br />

  <div>
     <s:actionerror theme="bootstrap"/>
            <s:actionmessage theme="bootstrap"/>
            <s:fielderror theme="bootstrap"/>


            <s:form action="updateMember" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
                    label="Editer Utilisateur" method="post">
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
                        
                        
                <s:password
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
                  <s:textfield
                        label="Equipe"
                        name="memberById.team.id"
                        tooltip="Entrez l'equipe"/>
                        
                 <s:textfield
                        label="Petit Dejeuner"
                        name="memberById.petitdej.id"
                        tooltip="Entrez Le petit dejeuner"/>         
  
   <s:submit value="validez" name="submit">
        </s:submit>
            </s:form>
  
  </div>
  
  
  
  
  
  
  

</body>
</html>





