<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>Kenny Bloggins</title>
<g:link controller="post" action="edit">
    Create a new post
	</g:link>
</head>

	
<body>
	<h1></h1>

	<g:each in="${posts}" var="post">
		<div>
			<h2>
				${post.title}
			</h2>
			<p>
				${post.teaser}
			</p>
			<p>
				Last Updated:
				${post.lastUpdated}
			</p>
			
			<g:link controller="post" action="view" id="${post.id}">
  View this post
</g:link>
		</div>
	</g:each>
	
	
	
</body>
</html>




