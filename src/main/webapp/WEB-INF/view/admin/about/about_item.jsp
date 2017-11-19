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



                <div class="col-md-12">
                    <spring_form:form name="form" method="post" modelAttribute="about" action="/admin/add_item_about_step2">
                        <p class="input-group col-md-8">
                            <span class="input-group-lg ">Заголовок:</span>
                            <spring_form:input path="title" type="text" class="form-control" name = "title" placeholder="" value = "${about.title}"></spring_form:input>
                        </p>
                        <h2></h2>
                        <p class="input-group col-md-8">
                            <span class="input-group-lg">Краткое описание: </span>
                            <spring_form:textarea path ="shortDescription" rows="4" cols="50" type="text" class="form-control" name = "shortDescription"  placeholder="" value = "${about.shortDescription}"></spring_form:textarea>
                        </p>
                        <h2></h2>
                        <p class="input-group col-md-8">
                            <span class="input-group-lg">Описание: </span>
                            <spring_form:textarea path ="description" rows="10"  type="text" class="form-control" name = "description"  placeholder="" value = "${about.description}"></spring_form:textarea>
                        </p>


                        <spring_form:button class="btn btn-primary btn-lg" role="button" id = "edit" onclick="edit()" >Изменить</spring_form:button>
                        <spring_form:button class="btn btn-danger btn-lg" role="button" id = "remove" onclick="remove()">Удалить</spring_form:button>
                    </spring_form:form>

                </div>
            <!-- /.row -->


            </div>
        </div>
        <!-- jQuery -->
        <script src="/resources/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="/resources/js/bootstrap.min.js"></script>
        <script>
            function edit() {
                var act = document.forms["form"];
                act.action =  "/admin/add_item_about_step2";
                act.submit();
            }
            function remove() {
                var act = document.forms["form"];
                act.action =   "/admin/about_item/delete/${about.id}";
                act.submit();

            }
        </script>


    </jsp:body>
</page:template_admin>
