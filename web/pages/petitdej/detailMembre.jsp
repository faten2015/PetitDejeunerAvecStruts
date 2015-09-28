<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
    <s:url namespace="/" action="delete" var="lien1">
        <s:param name="id">
        <s:property value="id"/>
        </s:param>
        </s:url>
        
        <s:url namespace="/" action="update" var="lien2">
        <s:param name="id">
        <s:property value="id"/>
        </s:param>
        </s:url>
        <td><s:a href="%{lien1}">Supprimer</s:a></td>
         <td><s:a href="%{lien2}">Editer</s:a></td>
</tr>
</s:iterator>
<div>

<s:form action="ajouterMember" method="post">
<h3>Ajout d'un utilisateur</h3>
            <s:textfield name="firstName" label="Nom" required="true">
            <s:textfield name="lastName" label="Prenom" required="true">
            <s:textfield name="preference" label="Prefernce" required="true">
      </s:textfield></s:textfield></s:textfield>
            <s:submit value="validez" name="submit">
        </s:submit></s:form>
  </div>
</table>
</body>
</html>





