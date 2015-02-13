<%--
  Created by IntelliJ IDEA.
  User: c161635
  Date: 2/14/14
  Time: 10:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.cs.Genre" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.ico">
	
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'genre.label', default: 'Genre')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>

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
            <a class="navbar-brand" href="#">Carroll Solutions</a>
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

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <div class="container">
        <h1>Carroll Solutions is alive!!!</h1>
        <p><script language="JavaScript">displayDeepThought()</script></p>
        
        <p><a class="btn btn-primary btn-lg" role="button">Learn more &raquo;</a></p>
        
        <div style="display: inline;">
        
        	<a target="_new" href="https://www.facebook.com/CarrollSolutions">
            	<img src="images/facebook-icon.png" alt="Visit Carroll Solutions on Facebook">
        	</a>
       		 <a target="_new" href="http://www.twitter.com/CarrollSolutions">
            	<img src="images/twitter-icon.png" alt="Visit Carroll Solutions on Twitter">
        	</a>
        	<a target="_new" href="http://carrollsolutions.tumblr.com/">
            	<img src="images/tumblr-icon.png" alt="Visit Carroll Solutions on Tumblr">
        	</a>
       	 	<a target="_new" href="http://www.youtube.com/CarrollSolutions">
            	<img src="images/youtube-icon.png" alt="Vistin Carroll Solutions on Youtube">
        	</a>
        		
    	</div>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h3>Daily Reading List</h3>
            <ul>
                <li><a href="http://arstechnica.com">Ars Technica</a></li>
                <li><a href="http://slashdot.org">Slashdot</a></li>
                <li><a href="http://lifehack.org">Lifehack.org</a></li>
            </ul>
            <h3>Online Learning</h3>
            <ul>
            	<li><a href="http://scholar.google.com/">Google Scholar</a></li>
            	<li><a href="http://stackexchange.com">Stack Exchange</a></li>
            	<li><a href="http://online.stanford.edu/">Stanford Online</a></li>
            	<li><a href="https://www.coursera.org/">Coursera</a></li>
            	<li><a href="http://www.w3schools.com/">W3C Schools</a></li>
            	<li><a href="http://www.codeschool.com/">Code School (paid)</a></li>
            	<li><a href="http://www.codeacademy.com">Code Academy</a></li>
            	<li><a href="http://www.gutenberg.org/catalog/">Project Gutenburg</a></li>
            	<li><a href="https://www.creativelive.com/">Creative Live</a></li>
            	<li><a href="http://www.codeacademy.com">Code Academy</a></li>
            	
            </ul>
            <h3>2015 Resolutions</h3>
        </div>
        <div class="col-md-4">
            <h3>Available Controllers</h3>
            <ul>
            	<li>Two books per month</li>
            	<li>Financial plan</li>
            </ul>
            <ul>
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
                </g:each>
            </ul>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
            <ul>
            	<li><a href="https://developers.facebook.com/docs/plugins/share-button">Facebook Share</a></li>
            </ul>
            <ul>
            	<li><a href="https://developer.linkedin.com/plugins/share-plugin-generator?button-type-count-right=true">LinkedIn Share</a>
            </ul>
        </div>
        <div class="col-md-4">
            <h3>Nebraska Stuff</h3>
            <p>
                <div class="alert alert-success">
                <script language="JavaScript">countdown(2014,09,6)</script>
                </div>
            </p>
            <ul>
            	<li><a href="http://huskerboard.com">Huskerboard</a></li>
            	<li><a href="http://huskermax.com">Huskermax</a></li>
            </ul>
            
            <!-- BEGIN HuskerMax.com Schedule Widget -->
			<br/>
			<iframe src="http://huskermax.com/partners/sked/"
					width="264px" height="350px" frameborder="0"
					scrolling="no"></iframe>
			<br/>
			<!-- END Widget -->
            
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
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




	

</body>
</html>