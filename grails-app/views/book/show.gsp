
<%@ page import="com.cs.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />

		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-book" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list book">
			
				<g:if test="${bookInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="book.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${bookInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="book.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${bookInstance}" field="author"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="book.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${bookInstance}" field="rating"/></span>
					
				</li>
				</g:if>

                <g:if test="${bookInstance?.startDate}">
                    <li class="fieldcontain">
                        <span id="startDate-label" class="property-label"><g:message code="book.startDate.label" default="Start Date" /></span>

                        <span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${bookInstance?.startDate}" format="MM-dd-yyyy" /></span>

                    </li>
                </g:if>
			
				<g:if test="${bookInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="book.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${bookInstance?.endDate}" format="MM-dd-yyyy" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.genre}">
				<li class="fieldcontain">
					<span id="genre-label" class="property-label"><g:message code="book.genre.label" default="Genre" /></span>
					
						<span class="property-value" aria-labelledby="genre-label">
                            <g:set var="genreInstance" value="${Genre.get(bookInstance?.genre)}" />
                            <g:fieldValue bean="${genreInstance}" field="name" />
                        </span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.isCompleted}">
				<li class="fieldcontain">
					<span id="isCompleted-label" class="property-label"><g:message code="book.isCompleted.label" default="Is Completed" /></span>
					
						<span class="property-value" aria-labelledby="isCompleted-label"><g:formatBoolean boolean="${bookInstance?.isCompleted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.numOfPages}">
				<li class="fieldcontain">
					<span id="numOfPages-label" class="property-label"><g:message code="book.numOfPages.label" default="Num Of Pages" /></span>
					
						<span class="property-value" aria-labelledby="numOfPages-label">
						<g:fieldValue bean="${bookInstance}" field="numOfPages"/></span>
					
				</li>
                </g:if>
                
                <g:if test="${bookInstance?.bookUrl}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="book.url.label" default="Amazon URL" /></span>
					
						<span class="property-value" aria-labelledby="url-label">
						<g:link url="${bookInstance?.bookUrl}" target="_blank">
							<img src="${bookInstance?.imageUrl}" height=300 width=180>
						</g:link></span>
				</li>
                </g:if>
                
                <g:if test="${bookInstance?.review}">
				<li class="fieldcontain">
					<span id="numOfPages-label" class="property-label"><g:message code="book.review.label" default="My Review" /></span>
					
						<span class="property-value" aria-labelledby="review-label">
						<g:fieldValue bean="${bookInstance}" field="review"/></span>
					
				</li>
                </g:if>
                
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${bookInstance?.id}" />
					<g:link class="edit" action="edit" id="${bookInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
