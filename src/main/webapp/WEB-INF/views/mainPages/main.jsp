<%--
  Created by IntelliJ IDEA.
  User: 82102
  Date: 2022-06-02
  Time: 오후 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
<style>
    @media (min-width: 768px) {

        /* show 3 items */
        .carouselPrograms .carousel-inner .active,
        .carouselPrograms .carousel-inner .active + .carousel-item,
        .carouselPrograms .carousel-inner .active + .carousel-item + .carousel-item {
            display: block;
        }

        .carouselPrograms .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left),
        .carouselPrograms .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left) + .carousel-item,
        .carouselPrograms .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left) + .carousel-item + .carousel-item {
            transition: none;
        }

        .carouselPrograms .carousel-inner .carousel-item-next,
        .carouselPrograms .carousel-inner .carousel-item-prev {
            position: relative;
            transform: translate3d(0, 0, 0);
        }

        .carouselPrograms .carousel-inner .active.carousel-item + .carousel-item + .carousel-item + .carousel-item {
            position: absolute;
            top: 0;
            right: -33.333%;
            z-index: -1;
            display: block;
            visibility: visible;
        }

        /* left or forward direction */
        .carouselPrograms .active.carousel-item-left + .carousel-item-next.carousel-item-left,
        .carouselPrograms .carousel-item-next.carousel-item-left + .carousel-item,
        .carouselPrograms .carousel-item-next.carousel-item-left + .carousel-item + .carousel-item,
        .carouselPrograms .carousel-item-next.carousel-item-left + .carousel-item + .carousel-item + .carousel-item {
            position: relative;
            transform: translate3d(-100%, 0, 0);
            visibility: visible;
        }

        /* farthest right hidden item must be abso position for animations */
        .carouselPrograms .carousel-inner .carousel-item-prev.carousel-item-right {
            position: absolute;
            top: 0;
            left: 0%;
            z-index: -1;
            display: block;
            visibility: visible;
        }

        /* right or prev direction */
        .carouselPrograms .active.carousel-item-right + .carousel-item-prev.carousel-item-right,
        .carouselPrograms .carousel-item-prev.carousel-item-right + .carousel-item,
        .carouselPrograms .carousel-item-prev.carousel-item-right + .carousel-item + .carousel-item,
        .carouselPrograms .carousel-item-prev.carousel-item-right + .carousel-item + .carousel-item + .carousel-item {
            position: relative;
            transform: translate3d(100%, 0, 0);
            visibility: visible;
            display: block;
            visibility: visible;
        }
    }
</style>
</head>
<body>
<h2>자 이제 시작이야 </h2>
<div class="container-fluid">
    <div id="carouselExample" class="carouselPrograms carousel slide" data-ride="carousel" data-interval="false">
        <div class="carousel-inner row w-100 mx-auto" role="listbox">
            <div class="carousel-item col-md-4  active">
                <div class="panel panel-default">
                    <div class="panel-thumbnail">
                        <a href="#" title="image 1" class="thumb">
                            <img class="img-fluid mx-auto d-block" src="//via.placeholder.com/600x400?text=1" alt="slide 1">
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item col-md-4 ">
                <div class="panel panel-default">
                    <div class="panel-thumbnail">
                        <a href="#" title="image 3" class="thumb">
                            <img class="img-fluid mx-auto d-block" src="//via.placeholder.com/600x400?text=2" alt="slide 2">
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item col-md-4 ">
                <div class="panel panel-default">
                    <div class="panel-thumbnail">
                        <a href="#" title="image 4" class="thumb">
                            <img class="img-fluid mx-auto d-block" src="//via.placeholder.com/600x400?text=3" alt="slide 3">
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item col-md-4 ">
                <div class="panel panel-default">
                    <div class="panel-thumbnail">
                        <a href="#" title="image 5" class="thumb">
                            <img class="img-fluid mx-auto d-block" src="//via.placeholder.com/600x400?text=4" alt="slide 4">
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item col-md-4 ">
                <div class="panel panel-default">
                    <div class="panel-thumbnail">
                        <a href="#" title="image 6" class="thumb">
                            <img class="img-fluid mx-auto d-block" src="//via.placeholder.com/600x400?text=5" alt="slide 5">
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item col-md-4 ">
                <div class="panel panel-default">
                    <div class="panel-thumbnail">
                        <a href="#" title="image 7" class="thumb">
                            <img class="img-fluid mx-auto d-block" src="//via.placeholder.com/600x400?text=6" alt="slide 6">
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item col-md-4 ">
                <div class="panel panel-default">
                    <div class="panel-thumbnail">
                        <a href="#" title="image 8" class="thumb">
                            <img class="img-fluid mx-auto d-block" src="//via.placeholder.com/600x400?text=7" alt="slide 7">
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item col-md-4  ">
                <div class="panel panel-default">
                    <div class="panel-thumbnail">
                        <a href="#" title="image 2" class="thumb">
                            <img class="img-fluid mx-auto d-block" src="//via.placeholder.com/600x400?text=8" alt="slide 8">
                        </a>
                    </div>

                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExample" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next text-faded" href="#carouselExample" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>


</body>
<script>

    $('#carouselExample').on('slide.bs.carousel', function (e) {


        const $e = $(e.relatedTarget);
        const idx = $e.index();
        const itemsPerSlide = 3;
        const totalItems = $('.carousel-item').length;

        if (idx >= totalItems-(itemsPerSlide-1)) {
            const it = itemsPerSlide - (totalItems - idx);
            for (let i=0; i<it; i++) {
                // append slides to end
                if (e.direction=="left") {
                    $('.carousel-item').eq(i).appendTo('.carousel-inner');
                }
                else {
                    $('.carousel-item').eq(0).appendTo('.carousel-inner');
                }
            }
        }
    });





    $(document).ready(function() {
        /* show lightbox when clicking a thumbnail */
        $('a.thumb').click(function(event){
            event.preventDefault();
            const content = $('.modal-body');
            content.empty();
            const title = $(this).attr("title");
            $('.modal-title').html(title);
            content.html($(this).html());
            $(".modal-profile").modal({show:true});
        });

    });
</script>
</html>
