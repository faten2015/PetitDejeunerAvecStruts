<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
</head>
<body>
<h4> Detail des equipes </h4>
<table border="1">


<s:iterator value="teamById">
<tr>
    <td width="10%"><a href="<s:url namespace="/" action="listTeam"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="libelle"/></a></td>
    <td width="20%"><s:property value="libelle"/></td>
    
    <s:url namespace="/" action="delete" var="lien1">
        <s:param name="id">
        <s:property value="teamById.id"/>
        </s:param>
        </s:url>
        
        <s:url namespace="/" action="update" var="lien2">
        <s:param name="id">
        <s:property value="teamById.id"/>
        </s:param>
        </s:url>
        <td><s:a href="%{lien1}">Supprimer</s:a></td>
         <td><s:a href="%{lien2}">Editer</s:a></td>
</tr>
</s:iterator>
<div>

<s:form action="ajouterTeam" method="post">
<h3>Ajout d'une equipe</h3>
            <s:textfield name="teamById.libelle" label="Libelle" required="true">
          
             </s:textfield>
            <s:submit value="validez" name="submit">
        </s:submit></s:form>
  </div>
</table>
</body>
</html>





