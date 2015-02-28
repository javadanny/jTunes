<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.ico">
    
    <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

    <title>Carroll Solutions : Showcase</title>

    <!-- Bootstrap core CSS -->
    <link href="/jTunes/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/jTunes/jumbo">Carroll Solutions</a>
        </div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">Stuff</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">About Us<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Daniel Carroll (CEO)</a></li>
                        <li><a href="#">Cool Breeze (CTO)</a></li>
                        <li><a href="#">Zero (CFO)</a></li>
                        <li><a href="#">Mordecai</a></li>
                        <li><a href="#">Lilith</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">Part Time Help</li>
                        <li><a href="#">Tiny Tina</a></li>
                        <li><a href="#">Handsome Jack</a></li>
                    </ul>
                </li>
            </ul>
        <!--
        </div>

        <div class="navbar-collapse collapse">
        -->
            <form class="navbar-form navbar-right" role="form">
                <div class="form-group">
                    <input type="text" placeholder="Email" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Password" class="form-control">
                </div>
                <button type="submit" class="btn btn-success">Sign in</button>
            </form>
        </div><!--/.navbar-collapse -->
    </div>
</div>

<div class="container">
    	<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-book" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table id="example" class="display">
				<thead>
					<tr>
						<th>Title</th>
						<th>Author</th>
						<th>Rating</th>
                        <th>Start Date</th>
						<th>End Date</th>
						<th>Genre</th>
						<th>Finished?</th>	
					</tr>
				</thead>
				<tbody>
				<g:each in="${bookInstanceList}" status="i" var="bookInstance">
					<tr>
						<td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "title")}</g:link></td>
						<td>${fieldValue(bean: bookInstance, field: "author")}</td>
						<td>${fieldValue(bean: bookInstance, field: "rating")}</td>
                        <td><g:formatDate date="${bookInstance.startDate}" format="MM-dd-yyyy" /></td>
						<td><g:formatDate date="${bookInstance.endDate}" format="MM-dd-yyyy" /></td>
                        <td>${fieldValue(bean: genreInstance, field: "name")}</td>
						<td><g:formatBoolean boolean="${bookInstance.isCompleted}" /></td>
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>

    <hr>

    <footer>
        <p>
        	&copy; Carroll Solutions 2014&nbsp;
            <a href="/jTunes/system">System Specs</a>
        </p>
        
    </footer>
</div> <!-- /container -->


<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/jTunes/dist/js/bootstrap.min.js"></script>

<!-- DataTables CSS -->
	<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.5/css/jquery.dataTables.css">
  
	<!-- DataTables -->
	<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.5/js/jquery.dataTables.js"></script>

	<script type="text/javascript" class="init">
	$(document).ready(function() {
		$('#example').DataTable( {
				"order": [[3,"asc"]]
		} );
	} );	
	</script>
</body>
</html>