<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>Kenny Bloggins</title>
</head>

	
<body>

	<g:each in="${posts}" var="post">
		<div>
			<h2>
				<g:link controller="post" action="view" id="${post.id}">${post.title}</g:link>
			</h2>
			<p>
				${post.teaser}
			</p>
			<p>
				Last Updated:
				${post.lastUpdated}
			</p>
		</div>
	</g:each>
	
	
	
</body>
</html>




