document.addEventListener("DOMContentLoaded", function () {
    const textarea = document.getElementById("consultationDescription");
    const counter = document.getElementById("charCounter");

    const TEXTAREA_MAX_LENGTH = 1000;
    const TEXTAREA_MAX_HEIGHT = 260;

    /* =========================
       Consultation description
    ========================= */
    function autoGrowTextarea() {
        if (!textarea) return;

        textarea.style.height = "auto";
        const newHeight = Math.min(textarea.scrollHeight, TEXTAREA_MAX_HEIGHT);
        textarea.style.height = newHeight + "px";
        textarea.style.overflowY = textarea.scrollHeight > TEXTAREA_MAX_HEIGHT ? "auto" : "hidden";
    }

    function updateCounter() {
        if (!textarea || !counter) return;
        counter.textContent = `${textarea.value.length} / ${TEXTAREA_MAX_LENGTH}`;
    }

    if (textarea && counter) {
        textarea.addEventListener("input", function () {
            updateCounter();
            autoGrowTextarea();
        });

        updateCounter();
        autoGrowTextarea();
    }

    /* =========================
       Generic mini slider
    ========================= */
    function initMiniSlider(slidesSelector, dotsSelector, intervalTime) {
        const slides = document.querySelectorAll(slidesSelector);
        const dots = document.querySelectorAll(dotsSelector);

        if (!slides.length || !dots.length) return;

        let currentIndex = 0;
        let timer = null;

        function showSlide(index) {
            if (index < 0) index = slides.length - 1;
            if (index >= slides.length) index = 0;

            slides.forEach(function (slide, i) {
                slide.classList.toggle("active", i === index);
            });

            dots.forEach(function (dot, i) {
                dot.classList.toggle("active", i === index);
            });

            currentIndex = index;
        }

        function startSlider() {
            if (slides.length <= 1) return;

            stopSlider();
            timer = setInterval(function () {
                showSlide(currentIndex + 1);
            }, intervalTime);
        }

        function stopSlider() {
            if (!timer) return;
            clearInterval(timer);
            timer = null;
        }

        dots.forEach(function (dot, index) {
            dot.addEventListener("click", function () {
                showSlide(index);
                startSlider();
            });
        });

        showSlide(0);
        startSlider();
    }

    initMiniSlider(".consultation-side-slide", ".consultation-dot", 4000);
    initMiniSlider(".consultation-promo-slide", ".promo-dot", 4500);
});