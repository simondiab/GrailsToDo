<%@ page import="todo.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="task.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${taskInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="task.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${taskInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="task.user.label" default="User" />
		
	</label>
	<g:select name="user" from="${taskInstance.constraints.user.inList}" value="${taskInstance?.user}" valueMessagePrefix="task.user" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="task.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${taskInstance?.dueDate}"  />
</div>

