<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html>
<head>
</head>
<body>


<div class="navbar navbar-fixed-top">
<div class="navbar-inner">
<div class="container">
<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
<span class="i-bar"></span>
<span class="i-bar"></span>
<span class="i-bar"></span>
</a>
<a class="brand" href="#">Administration  <s:text name=""/></a>
 <div class="nav-collapse">
<ul class="nav">
<s:url var="listPetitDej" action="listPetitDej"/>
<li><s:a href="%{listPetitDej}">Liste des Petits Dejeuners</s:a></li>

<s:url var="listMember" action="listMember"/>
<li><s:a href="%{listMember}">Liste des Utilisateurs</s:a></li>

<s:url var="listTeam" action="listTeam"/>
<li><s:a href="%{listTeam}">Liste des Equipes</s:a></li>


<s:url var="listNote" action="listNote"/>
<li><s:a href="%{listNote}">Liste des Appréciations</s:a></li>
 </ul>
</div>
</div>
</div>
</div>


















	