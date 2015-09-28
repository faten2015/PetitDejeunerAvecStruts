<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<body>
	<s:actionerror />
	<s:form action="login" validate="true">
		<s:textfield name="member.login" label="login" />
		<s:password name="member.password" label="password" />
		<s:submit />
	</s:form>
</body>
</html>