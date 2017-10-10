<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:body>
        <!-- Header Carousel -->
        <header id="myCarousel" class="carousel slide">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item">
                    <div class="fill" style="background-image:url('http://placehold.it/1900x1080&amp;text=Slide One');"></div>
                    <div class="carousel-caption">

                    </div>
                </div>
                <div class="item active">
                    <div class="fill" style="background-image:url('http://placehold.it/1900x1080&amp;text=Slide Two');"></div>
                    <div class="carousel-caption">

                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image:url('http://placehold.it/1900x1080&amp;text=Slide Three');"></div>
                    <div class="carousel-caption">
                    </div>
                </div>
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
                    <h2 class="page-header">Modern Business Features</h2>
                </div>
                <div class="col-md-6">
                    <p>The Modern Business template by Start Bootstrap includes:</p>
                    <ul>
                        <li><strong>Bootstrap v3.2.0</strong>
                        </li>
                        <li>jQuery v1.11.0</li>
                        <li>Font Awesome v4.1.0</li>
                        <li>Working PHP contact form with validation</li>
                        <li>Unstyled page elements for easy customization</li>
                        <li>17 HTML pages</li>
                    </ul>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive" src="http://placehold.it/700x450" alt="">
                </div>
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



    </jsp:body>
</page:template>
