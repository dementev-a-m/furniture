<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template_admin>
    <jsp:body>
        <div class="container">
            <p></p>
            <div class="jumbotron">
            <div class="row">

                <div class="col-md-6">
                    <h2 class="page-header">${about.title}</h2>
                    <p class="text-info">${about.description}</p>
                </div>
                <div class="col-md-6">
                    <c:if test="${empty sessionScope.image}">
                        <form class = "form-group-sm" action="/load_image" method="post" enctype="multipart/form-data">

                            <h3/>
                            <b>Изображение:</b>
                            <h3/>
                            <input class = "file fa-file" type="file" name="file">
                            <h3/>
                            <input class="btn btn-primary btn-lg" type="submit" value="Загрузить">

                        </form>
                    </c:if>
                    <c:if test="${not empty sessionScope.image}">
                        <img class="img-responsive" src="/image/${sessionScope.image.id}" alt="">
                        <h3/>
                        <form name="form2" class = "form-group-sm" action="/load_image" method="post" enctype="multipart/form-data">

                            <input class = "file fa-file" type="file" name="file">
                            <h3/>
                            <input class="btn btn-primary btn-lg" type="submit" id="edit" onclick="edit()" value="Изменить">
                        </form>
                        <button class="btn btn-danger btn-lg" role="button" id = "next" onclick="next()">Далее</button>
                    </c:if>
                </div>

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
                act.action =  "/load_image";
                act.submit();
            }
            function next() {
                var act = document.forms["form"];
                act.action =   "/admin/product_added";
                act.submit();

            }
        </script>

    </jsp:body>
</page:template_admin>
