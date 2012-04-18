
<%@ page import="todo.Task" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div role="navigation">
			<ul>
				<li><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-task" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div role="status">${flash.message}</div>
			</g:if>
			<ol>
			
				<g:if test="${taskInstance?.title}">
				<li>
					<span id="title-label"><g:message code="task.title.label" default="Title" /></span>
					
						<span aria-labelledby="title-label"><g:fieldValue bean="${taskInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.description}">
				<li>
					<span id="description-label"><g:message code="task.description.label" default="Description" /></span>
					
						<span aria-labelledby="description-label"><g:fieldValue bean="${taskInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.user}">
				<li>
					<span id="user-label"><g:message code="task.user.label" default="User" /></span>
					
						<span aria-labelledby="user-label"><g:fieldValue bean="${taskInstance}" field="user"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.dueDate}">
				<li>
					<span id="dueDate-label"><g:message code="task.dueDate.label" default="Due Date" /></span>
					
						<span aria-labelledby="dueDate-label"><g:formatDate date="${taskInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset>
					<g:hiddenField name="id" value="${taskInstance?.id}" />
					<g:link action="edit" id="${taskInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
