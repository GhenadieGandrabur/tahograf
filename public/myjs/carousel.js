document.addEventListener('DOMContentLoaded', function() {
    let index = 0;
    const slides = document.querySelectorAll('.slide');
    const totalSlides = slides.length;
    let interval = 3000;

    function updateCarousel() {
        const newMarginLeft = index * -100;
        document.querySelector('.carousel-slides').style.marginLeft = newMarginLeft + '%';
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
