<%@ page import="com.cs.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${bookInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="book.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${bookInstance?.author}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="book.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="rating" from="${1..10}" class="range" required="" value="${fieldValue(bean: bookInstance, field: 'rating')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="book.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${bookInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'genre', 'error')} required">
	<label for="genre">
		<g:message code="book.genre.label" default="Genre" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="genre" type="number" value="${bookInstance.genre}" required=""/>

    <!--
    <g:select name="genre"
              from="${genreInstanceList}"
              value="bookInstance.genre"
              optionValue="name"
              optionKey="id" />
    -->

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'isCompleted', 'error')} ">
	<label for="isCompleted">
		<g:message code="book.isCompleted.label" default="Is Completed" />
		
	</label>
	<g:checkBox name="isCompleted" value="${bookInstance?.isCompleted}" />
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'numOfPages', 'error')} required">
	<label for="numOfPages">
		<g:message code="book.numOfPages.label" default="Num Of Pages" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numOfPages" type="number" value="${bookInstance.numOfPages}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="book.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${bookInstance?.startDate}"  />
</div>

