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
                <div class="jumbotron">

                    <spring_form:form name = "form" method="post" modelAttribute="product" action="/admin/add_product_step2">
                        <p class="input-group">
                            <span class="input-group-lg ">Название:</span>
                            <spring_form:input  path="name" type="text" class="form-control" name = "name"  value = "${product.name}"></spring_form:input>
                        </p>
                        <h2></h2>
                        <p class="input-group">
                            <span class="input-group-lg">Тип :</span>
                            <spring_form:select path="type"  cssClass="form-control" >
                                <spring_form:option  value="${product.type}" label="${product.type}"/>
                                <spring_form:options items="${typeList}" />
                            </spring_form:select>
                        </p>
                        <h2></h2>
                        <p class="input-group-lg">
                            <span class="input-group-lg">Описание: </span>
                            <spring_form:textarea path ="description"  type="text" class="form-control" name = "description" value="${product.description}" ></spring_form:textarea>
                        </p>

                        <h2></h2>
                        <spring_form:button class="btn btn-primary btn-lg" role="button" id = "edit" onclick="edit()" >Изменить</spring_form:button>
                        <spring_form:button class="btn btn-danger btn-lg" role="button" id = "remove" onclick="remove()">Удалить</spring_form:button>
                    </spring_form:form>
                </div>
            </div>
            <!-- /.row -->


        </div>

        <!-- jQuery -->
        <script src="/resources/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="/resources/js/bootstrap.min.js"></script>
        <script>
            function edit() {
                var act = document.forms["form"];
                act.action =  "/admin/add_product_step2";
                act.submit();
            }
            function remove() {
                var act = document.forms["form"];
                act.action =   "/admin/product_item/delete/${product.id}";
                act.submit();

            }
        </script>


    </jsp:body>
</page:template_admin>
