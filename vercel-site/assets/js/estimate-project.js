document.addEventListener("DOMContentLoaded", function () {
    const textarea = document.getElementById("projectDescription");
    const counter = document.getElementById("charCounter");
    const fileInput = document.getElementById("projectFiles");
    const filesList = document.getElementById("selectedFiles");

    const TEXTAREA_MAX_LENGTH = 1000;
    const TEXTAREA_MAX_HEIGHT = 260;

    /* =========================
       Project description
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
       Selected files list
    ========================= */
    if (fileInput && filesList) {
        fileInput.addEventListener("change", function () {
            filesList.innerHTML = "";

            if (!fileInput.files || !fileInput.files.length) return;

            Array.from(fileInput.files).forEach(function (file) {
                const item = document.createElement("div");
                item.className = "estimate-file-item";
                item.textContent = file.name;
                filesList.appendChild(item);
            });
        });
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

    initMiniSlider(".estimate-side-slide", ".estimate-dot", 4000);
    initMiniSlider(".estimate-promo-slide", ".promo-dot", 4500);
});