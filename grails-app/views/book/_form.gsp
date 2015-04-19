<%@ page import="com.cs.Book" %>
<%@ page import="com.cs.Genre" %>

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

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'startDate', 'error')}">
	<label for="startDate">
		<g:message code="book.startDate.label" default="Start Date" />
	</label>
	<g:datePicker name="startDate" 
	              precision="day"  
	              value="${bookInstance?.startDate}"  />
	
	<!--  <input type="text" name="startDate" id="datepicker" value="${bookInstance?.startDate}" size="12"> -->
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'endDate', 'error')}">
	<label for="endDate">
		<g:message code="book.endDate.label" default="End Date" />
	</label>
	<g:datePicker name="endDate" 
	              precision="day"  
	              value="${bookInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'genre', 'error')} required">
	<label for="genre">
		<g:message code="book.genre.label" default="Genre" />
		<span class="required-indicator">*</span>
	</label>
	 	
	<g:select name="genre" 
	          from="${Genre.list()}" 
	          value="${bookInstance.genre}" 
	          optionKey="id" 
	          optionValue="name"
	          noSelection="['':'-- Choose a genre --']" />

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'isCompleted', 'error')} ">
	<label for="isCompleted">
		<g:message code="book.isCompleted.label" default="Is Completed" />
	</label>
	<g:checkBox name="isCompleted" value="${bookInstance?.isCompleted}" />
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'numOfPages', 'error')}">
	<label for="numOfPages">
		<g:message code="book.numOfPages.label" default="# of Pages" />
	</label>
	<g:field name="numOfPages" type="number" value="${bookInstance.numOfPages}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'bookUrl', 'error')}">
	<label for="bookUrl">
		<g:message code="book.bookUrl.label" default="Amazon URL" />
	</label>
	<g:field name="bookUrl" type="url" value="${bookInstance.bookUrl}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'imageUrl', 'error')}">
	<label for="imageUrl">
		<g:message code="book.imageUrl.label" default="Image URL" />
	</label>
	<g:field name="imageUrl" type="url" value="${bookInstance.imageUrl}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'review', 'error')}">
	<label for="review">
		<g:message code="book.review.label" default="My Review" />
	</label>
	<g:textArea name="review" value="${bookInstance.review}" rows="10" cols="50"/>
	
</div>




