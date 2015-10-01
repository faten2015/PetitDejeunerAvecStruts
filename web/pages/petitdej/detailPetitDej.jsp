<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

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
    <td width="20%">Prix</td>
    <td width="20%">Annulable</td>
    <td width="20%">Frequence</td>
</tr>

<s:iterator value="petitDejById">
<tr>
    <td width="10%"><a href="<s:url namespace="/" action="listPetitDej"><s:param name="id"><s:property value="id"/></s:param></s:url>"><s:property value="date"/></a></td>
   <td width="20%"><s:property value="description"/></td>
    <td width="20%"><s:property value="typedej"/></td>
    <td width="20%"><s:property value="prix"/></td>
    <td width="20%"><s:property value="annulable"/></td>
    <td width="20%"><s:property value="frequence"/></td>
  
    
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
                        
                  
                <s:textfield
                        label="Prix"
                        name="petitDejById.prix"
                        tooltip="Entrez le prix"/>
                          
                <s:select
                        tooltip="Annulable ou pas"
                        label="Annulable"
                        list="{'true', 'false'}"
                        name="petitDejById.annulable"
                        emptyOption="true"
                        headerKey="None"
                        headerValue="None"/>
                        

                <s:checkboxlist
                        tooltip="Choisir la frequence"
                        label="Frequence"
                        list="{'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi'}"
                        name="petitDejById.frequence"/>
                        

                 <s:hidden name="editMode"></s:hidden>
                     
          

              

               <s:submit value="validez" name="submit">
        </s:submit>
            </s:form>

  
  
  
  
  
  
  

</body>
</html>





