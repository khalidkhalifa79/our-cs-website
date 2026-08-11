document.addEventListener("DOMContentLoaded", function () {
    const body = document.body;
    const menuToggle = document.getElementById("menuToggle");
    const mainNav = document.getElementById("mainNav");
    const langButtons = document.querySelectorAll(".lang-btn");
    const langItems = document.querySelectorAll(".lang-text");
    const STORAGE_KEY = "ourcs_lang";

    /* =========================
       Hero Counters
    ========================= */
    const counters = document.querySelectorAll(".counter");
    let countersStarted = false;

    function animateCounter(counter) {
        const target = parseInt(counter.getAttribute("data-target"), 10) || 0;
        const duration = 1800;
        const stepTime = 20;
        const totalSteps = Math.ceil(duration / stepTime);
        const increment = target / totalSteps;
        let current = 0;

        const timer = setInterval(function () {
            current += increment;

            if (current >= target) {
                counter.textContent = target + "+";
                clearInterval(timer);
            } else {
                counter.textContent = Math.floor(current) + "+";
            }
        }, stepTime);
    }

    function startCountersIfVisible() {
        const heroStats = document.querySelector(".hero-stats");
        if (!heroStats || countersStarted) return;

        const rect = heroStats.getBoundingClientRect();
        const windowHeight = window.innerHeight || document.documentElement.clientHeight;

        if (rect.top < windowHeight - 60) {
            counters.forEach(function (counter) {
                animateCounter(counter);
            });
            countersStarted = true;
        }
    }

    window.addEventListener("scroll", startCountersIfVisible);
    startCountersIfVisible();

    /* =========================
       Mobile Menu Toggle
    ========================= */
    if (menuToggle && mainNav) {
        menuToggle.addEventListener("click", function () {
            mainNav.classList.toggle("active");
            menuToggle.classList.toggle("active");
            body.classList.toggle("menu-open");
        });

        document.querySelectorAll(".main-nav a").forEach(function (link) {
            link.addEventListener("click", function () {
                mainNav.classList.remove("active");
                menuToggle.classList.remove("active");
                body.classList.remove("menu-open");
            });
        });

        document.addEventListener("click", function (e) {
            const clickedInsideNav = mainNav.contains(e.target);
            const clickedToggle = menuToggle.contains(e.target);

            if (!clickedInsideNav && !clickedToggle) {
                mainNav.classList.remove("active");
                menuToggle.classList.remove("active");
                body.classList.remove("menu-open");
            }
        });
    }

    /* =========================
       Language Switcher ENG / POL
    ========================= */
    function setLanguage(lang) {
        langItems.forEach(function (el) {
            const newText = el.getAttribute("data-" + lang);
            if (newText !== null) {
                el.textContent = newText;
            }
        });

        const placeholderItems = document.querySelectorAll(".lang-placeholder");
        placeholderItems.forEach(function (el) {
            const newPlaceholder = el.getAttribute("data-placeholder-" + lang);
            if (newPlaceholder !== null) {
                el.setAttribute("placeholder", newPlaceholder);
            }
        });

        langButtons.forEach(function (btn) {
            btn.classList.toggle("active", btn.dataset.lang === lang);
        });

        document.documentElement.setAttribute("lang", lang === "pl" ? "pl" : "en");
        localStorage.setItem(STORAGE_KEY, lang);

   
    }

    langButtons.forEach(function (btn) {
        btn.addEventListener("click", function () {
            const selectedLang = btn.dataset.lang || "en";
            setLanguage(selectedLang);
        });
    });

    const savedLang = localStorage.getItem(STORAGE_KEY) || "en";
    setLanguage(savedLang);

    /* =========================
       Generic Slider
       works for:
       - reviews
       - projects
       - any other section that still uses .js-slider
    ========================= */
    function initSlider(sliderElement) {
        const slides = sliderElement.querySelectorAll(".slide");
        const prevBtn = sliderElement.querySelector('[data-action="prev"]');
        const nextBtn = sliderElement.querySelector('[data-action="next"]');
        const currentCounter = sliderElement.querySelector(".current-slide, .review-current");
        const totalCounter = sliderElement.querySelector(".total-slides, .review-total");

        if (!slides.length) return;

        let current = 0;
        let autoPlay = null;

        slides.forEach(function (slide, index) {
            if (slide.classList.contains("active")) {
                current = index;
            }
        });

        if (totalCounter) {
            totalCounter.textContent = slides.length;
        }

        function showSlide(index) {
            if (index < 0) index = slides.length - 1;
            if (index >= slides.length) index = 0;

            slides.forEach(function (slide, i) {
                const isActive = i === index;
                slide.classList.toggle("active", isActive);
                slide.setAttribute("aria-hidden", isActive ? "false" : "true");
            });

            current = index;

            if (currentCounter) {
                currentCounter.textContent = current + 1;
            }
        }

        function nextSlide() {
            showSlide(current + 1);
        }

        function prevSlide() {
            showSlide(current - 1);
        }

        function stopAutoPlay() {
            if (autoPlay) {
                clearInterval(autoPlay);
                autoPlay = null;
            }
        }

        function startAutoPlay() {
            if (slides.length <= 1) return;

            stopAutoPlay();
            autoPlay = setInterval(function () {
                nextSlide();
            }, 5000);
        }

        function restartAutoPlay() {
            stopAutoPlay();
            startAutoPlay();
        }

        if (prevBtn) {
            prevBtn.addEventListener("click", function () {
                prevSlide();
                restartAutoPlay();
            });
        }

        if (nextBtn) {
            nextBtn.addEventListener("click", function () {
                nextSlide();
                restartAutoPlay();
            });
        }

        sliderElement.addEventListener("mouseenter", stopAutoPlay);
        sliderElement.addEventListener("mouseleave", startAutoPlay);

        let startX = 0;
        let endX = 0;

        sliderElement.addEventListener("touchstart", function (e) {
            startX = e.changedTouches[0].clientX;
        }, { passive: true });

        sliderElement.addEventListener("touchend", function (e) {
            endX = e.changedTouches[0].clientX;
            const diff = startX - endX;

            if (Math.abs(diff) > 50) {
                if (diff > 0) {
                    nextSlide();
                } else {
                    prevSlide();
                }
                restartAutoPlay();
            }
        }, { passive: true });

        showSlide(current);
        startAutoPlay();
    }

    document.querySelectorAll(".js-slider").forEach(function (slider) {
        initSlider(slider);
    });

    /* =========================
       Simple Active Nav on Scroll
    ========================= */
    const navLinks = document.querySelectorAll(".main-nav .nav-link");
    const sections = [];

    navLinks.forEach(function (link) {
        const href = link.getAttribute("href");

        if (href && href.startsWith("#")) {
            const section = document.querySelector(href);

            if (section) {
                sections.push({
                    link: link,
                    section: section
                });
            }
        }
    });

    function updateActiveNav() {
        const scrollY = window.scrollY + 140;

        sections.forEach(function (item) {
            const top = item.section.offsetTop;
            const bottom = top + item.section.offsetHeight;

            if (scrollY >= top && scrollY < bottom) {
                item.link.classList.add("active");
            } else {
                item.link.classList.remove("active");
            }
        });
    }

    window.addEventListener("scroll", updateActiveNav);
    updateActiveNav();

    /* =========================
       Header Shadow on Scroll
    ========================= */
    const siteHeader = document.querySelector(".site-header");

    function updateHeaderState() {
        if (!siteHeader) return;

        if (window.scrollY > 20) {
            siteHeader.classList.add("scrolled");
        } else {
            siteHeader.classList.remove("scrolled");
        }
    }

    window.addEventListener("scroll", updateHeaderState);
    updateHeaderState();

    /* =========================
       Smooth Close On Resize
    ========================= */
    window.addEventListener("resize", function () {
        if (window.innerWidth > 991) {
            if (mainNav) mainNav.classList.remove("active");
            if (menuToggle) menuToggle.classList.remove("active");
            body.classList.remove("menu-open");
        }
    });
});