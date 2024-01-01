<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .carousel-slides .slide {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    opacity: 0;
    transition: opacity 2s ease;
    }

    .carousel-slides .slide.active {
        opacity: 1;
    }

    .slide img {
    width: 100%;
    display: block;
    }


    </style>
</head>
<body>
    <div class="col-s-12 col-12">    
    <div id="carousel">
        <div class="carousel-slides">
            <div class="slide"><img src="img/1381.jpg" alt="VDO"></div>
            <div class="slide"><img src="img/stoneridge slide.jpg" alt="Stoneridge"></div>
            <div class="slide"><img src="img/webasto slider.jpg" alt="Vebasto"></div>
        </div> 
    </div>
    </div>   
    <script>
    document.addEventListener('DOMContentLoaded', function() {
    let index = 0;
    const slides = document.querySelectorAll('.slide');
    const totalSlides = slides.length;
    let interval = 3000; // Time interval

    function updateCarousel() {
        slides.forEach(slide => slide.classList.remove('active'));
        slides[index].classList.add('active');
    }

    function startAutoSlide() {
        return setInterval(function() {
            index = (index + 1) % totalSlides;
            updateCarousel();
        }, interval);
    }

    let autoSlide = startAutoSlide();

    document.querySelector('.prev').addEventListener('click', function() {
        index = (index - 1 + totalSlides) % totalSlides;
        updateCarousel();
        restartAutoSlide();
    });

    document.querySelector('.next').addEventListener('click', function() {
        index = (index + 1) % totalSlides;
        updateCarousel();
        restartAutoSlide();
    });

    function restartAutoSlide() {
        clearInterval(autoSlide);
        autoSlide = startAutoSlide();
    }
});

    </script> 
</body>
</html>


