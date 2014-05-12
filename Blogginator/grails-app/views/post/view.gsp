<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>

    <title>${post.title}</title>
</head>
<body>
<h1>${post.title}</h1>
<p>${post.teaser}</p>
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
    

<g:link controller="post" action="edit" id="${post.id}">
  Edit this post
</g:link>
</body>
</html>

