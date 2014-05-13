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
  	<g:form controller="Post" action="signIn">
    	<label for="userName">Username</label>
    	<g:textField name="userName" id="userName" value="${userName}"/>
    	<br/>
    	<br/>
    	<label for="passWord">Password</label>
    	<g:passwordField name="passWord" id="passWord" value="${passWord}"/>
    	<br/>
    	<g:actionSubmit name="logIn" controller="Post" action="signIn" id="btnLogIn" value="Sign in" />
	</g:form>
  
  </div>
</body>
</html>