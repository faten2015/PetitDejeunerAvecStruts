<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
</head>
<body>
<h4> Les dates des petit déjeuner </h4>
<table border="1">
<tr>
    <td width="10%">date</td>
    <td width="20%">typedej</td>
    <td width="20%">prix</td>
    <td width="20%">annulable</td>
    <td width="20%">frequence</td>
</tr>

<s:iterator value="petitDejById">
<tr>
    <td width="10%"><a href="<s:url namespace="/" action="listPetitDej"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="date"/></a></td>
    <td width="20%"><s:property value="typedej"/></td>
    <td width="20%"><s:property value="prix"/></td>
    <td width="20%"><s:property value="annulable"/></td>
    <td width="20%"><s:property value="frequence"/></td>
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

<s:form action="ajouterPetitDej" method="post">
<h3>Ajout d'un petit Dejeuner</h3>
            <s:textfield name="date" label="Date" required="true"></s:textfield>
            <s:textfield name="typedej" label="Type" required="true"></s:textfield>
            <s:textfield name="prix" label="Prix" required="true"></s:textfield>
            <s:textfield name="annulable" label="Annulable" required="true"></s:textfield>
            <s:textfield name="frequence" label="Frequence" required="true"></s:textfield>
     
            <s:submit value="validez" name="submit">
        </s:submit></s:form>
  </div>
</table>
</body>
</html>





