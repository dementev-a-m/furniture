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

                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Фамилия</th>
                                        <th>Имя</th>
                                        <th>Отчество</th>
                                        <th>Телефон</th>
                                        <th>Почта</th>
                                        <th>Дата</th>
                                        <th>Адрес</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="item" items="${application}">
                                    <tr>
                                        <td> <a href="/admin/application/${item.id}">${item.lastName}</a></td>
                                        <td>${item.firstName}</td>
                                        <td>${item.middleName}</td>
                                        <td>${item.phone}</td>
                                        <td>${item.email}</td>
                                        <td>${item.date}</td>
                                        <td>${item.address.city}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

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
