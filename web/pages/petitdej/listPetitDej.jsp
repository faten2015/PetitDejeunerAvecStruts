<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
</head>
<body>
<h4> Les dates des petit déjeuner </h4>
<table border="0">

<s:iterator value="listPetitDej">
<tr>
   <td width="10%"><a href="<s:url action="petitDejById"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="date"/></a></td>

</tr>
</s:iterator>

</table>
</body>
</html>





