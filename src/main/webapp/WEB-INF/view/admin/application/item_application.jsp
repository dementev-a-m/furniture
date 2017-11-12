<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring_form" uri="http://www.springframework.org/tags/form" %>

<page:template_admin>
    <jsp:body>
        <!-- Header Carousel -->
        <div class="container">
            <p></p>

            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Заявки</h2>
                        <%--<p><a class="btn btn-default btn-lg" role="button" href="product_add">Добавить</a></p>--%>
                        <%--<h2/>--%>
                </div>


                <div class="row">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Фамилия</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">${application.lastName}</p>
                            </div>
                            <label class="col-sm-2 control-label">Имя</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">${application.firstName}</p>
                            </div>
                            <label class="col-sm-2 control-label">Отчество</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">${application.middleName}</p>
                            </div>
                            <label class="col-sm-2 control-label">Телефон</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">${application.phone}</p>
                            </div>
                            <label class="col-sm-2 control-label">Почта</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">${application.email}</p>
                            </div>
                            <label class="col-sm-2 control-label">Дата</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">${application.date}</p>
                            </div>
                            <label class="col-sm-2 control-label">Город</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">${application.address.city}</p>
                            </div>
                            <label class="col-sm-2 control-label">Улица</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">${application.address.street}</p>
                            </div>
                            <label class="col-sm-2 control-label">Дом</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">${application.address.house}</p>
                            </div>
                            <label class="col-sm-2 control-label">Квартира</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">${application.address.flat}</p>
                            </div>
                            <label class="col-sm-2 control-label">Комментарий</label>
                            <div class="col-sm-10">
                                <p class="form-control-static">${application.comment}</p>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <!-- /.row -->


        </div>

        <!-- jQuery -->
        <script src="/resources/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="/resources/js/bootstrap.min.js"></script>


    </jsp:body>
</page:template_admin>
