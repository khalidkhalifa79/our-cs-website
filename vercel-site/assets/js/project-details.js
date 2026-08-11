document.addEventListener("DOMContentLoaded", function () {
    function initSlider(options) {
        const slides = Array.from(document.querySelectorAll(options.slideSelector));
        if (!slides.length) return;

        const dots = options.dotSelector
            ? Array.from(document.querySelectorAll(options.dotSelector))
            : [];

        const prevBtn = options.prevSelector
            ? document.querySelector(options.prevSelector)
            : null;

        const nextBtn = options.nextSelector
            ? document.querySelector(options.nextSelector)
            : null;

        const currentEl = options.currentSelector
            ? document.querySelector(options.currentSelector)
            : null;

        const totalEl = options.totalSelector
            ? document.querySelector(options.totalSelector)
            : null;

        let currentIndex = 0;

        function updateCounter() {
            if (currentEl) {
                currentEl.textContent = String(currentIndex + 1);
            }

            if (totalEl) {
                totalEl.textContent = String(slides.length);
            }
        }

        function updateSlides() {
            slides.forEach(function (slide, index) {
                const isActive = index === currentIndex;
                slide.classList.toggle("active", isActive);
                slide.setAttribute("aria-hidden", isActive ? "false" : "true");
            });

            dots.forEach(function (dot, index) {
                const isActive = index === currentIndex;
                dot.classList.toggle("active", isActive);
                dot.setAttribute("aria-pressed", isActive ? "true" : "false");
            });

            updateCounter();
        }

        function showSlide(index) {
            if (index < 0) {
                currentIndex = slides.length - 1;
            } else if (index >= slides.length) {
                currentIndex = 0;
            } else {
                currentIndex = index;
            }

            updateSlides();
        }

        function showNext() {
            showSlide(currentIndex + 1);
        }

        function showPrev() {
            showSlide(currentIndex - 1);
        }

        function toggleControlsState() {
            const hasMultipleSlides = slides.length > 1;

            if (prevBtn) {
                prevBtn.disabled = !hasMultipleSlides;
                prevBtn.setAttribute("aria-disabled", hasMultipleSlides ? "false" : "true");
            }

            if (nextBtn) {
                nextBtn.disabled = !hasMultipleSlides;
                nextBtn.setAttribute("aria-disabled", hasMultipleSlides ? "false" : "true");
            }

            if (dots.length) {
                dots.forEach(function (dot) {
                    dot.disabled = !hasMultipleSlides;
                });
            }
        }

        if (prevBtn) {
            prevBtn.addEventListener("click", showPrev);
        }

        if (nextBtn) {
            nextBtn.addEventListener("click", showNext);
        }

        if (dots.length) {
            dots.forEach(function (dot, index) {
                dot.addEventListener("click", function () {
                    showSlide(index);
                });
            });
        }

        toggleControlsState();
        updateSlides();
    }

    initSlider({
        slideSelector: ".project-gallery-slide",
        dotSelector: ".project-gallery-dot",
        prevSelector: ".project-gallery-prev",
        nextSelector: ".project-gallery-next",
        currentSelector: ".project-gallery-current",
        totalSelector: ".project-gallery-total"
    });

    initSlider({
        slideSelector: ".project-related-slide",
        prevSelector: ".project-related-prev",
        nextSelector: ".project-related-next",
        currentSelector: ".project-related-current",
        totalSelector: ".project-related-total"
    });
});