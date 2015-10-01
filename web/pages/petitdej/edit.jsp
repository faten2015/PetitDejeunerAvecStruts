<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

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