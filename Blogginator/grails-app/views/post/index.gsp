
<%@ page import="blogginator.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		
		<div id="btnSignOut">
			<g:link controller="Post" action="signOut" id="signOut">Sign Out</g:link>
		</div>
		
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<%--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--%>
				<li><g:link controller="post" action="edit">Create a new post</g:link></li>

				<%--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--%>
			</ul>
		</div>
		<div id="list-post" class="content scaffold-list" role="main">
			<%--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--%>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead><%--
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'post.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="teaser" title="${message(code: 'post.teaser.label', default: 'Teaser')}" />
					
						<g:sortableColumn property="content" title="${message(code: 'post.content.label', default: 'Content')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'post.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="published" title="${message(code: 'post.published.label', default: 'Published')}" />
					
					</tr>
				--%></thead>
				<tbody>
				<g:each in="${postInstanceList}" status="i" var="postInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						
						<h2><g:link action="show" id="${postInstance.id}">${fieldValue(bean: postInstance, field: "title")}</g:link></h2>
					
						<p>${fieldValue(bean: postInstance, field: "teaser")}</p>
					
						<p>${fieldValue(bean: postInstance, field: "content")}</p>
					
						<p><g:formatDate date="${postInstance.lastUpdated}" /></p>
					
						
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${postInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
