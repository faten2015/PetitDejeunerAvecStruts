<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<h1> Les dates des petit déjeuner </h1>
<table border="2">

<s:iterator value="listPetitDej">
<tr>
   <td width="10%"><a href="<s:url action="petitDejById"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="date"/></a></td>

</tr>
</s:iterator>

</table>

  <br>
  <br>
  <div>
            <s:actionerror theme="bootstrap"/>
            <s:actionmessage theme="bootstrap"/>
            <s:fielderror theme="bootstrap"/>


            <s:form action="ajouterPetitDej" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
                    label="Ajouter Petit Dejeuner" method="post">
                                     
                  
                    
                <s:textfield
                        label="Date"
                        name="petitDejById.date"
                        tooltip="Entrez la date"/>
                <s:textarea
                        tooltip="Enter votre description"
                        label="Description"
                        name="petitDejById.description"
                        cols="20"
                        rows="3"/>
            
                <s:select
                        tooltip="Entrez votre préference"
                        label="Preference"
                        list="{'SUCRE', 'SALE'}"
                        name="petitDejById.typedej"
                        emptyOption="true"
                        headerKey="None"
                        headerValue="None"/>
                        
                  
                <s:hidden
                        label="Prix"
                        name="petitDejById.prix"
                        tooltip="Entrez le prix"/>
                          
                <s:select
                        tooltip="Annulable ou pas"
                        label="Annulable"
                        list="{'true', 'false'}"
                        name="petitDejById.annulable"
                        emptyOption="false"
                        headerKey="None"
                        headerValue="None"/>
                        

                <s:checkboxlist
                        tooltip="Choisir la frequence"
                        label="Frequence"
                        list="{'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi'}"
                        name="petitDejById.frequence"/>
                        

                    <s:textfield
                        label="Equipe"
                        name="petitDejById.team.id"
                        tooltip="Entrez l'equipe"/>
       
                 <s:hidden name="editMode"></s:hidden>

               <s:submit value="validez" name="submit">
        </s:submit>
            </s:form>

  </div>

</body>
</html>





