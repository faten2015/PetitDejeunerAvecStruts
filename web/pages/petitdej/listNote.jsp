<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h4> Les appréciations </h4>
<table border="1">
<tr>
    <td width="10%">Note</td>
    
</tr>

<s:iterator value="listNote">
<tr>
   <td width="10%"><a href="<s:url action="noteById"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="note"/></a></td>
   
</tr>
</s:iterator>
</table>


<div>

 
   <s:actionerror theme="bootstrap"/>
            <s:actionmessage theme="bootstrap"/>
            <s:fielderror theme="bootstrap"/>


            <s:form action="ajouterNote" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
                    label="Ajouter Note" method="post">
                   
                    
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
                        
                    
             <s:hidden name="editMode"></s:hidden>
                     
          

              

               <s:submit value="validez" name="submit">
        </s:submit>
            </s:form>
  
  
  
  
  
  
  </div>


</body>
</html>