<%@ page import="com.cs.Genre" %>



<div class="fieldcontain ${hasErrors(bean: genreInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="genre.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${genreInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: genreInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="genre.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${genreInstance?.name}"/>
</div>

