<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
    <title>Форма мебели</title>
    <spring:url value="/resources/css/bootstrap.css" var="bootstrap"/>
    <spring:url value="/resources/css/modern-business.css" var="startertemplate"/>
    <link href="${bootstrap}" rel="stylesheet" />
    <link href="${startertemplate}" rel="stylesheet" />
</head>
<body>


<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Форма Мебели </a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">

                <li>
                    <a href="/portfolio">Портфолио</a>
                </li>
                <li>
                    <a href="/about">О компании</a>
                </li>
                <li>
                    <a href="/contact">Контакты</a>
                </li>
                <li>
                    <a href="<c:url value="/logout" />">Выход</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<div class="container">
    <p></p>

    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header">Портфолио</h2>
            <p><a class="btn btn-default btn-lg" role="button" href="product_add">Добавить</a></p>
            <h2/>
        </div>
        <c:forEach var="item" items="${products}">

            <div class="col-sm-4">
                <a href="product_item/${item.id}">
                    <img class="img-responsive img-portfolio img-thumbnail" src="/image/${item.image.id}" alt="">
                </a>
            </div>
        </c:forEach>
    </div>
    <!-- /.row -->


</div>
<!-- /.container -->

<!-- jQuery -->
<script src="/resources/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/resources/js/bootstrap.min.js"></script>

<!-- Script to Activate the Carousel -->
<script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
</script>

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