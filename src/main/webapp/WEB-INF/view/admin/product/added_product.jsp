<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template_admin>
    <jsp:body>
        <!-- Header Carousel -->
        <div class="container">

        <div class="jumbotron">

            <row>
                <p>Создан продукт</p>
                <div class="col-md-6">
                    <h2 class="page-header">${product.name}</h2>
                    <p class="text-info">${product.description}</p>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive" src="/image/${product.image.id}" alt="">
                </div>
                <a class="btn btn-danger btn-lg" role="button" href="/admin/setting_product">Готово</a>
            </row>
        </div>
        </div>
        <!-- jQuery -->
        <script src="/resources/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="/resources/js/bootstrap.min.js"></script>


    </jsp:body>
</page:template_admin>
