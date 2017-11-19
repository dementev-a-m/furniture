<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:body>
        <head>
            <script src="//api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
        </head>
        <!-- Header Carousel -->
        <header id="myCarousel" class="carousel slide">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <c:set var="count" value="0" scope="page" />
                <c:forEach var="item" items="${offers}">

                    <c:if test="${count==0}">
                        <li data-target="#myCarousel" data-slide-to="${count}" class="active"></li>
                    </c:if>
                    <c:if test="${count !=0}">
                        <li data-target="#myCarousel" data-slide-to="${count}"></li>
                    </c:if>
                    <c:set var="count" value="${count + 1}" scope="page"/>
                </c:forEach>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <c:set var="count" value="0" scope="page" />
                <c:forEach var="item" items="${offers}">

                    <c:if test="${count==0}">
                        <div class="item active">
                            <div class="fill" style="background-image:url('/image/${item.image.id}');"></div>
                            <div class="carousel-caption">
                                <h2>${item.title}</h2>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${count !=0}">
                        <div class="item">
                            <div class="fill" style="background-image:url('/image/${item.image.id}');"></div>
                            <div class="carousel-caption">
                                <h2>${item.title}</h2>
                            </div>
                        </div>
                    </c:if>
                    <c:set var="count" value="${count + 1}" scope="page"/>


                </c:forEach>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="icon-prev"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="icon-next"></span>
            </a>

        </header>

        <div class="container">
            <!-- Features Section -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Контакты</h2>
                </div>
                <div class="col-md-6">
                    <p></p>

                    <P><strong>Адрес:</strong></P>
                    <P>Московская обл, Шаховская
                        1-я Советская, 1</P>
                    <p><strong>Телефон:</strong></p>
                    <p>+7 (926) 303 49 31</p>
                    <p><strong>Электронная почта:</strong></p>
                    <p>mebel_k@inbox.ru</p>


                    <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>--%>
                </div>
                <div class="col-md-6">
                    <div id="map" class="img-responsive img-thumbnail" style="width: 600px; height: 400px"></div>
                </div>
            </div>
            <!-- /.row -->


        </div>
        <!-- /.container -->

        <!-- jQuery -->
        <script src="/resources/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="/resources/js/bootstrap.min.js"></script>
        <script type="text/javascript">
                ymaps.ready(init);
            var myMap,
                myPlacemark;

            function init(){
                myMap = new ymaps.Map ("map", {
                    center: [56.028813, 35.498253],
                    zoom: 15
                });

                myPlacemark = new ymaps.Placemark([56.028813, 35.498253], {

                    hintContent: 'ФормаМебели',
                    balloonContent: '<strong>ФормаМебели</strong>',
                    iconCaption: 'ФормаМебели'

                },{preset: 'islands#redDotIconWithCaption'
                });

                myMap.geoObjects.add(myPlacemark);
            }
        </script>

        <!-- Script to Activate the Carousel -->
        <script>
            $('.carousel').carousel({
                interval: 5000 //changes the speed
            })
        </script>



    </jsp:body>
</page:template>
