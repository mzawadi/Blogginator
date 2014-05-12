<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'loginStyles.css')}"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Sign in</title>
</head>
<body>
  <div class="body">
  	<g:form action="save">
    	<label for="lastName">Username</label>
    	<g:textField name="userName" value="${userName}"/>
    	<br/>
    	<label for="firstName">Password</label>
    	<g:textField name="passWord" value="${passWord}"/>
    	<br/>
    	<g:submitButton name="create" value="Save" />
	</g:form>
  
  </div>
</body>
</html>