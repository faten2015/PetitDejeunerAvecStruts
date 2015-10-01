<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h4> Les equipes </h4>
<table border="1">
<td width="10%">Libelle</td>

<s:iterator value="listTeam">
<tr>
    <td width="10%"><a href="<s:url action="teamById"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="libelle"/></a></td>
    
</tr>
</s:iterator>



</table>
</body>
</html>