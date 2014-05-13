<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'viewStyles.css')}"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>

    <title>${post.title}</title>
    <div id="btnSignIn">
   		<g:link controller="Login" action="sendToLogIn" id="signIn">Sign In</g:link>
	</div>
</head>
<body>

<div id="backButton">
	<g:link class="link" action="list">Back</g:link>
</div>

<h1>${post.title}</h1>
<br/>
<div>${post.content}</div>
<%--<g:each in="${post.comments}" var="comment">
    <div class="comment">
    <p>${comment.comment}</p>
    <p>Made by: ${comment.who.name} on ${comment.dateCreated}</p>
    --%></div>
    
<g:each in="${post.comments}" var="comment">
    <div class="comment">
    <p>${comment.comment}</p>
    <p>Made by: ${comment.who.name} on ${comment.dateCreated}</p>
    </div>
</g:each>

</body>
</html>

