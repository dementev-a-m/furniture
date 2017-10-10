<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@attribute name="title" fragment="true" %>

<head>
    <title><jsp:invoke fragment="title"/></title>

    <!-- Bootstrap Core CSS -->
    <spring:url value="resources/css/bootstrap.css" var="bootstrap"/>
    <link href="${bootstrap}" rel="stylesheet" />

    <!-- Custom CSS -->
    <spring:url value="/resources/css/modern-business.css" var="startertemplate"/>
    <link href="${startertemplate}" rel="stylesheet" />

    <!-- Custom Fonts -->
    <spring:url value="/resources/css/font-awesome.min.css" var="fontawesome"/>
    <link href="${fontawesome}" rel="stylesheet" />

    <!-- jQuery -->
    <spring:url value="/resources/js/jquery.js" var="jqueryjs"/>
    <script src="${jqueryjs}"></script>

    <!-- Bootstrap Core JavaScript -->
    <spring:url value="/resources/js/bootstrap.min.js" var="js"/>
    <script src="${js}"></script>

</head>

<body>


<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Furniture</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">

                <li>
                    <a href="portfolio">Портфолио</a>
                </li>
                <li>
                    <a href="about">О компании</a>
                </li>
                <li>
                    <a href="contact">Контакты</a>
                </li>
                <%--<li class="dropdown">--%>
                <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">Tutorial<b class="caret"></b></a>--%>
                <%--<ul class="dropdown-menu">--%>
                <%--<li>--%>
                <%--<a href="portfolio-1-col.html">Lesson 1</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="portfolio-2-col.html">Lesson 2</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="portfolio-3-col.html">Lesson 3</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="portfolio-4-col.html">Lesson 5</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="portfolio-item.html">Lesson 5</a>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--</li>--%>
                <%--<li class="dropdown">--%>
                <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>--%>
                <%--<ul class="dropdown-menu">--%>
                <%--<li>--%>
                <%--<a href="blog-home-1.html">Blog Home 1</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="blog-home-2.html">Blog Home 2</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="blog-post.html">Blog Post</a>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--</li>--%>
                <%--<li class="dropdown">--%>
                <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Other Pages <b class="caret"></b></a>--%>
                <%--<ul class="dropdown-menu">--%>
                <%--<li>--%>
                <%--<a href="full-width.html">Full Width Page</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="sidebar.html">Sidebar Page</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="faq.html">FAQ</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="404.html">404</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="pricing.html">Pricing Table</a>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--</li>--%>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<jsp:doBody/>


<div class="container">
    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p></p>
            </div>
        </div>
    </footer>
</div>

</body>

</html>