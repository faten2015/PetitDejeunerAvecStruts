<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>


<h1> Detail petit déjeuner </h1>
<div>
<table border="1" class="table1">
<tr>
    <td width="10%">Date</td>
    <td width="10%">Description</td>
    <td width="20%">Typedej</td>
    <td width="20%">Annulable</td>
    <td width="20%">Frequence</td>
    <td width="20%">Team</td>
</tr>

<s:iterator value="petitDejById">
<tr>
    <td width="10%"><a href="<s:url namespace="/" action="listPetitDej"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="date"/></a></td>
   <td width="20%"><s:property value="description"/></td>
    <td width="20%"><s:property value="typedej"/></td>
    <td width="20%"><s:property value="annulable"/></td>
    <td width="20%"><s:property value="frequence"/></td>
    <td width="20%"><s:property value="petitDejById.team.id"/></td>
  
    
    <s:url namespace="/" action="deletePetitDej" var="lien1">
        <s:param name="id">
        <s:property value="petitDejById.id"/>
        </s:param>
        </s:url>
        
        
        <s:url namespace="/" action="updatePetitDej" var="lien2">
        <s:param name="id">
        <s:property value="petitDejById.id"/>
        </s:param>
        </s:url>
        
        <s:url namespace="/" action="ajouterNote" var="lien3">
        <s:param name="id">
        <s:property value="petitDejById.id"/>
        </s:param>
        </s:url>
        
        <td><s:a href="%{lien1}" onClick="return('Vous etes sur?')">Supprimer</s:a></td>
         <td><s:a href="%{lien2}">Editer</s:a></td>
          <td><s:a href="%{lien3}">Donner Note</s:a></td>
</tr>
</s:iterator>

</div>
</table>
  
</body>
</html>





