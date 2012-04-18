
<%@ page import="todo.Task" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div role="navigation">
			<ul>
				<li><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-task" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'task.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'task.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="user" title="${message(code: 'task.user.label', default: 'User')}" />
					
						<g:sortableColumn property="dueDate" title="${message(code: 'task.dueDate.label', default: 'Due Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${taskInstanceList}" status="i" var="taskInstance">
					<tr>
					
						<td><g:link action="show" id="${taskInstance.id}">${fieldValue(bean: taskInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: taskInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: taskInstance, field: "user")}</td>
					
						<td><g:formatDate date="${taskInstance.dueDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div>
				<g:paginate total="${taskInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
