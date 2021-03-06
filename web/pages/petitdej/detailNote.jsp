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
   <td width="20%">Utilisateur</td>
   <td width="20%">Petit Dejeuner</td>
</tr>

<s:iterator value="noteById">
<tr>
    <td width="10%"><a href="<s:url namespace="/" action="listNote"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="note"/></a></td>
    <td width="20%"><s:property value="commentaires"/></td>
    <td width="20%"><s:property value="prescence"/></td>
    <td width="20%"><s:property value="noteById.member.id"/></td>
    <td width="20%"><s:property value="noteById.petitdej.id"/></td>
    <s:url namespace="/" action="deleteNote" var="lien1">
        <s:param name="id">
        <s:property value="noteById.id"/>
        </s:param>
        </s:url>
        
        <s:url namespace="/" action="updateNote" var="lien2">
        <s:param name="id">
        <s:property value="noteById.id"/>
        </s:param>
        </s:url>
        <td><s:a href="%{lien1}">Supprimer</s:a></td>
         <td><s:a href="%{lien2}">Editer</s:a></td>
</tr>
</s:iterator>
</div>
</table>
 <br /> 
<div>

 
   <s:actionerror theme="bootstrap"/>
            <s:actionmessage theme="bootstrap"/>
            <s:fielderror theme="bootstrap"/>


            <s:form action="updateNote" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
                    label="Editer Appréciation" method="post">
                   
                    
                     <s:textfield
                        label="Note"
                        name="noteById.note"
                        tooltip="Entrez la note"/>
  
                     <s:textarea
                        tooltip="Enter votre commentaires"
                        label="Commentaires"
                        name="noteById.commentaires"
                        cols="20"
                        rows="3"/>
                        
                    <s:select
                        tooltip="Present ou pas"
                        label="Prescence"
                        list="{'true', 'false'}"
                        name="noteById.prescence"
                        emptyOption="true"
                        headerKey="None"
                        headerValue="None"/>
                        
                    <s:textfield
                        label="Member"
                        name="noteById.member.id"
                        tooltip="Entrez L'utilisateur"/>
                       
                     <s:textfield
                        label="Petit Dejeuner"
                        name="noteById.petitdej.id"
                        tooltip="Entrez Le petit dejeuner"/>   
                        
                    
             <s:hidden name="editMode"></s:hidden>
                     
          

              

               <s:submit value="validez" name="submit">
        </s:submit>
            </s:form>
  
  
  
  
  
  
  </div>
  
  
  
  
  
  
  
  

</body>
</html>





