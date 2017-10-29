<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="spring_form" uri="http://www.springframework.org/tags/form" %>

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
                    <a href="/gallery">Галерея</a>
                </li>
                <li>
                    <a href="/about">О компании</a>
                </li>
                <li>
                    <a href="/contact">Контакты</a>
                </li>
                <li>
                    <a href="/logout">Выход</a>
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

        <h2>Добро пожаловать на страниу администрирования</h2>
    </div>
    <!-- /.row -->
    <div class="row">


        <div class="form-group-sm">
            <a href="/admin/setting_product">
               <h1>Настройка галереи</h1>
            </a>
        </div>

        <div class="form-group-sm">
            <a href="/admin/setting_product">
                <h1>Настройка информации о компании</h1>
            </a>
        </div>
        <div class="form-group-sm">
            <a href="/admin/setting_product">
                <h1>Настройка слайдов</h1>
            </a>
        </div>
        <div class="form-group-sm">
        <a href="/admin/setting_product">
            <h1>Настройка вкладки контакты</h1>
        </a>
    </div>


    </div>

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

<%--<div class="container">--%>
    <!-- Footer -->
    <%--<footer>--%>
        <%--<div class="row">--%>
            <%--<div class="col-lg-12">--%>
                <%--<p></p>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</footer>--%>
<%--</div>--%>

</body>

</html>