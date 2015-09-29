<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h4> La liste des utilisateurs </h4>
<table border="1">
<tr>
    <td width="10%">Nom</td>
    <td width="20%">Prenom</td>
    <td width="20%">Preference</td>
</tr>

<s:iterator value="listMember">
<tr>
 
<td width="10%"><a href="<s:url namespace="/" action="memberById">
   <s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="firstName"/></a></td>
    <td width="20%"><s:property value="lastName"/></td>
    <td width="20%"><s:property value="preference"/></td>
</tr>
 
</s:iterator>



</table>
</body>
</html>