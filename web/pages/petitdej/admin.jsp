<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
</head>
<body>

<h4> Administration </h4>



<tr>
<s:url namespace="/" action="listPetitDej" var="listPetitDej.jsp">
       
        </s:url>
    
         <td><s:a href="%{listPetitDej.jsp}">liste2</s:a></td>

</tr>
<tr>
<s:url namespace="/" action="listMember" var="listMember.jsp">
       
        </s:url>
    
         <td><s:a href="%{listMember.jsp}">liste2</s:a></td>

</tr>
<tr>

<s:url namespace="/" action="listTeam" var="listTeam.jsp">
       
        </s:url>
    
         <td><s:a href="%{listTeam.jsp}">liste2</s:a></td>
     </tr>
     
     <tr>    
         
         <s:url namespace="/" action="listNote" var="listNote.jsp">
       
        </s:url>
    
        <td><s:a href="%{listNote.jsp}">liste2</s:a></td>
        </tr>