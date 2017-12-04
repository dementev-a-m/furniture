<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template_admin>
    <jsp:body>
        <!-- Header Carousel -->
        <div class="container">
            <p></p>

            <div class="row">

                <h2>Добро пожаловать на страниу администрирования</h2>
            </div>
            <!-- /.row -->
            <div class="row">


                <div class="form-group-sm">
                    <a href="/admin/setting_product">
                        <h2>Настройка галереи</h2>
                    </a>
                </div>

                <div class="form-group-sm">
                    <a href="/admin/setting_about">
                        <h2>Настройка информации о компании</h2>
                    </a>
                </div>
                <div class="form-group-sm">
                    <a href="/admin/setting_offer">
                        <h2>Настройка слайдов</h2>
                    </a>
                </div>
                <div class="form-group-sm">
                    <a href="/admin/setting_product">
                        <h2>Настройка вкладки контакты</h2>
                    </a>
                </div>


            </div>

        </div>
        <!-- jQuery -->
        <script src="/resources/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="/resources/js/bootstrap.min.js"></script>


    </jsp:body>
</page:template_admin>
