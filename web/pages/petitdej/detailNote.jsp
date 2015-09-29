<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
</head>
<body>
<h4> Detail des appéricaitions </h4>
<table border="1">
<tr>
    <td width="10%">Note</td>
    <td width="20%">Commentaires</td>
    <td width="20%">Prescence</td>
</tr>

<s:iterator value="noteById">
<tr>
    <td width="10%"><a href="<s:url namespace="/" action="listNote"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="note"/></a></td>
    <td width="20%"><s:property value="note"/></td>
    <td width="20%"><s:property value="commentaires"/></td>
    <td width="20%"><s:property value="prescence"/></td>
    <s:url namespace="/" action="delete" var="lien1">
        <s:param name="id">
        <s:property value="noteById.id"/>
        </s:param>
        </s:url>
        
        <s:url namespace="/" action="update" var="lien2">
        <s:param name="id">
        <s:property value="noteById.id"/>
        </s:param>
        </s:url>
        <td><s:a href="%{lien1}">Supprimer</s:a></td>
         <td><s:a href="%{lien2}">Editer</s:a></td>
</tr>
</s:iterator>
<div>

<s:form action="ajouterNote" method="post">
<h3>Ajout d'une appréciation sur un petit dejeuner</h3>
            <s:textfield name="noteById.note" label="Note" required="true">
            <s:textfield name="noteById.commentaires" label="Commentaires" required="true">
            <s:textfield name="noteById.prescence" label="Prescence" required="true">
      </s:textfield></s:textfield></s:textfield>
            <s:submit value="validez" name="submit">
        </s:submit></s:form>
  </div>
</table>
</body>
</html>





