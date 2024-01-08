document.addEventListener('DOMContentLoaded', function () {
    let index = 0;
    const slides = document.querySelectorAll('.slide');
    const totalSlides = slides.length;
    let interval = 3000;    
    if (slides.length > 0) {
        slides[0].classList.add('active');
    }

    function updateCarousel() {
        slides.forEach(slide => slide.classList.remove('active'));
        slides[index].classList.add('active');
    }

    function startAutoSlide() {
        return setInterval(function () {
            index = (index + 1) % totalSlides;
            updateCarousel();
        }, interval);
    }

    let autoSlide = startAutoSlide();

    document.querySelector('.prev').addEventListener('click', function () {
        index = (index - 1 + totalSlides) % totalSlides;
        updateCarousel();
        restartAutoSlide();
    });

    document.querySelector('.next').addEventListener('click', function () {
        index = (index + 1) % totalSlides;
        updateCarousel();
        restartAutoSlide();
    });

    function restartAutoSlide() {
        clearInterval(autoSlide);
        autoSlide = startAutoSlide();
    }
});

function updateMainSliderHeight() {
    const slider = document.querySelector('.mainslider');
    let maxHeight = 0;

    slider.querySelectorAll('.slide img').forEach(img => {
        if (img.offsetHeight > maxHeight) {
            maxHeight = img.offsetHeight;
        }
    });

    slider.style.height = maxHeight + 'px';
}

document.addEventListener('DOMContentLoaded', updateMainSliderHeight);
window.addEventListener('resize', updateMainSliderHeight);
