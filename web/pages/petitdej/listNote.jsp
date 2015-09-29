<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h4> Les appréciations </h4>
<table border="1">
<tr>
    <td width="10%">Note</td>
    <td width="20%">Commetaires</td>
    <td width="20%">Prescence</td>
</tr>

<s:iterator value="listNote">
<tr>
   <td width="10%"><a href="<s:url action="noteById"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="note"/></a></td>
    <td width="20%"><s:property value="commetaires"/></td>
    <td width="20%"><s:property value="prescence"/></td>
</tr>

<div>

<s:form action="ajouterNote" method="post">
<h3>Ajout d'une appréciation sur un petit dejeuner</h3>
            <s:textfield name="noteById.note" label="Note" required="true"></s:textfield>
            <s:textfield name="noteById.commentaires" label="Commentaires" required="true"></s:textfield>
            <s:textfield name="noteById.prescence" label="Prescence" required="true"></s:textfield>

            <s:submit value="validez" name="submit">
        </s:submit></s:form>
  </div>
 
</s:iterator>

</table>
</body>
</html>