<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="home.aspx.vb" Inherits="Our_CS.home" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
     <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-5Q0CV1HHX9"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'G-5Q0CV1HHX9');
    </script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Custom Software & Business Systems | Our-CS</title>

    <meta name="description" content="Our-CS builds custom software, business systems, admin panels, internal platforms and workflow automation solutions for companies in Poland and international markets." />
    <meta name="robots" content="index, follow" />

    <link rel="canonical" href="https://our-cs.com/" />

    <meta property="og:title" content="Custom Software & Business Systems | Our-CS" />
    <meta property="og:description" content="Business systems, admin panels, internal platforms and workflow-driven custom software built for real operations." />
    <meta property="og:url" content="https://our-cs.com/" />
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="Our-CS" />
    <meta property="og:image" content="https://our-cs.com/assets/img/hero-illustration.png" />

    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="Custom Software & Business Systems | Our-CS" />
    <meta name="twitter:description" content="Custom software, business systems, admin panels and workflow automation built around real business operations." />
    <meta name="twitter:image" content="https://our-cs.com/assets/img/hero-illustration.png" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <link rel="stylesheet" href="assets/css/home.css" />
</head>
<body>
    <form id="form1" runat="server">

        <header class="site-header">
            <div class="container header-inner">
                <a href="#hero" class="logo-wrap">
                    <img src="assets/img/logo.png" alt="Logo" class="logo-img" />
                </a>

                <nav class="main-nav" id="mainNav">
                    <a href="#services" class="nav-link lang-text" data-en="Services" data-pl="Usługi">Services</a>
                    <a href="#projects" class="nav-link lang-text" data-en="Our Projects" data-pl="Nasze projekty">Our Projects</a>
                    <a href="#about" class="nav-link lang-text" data-en="Overview" data-pl="Przegląd">Overview</a>
                    <a href="#reviews" class="nav-link lang-text" data-en="Reviews" data-pl="Opinie">Reviews</a>
                    <a href="#MapofClients" class="nav-link lang-text" data-en="Map of Clients" data-pl="Mapa klientów">Map of Clients</a>
                    <a href="#contact" class="nav-link lang-text" data-en="Contact" data-pl="Kontakt">Contact</a>
                </nav>

                <div class="header-actions">
                    <a href="estimate-project.aspx" class="btn btn-primary lang-text" data-en="Estimate Project" data-pl="Wyceń projekt">Estimate Project</a>

                    <div class="lang-switcher">
                        <button type="button" class="lang-btn active" data-lang="en">ENG</button>
                        <button type="button" class="lang-btn" data-lang="pl">POL</button>
                    </div>

                    <button type="button" class="menu-toggle" id="menuToggle" aria-label="Open menu">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                </div>
            </div>
        </header>

        <div class="social-rail" aria-label="Social links">
            <a href="https://www.behance.net/Our-CS" aria-label="Behance"><i class="fa-brands fa-behance"></i></a>
            <%--<a href="#" aria-label="X"><i class="fa-brands fa-x-twitter"></i></a>
            <a href="#" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a>--%>
            <a href="https://www.linkedin.com/company/our-cs" aria-label="LinkedIn"><i class="fa-brands fa-linkedin-in"></i></a>
<%--            <a href="#" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>--%>
        </div>

        <main>
            <!-- HERO -->
            <section class="hero-section" id="hero">
                <div class="container hero-grid">
                    <div class="hero-content">
    <h1 class="hero-title lang-text"
        data-en="Custom Software Built for Real Business Operations"
        data-pl="Dedykowane oprogramowanie tworzone dla rzeczywistych operacji biznesowych">
        Custom Software Built for Real Business Operations
    </h1>

    <h2 class="hero-subtitle lang-text"
        data-en="We design and develop business systems, admin panels, internal platforms, and workflow-driven web solutions."
        data-pl="Projektujemy i tworzymy systemy biznesowe, panele administracyjne, platformy wewnętrzne oraz rozwiązania webowe oparte na workflow.">
        We design and develop business systems, admin panels, internal platforms, and workflow-driven web solutions.
    </h2>

    <p class="hero-text lang-text"
       data-en="From certification and publishing systems to corporate websites and approval workflows, we build practical software that improves clarity, control, and day-to-day efficiency."
       data-pl="Od systemów certyfikacyjnych i platform publikacyjnych po strony korporacyjne i procesy akceptacji — tworzymy praktyczne oprogramowanie, które zwiększa przejrzystość, kontrolę i codzienną efektywność.">
        From certification and publishing systems to corporate websites and approval workflows, we build practical software that improves clarity, control, and day-to-day efficiency.
    </p>
</div>

                    <div class="hero-visual">
                        <img src="assets/img/hero-illustration.png" alt="Software Team Illustration" />
                    </div>

                    <div class="hero-stats">
                        <div class="stat-card">
                            <strong class="counter" data-target="123">0</strong>
                            <span class="lang-text" data-en="Completed projects" data-pl="Zrealizowane projekty">Completed projects</span>
                        </div>

                        <div class="stat-card">
                            <strong class="counter" data-target="18">0</strong>
                            <span class="lang-text" data-en="Years of experience" data-pl="Lat doświadczenia">Years of experience</span>
                        </div>

                        <div class="stat-card">
                            <strong class="counter" data-target="10">0</strong>
                            <span class="lang-text" data-en="Inhouse developers" data-pl="Programistów in-house">Inhouse developers</span>
                        </div>
                    </div>
                </div>
            </section>

            <!-- SERVICES -->
            <section class="services-section section-space" id="services">
                <div class="container services-layout">
                    <div class="services-grid">
    <div class="service-card">
        <i class="fa-solid fa-globe"></i>
        <h3 class="lang-text" data-en="Custom Web Development" data-pl="Dedykowane rozwiązania webowe">Custom Web Development</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-building"></i>
        <h3 class="lang-text" data-en="Corporate Website Development" data-pl="Tworzenie stron firmowych">Corporate Website Development</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-table-columns"></i>
        <h3 class="lang-text" data-en="Admin Panel Development" data-pl="Tworzenie paneli administracyjnych">Admin Panel Development</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-sitemap"></i>
        <h3 class="lang-text" data-en="Internal Business Systems" data-pl="Wewnętrzne systemy biznesowe">Internal Business Systems</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-newspaper"></i>
        <h3 class="lang-text" data-en="CMS & Publishing Platforms" data-pl="Platformy CMS i publikacyjne">CMS & Publishing Platforms</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-database"></i>
        <h3 class="lang-text" data-en="Database-Driven Web Applications" data-pl="Aplikacje webowe oparte na bazach danych">Database-Driven Web Applications</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-gears"></i>
        <h3 class="lang-text" data-en="Workflow Automation Solutions" data-pl="Rozwiązania automatyzacji procesów">Workflow Automation Solutions</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-file-circle-check"></i>
        <h3 class="lang-text" data-en="Certification & Approval Systems" data-pl="Systemy certyfikacji i zatwierdzania">Certification & Approval Systems</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-file-pdf"></i>
        <h3 class="lang-text" data-en="PDF & Document Automation" data-pl="Automatyzacja dokumentów i PDF">PDF & Document Automation</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-bug"></i>
        <h3 class="lang-text" data-en="Testing, Debugging & Optimization" data-pl="Testowanie, debugowanie i optymalizacja">Testing, Debugging & Optimization</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-magnifying-glass-chart"></i>
        <h3 class="lang-text" data-en="System Review & Enhancement" data-pl="Przegląd i rozwój systemów">System Review & Enhancement</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-screwdriver-wrench"></i>
        <h3 class="lang-text" data-en="Maintenance & Technical Support" data-pl="Utrzymanie i wsparcie techniczne">Maintenance & Technical Support</h3>
    </div>
</div>

                    <div class="services-side">
    <p class="section-kicker lang-text" data-en="Our experience" data-pl="Nasze doświadczenie">Our experience</p>

    <h2 class="section-title lang-text" data-en="Services" data-pl="Usługi">Services</h2>

    <h3 class="section-subtitle lang-text" data-en="Software solutions built around real business needs" data-pl="Rozwiązania programistyczne tworzone wokół rzeczywistych potrzeb biznesowych">
        Software solutions built around real business needs
    </h3>

    <p class="lang-text"
       data-en="From corporate websites and admin panels to internal business systems and workflow automation, we develop web-based solutions designed to support operations, improve efficiency, and deliver long-term business value."
       data-pl="Od stron firmowych i paneli administracyjnych po wewnętrzne systemy biznesowe i automatyzację procesów — tworzymy rozwiązania webowe zaprojektowane tak, aby wspierać operacje, zwiększać efektywność i dostarczać długoterminową wartość biznesową.">
        From corporate websites and admin panels to internal business systems and workflow automation, we develop web-based solutions designed to support operations, improve efficiency, and deliver long-term business value.
    </p>

    <p class="lang-text"
       data-en="Our work focuses on practical, database-driven systems that help organizations manage content, records, approvals, reporting, and day-to-day processes with clarity and control."
       data-pl="Nasza praca koncentruje się na praktycznych systemach opartych na bazach danych, które pomagają organizacjom zarządzać treściami, danymi, zatwierdzeniami, raportowaniem oraz codziennymi procesami w sposób przejrzysty i uporządkowany.">
        Our work focuses on practical, database-driven systems that help organizations manage content, records, approvals, reporting, and day-to-day processes with clarity and control.
    </p>
</div>
                </div>
            </section>

            <!-- FOUNDER MESSAGE -->
<section class="founder-message-section section-space">
    <div class="container">
        <h2 class="center-title text-left lang-text"
            data-en="A word from the company owner"
            data-pl="Słowo od właściciela firmy">
            A word from the company owner
        </h2>

        <article class="founder-message-card">
            <div class="founder-message-grid">
                <div class="founder-message-copy">
                    <p class="lang-text"
                       data-en="To our new and existing clients, thank you for your trust in Our-CS. From the beginning, our goal has been to build dependable digital solutions that serve real business needs, support daily operations, and create long-term value. We believe every project should be approached with clarity, commitment, and a strong sense of responsibility toward the people and businesses we work with."
                       data-pl="Do naszych nowych i obecnych klientów — dziękujemy za zaufanie do Our-CS. Od samego początku naszym celem było tworzenie niezawodnych rozwiązań cyfrowych, które odpowiadają na rzeczywiste potrzeby biznesowe, wspierają codzienne działania i budują długoterminową wartość. Wierzymy, że każdy projekt powinien być realizowany z jasną wizją, zaangażowaniem oraz silnym poczuciem odpowiedzialności wobec ludzi i firm, z którymi współpracujemy.">
                        To our new and existing clients, thank you for your trust in Our-CS. From the beginning, our goal has been to build dependable digital solutions that serve real business needs, support daily operations, and create long-term value. We believe every project should be approached with clarity, commitment, and a strong sense of responsibility toward the people and businesses we work with.
                    </p>

                    <p class="lang-text"
                       data-en="Whether you are starting a new project or continuing a long-term collaboration with us, our focus remains the same: quality, reliability, and practical results. We are proud of every partnership we build, and we look forward to helping more businesses grow with confidence through thoughtful, well-structured technology."
                       data-pl="Niezależnie od tego, czy rozpoczynają Państwo nowy projekt, czy kontynuują z nami długoterminową współpracę, nasze podejście pozostaje niezmienne: jakość, niezawodność i praktyczne rezultaty. Jesteśmy dumni z każdej relacji partnerskiej, którą budujemy, i z zaangażowaniem wspieramy firmy w rozwoju dzięki przemyślanym oraz dobrze zaprojektowanym rozwiązaniom technologicznym.">
                        Whether you are starting a new project or continuing a long-term collaboration with us, our focus remains the same: quality, reliability, and practical results. We are proud of every partnership we build, and we look forward to helping more businesses grow with confidence through thoughtful, well-structured technology.
                    </p>

                    <h4>Khalid Khalifa</h4>
                    <span class="lang-text"
                          data-en="Founder & CEO, Our-CS"
                          data-pl="Założyciel i CEO, Our-CS">
                        Founder & CEO, Our-CS
                    </span>

                    <a href="#projects" class="link-arrow lang-text"
                       data-en="See Our Work"
                       data-pl="Zobacz nasze realizacje">
                        See Our Work
                    </a>
                </div>

                <div class="founder-message-media">
                    <div class="founder-message-visual">
                        <img src="assets/img/khalidkhalifa.png" alt="khalidkhalifa" class="founder-person" />
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>

          <!-- REVIEWS -->
<section class="reviews-section section-space" id="reviews">
    <div class="container">
        <h2 class="section-title lang-text" data-en="Our reviews" data-pl="Nasze opinie">
            Our reviews
        </h2>

        <div class="slider-box js-slider reviews-slider" data-slider="reviews">
            <div class="slides">

                <!-- Slide 1 -->
                <article class="slide active">
                    <div class="review-showcase">
                        <div class="review-panel" >
                            <div class="review-content">
                                <p class="lang-text"
                                   data-en=" Our-CS has been a reliable technology partner for our business. Their professionalism, technical quality, and ability to build structured systems around real operational needs made a major difference to our efficiency and growth."
                                   data-pl="Our-CS okazało się niezawodnym partnerem technologicznym dla naszej firmy. Ich profesjonalizm, jakość techniczna oraz umiejętność tworzenia uporządkowanych systemów opartych na rzeczywistych potrzebach operacyjnych miały ogromny wpływ na naszą efektywność i rozwój.">
 Our-CS has been a reliable technology partner for our business. Their professionalism, technical quality, and ability to build structured systems around real operational needs made a major difference to our efficiency and growth.
                                </p>

                                <div class="review-author">
                                    <h4>Dr. Anas Khalifa</h4>
                                    <span class="lang-text" data-en=" Founder & CEO, ECI Safety Horizon" data-pl="Założyciel i CEO, ECI Safety Horizon">
                                        Founder & CEO, ECI Safety Horizon
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="review-floating-image">
                            <img src="assets/img/review-1.png" alt="Dr. Anas Khalifa" />
                        </div>
                    </div>
                </article>

                <!-- Slide 2 -->
                <article class="slide">
                    <div class="review-showcase">
                        <div class="review-panel" style="--review-bg: url('assets/img/review-bg.jpg');">
                            <div class="review-content">
                                <p class="lang-text"
                                   data-en="We always turn to Our-CS first for development needs. Their professionalism, technical quality, and ability to build structured, business-focused systems made a major difference to our growth."
                                   data-pl="Zawsze w pierwszej kolejności zwracamy się do Our-CS, gdy potrzebujemy wsparcia w zakresie rozwoju oprogramowania. Ich profesjonalizm, jakość techniczna oraz umiejętność tworzenia uporządkowanych, zorientowanych na biznes systemów miały ogromny wpływ na nasz rozwój.">
We always turn to Our-CS first for development needs. Their professionalism, technical quality, and ability to build structured, business-focused systems made a major difference to our growth.
                                </p>

                                <div class="review-author">
                                    <h4>Dr. Mohamed Ghobashy</h4>
                                    <span class="lang-text" data-en="  Partner & Commercial Director, ECI Safety Horizon" data-pl="Partner i Dyrektor Handlowy, ECI Safety Horizon">
                                         Partner & Commercial Director, ECI Safety Horizon
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="review-floating-image">
                            <img src="assets/img/review-2.png" alt="Dr. Mohamed Ghobashy" />
                        </div>
                    </div>
                </article>

                 <!-- Slide 3 -->
 <article class="slide">
     <div class="review-showcase">
         <div class="review-panel" style="--review-bg: url('assets/img/review-bg.jpg');">
             <div class="review-content">
                 <p class="lang-text"
                    data-en="Our-CS has been a reliable technology partner for our business. Their professionalism, technical quality, and ability to build structured systems around real operational needs made a major difference to our efficiency and long-term growth."
                    data-pl="Our-CS stało się dla naszej firmy niezawodnym partnerem technologicznym. Ich profesjonalizm, jakość techniczna oraz umiejętność tworzenia uporządkowanych systemów opartych na rzeczywistych potrzebach operacyjnych miały ogromny wpływ na naszą efektywność i długoterminowy rozwój.">
                     Our-CS has been a reliable technology partner for our business. Their professionalism, technical quality, and ability to build structured systems around real operational needs made a major difference to our efficiency and long-term growth.
                 </p>

                 <div class="review-author">
                     <h4>Ali Alzakary</h4>
                     <span class="lang-text" data-en="Founder & Editor-in-Chief, Qahwa World" data-pl="Założyciel i Redaktor Naczelny, Qahwa World">
                         Founder & Editor-in-Chief, Qahwa World
                     </span>
                 </div>
             </div>
         </div>

         <div class="review-floating-image">
             <img src="assets/img/review-3.png" alt="Ali Alzakary" />
         </div>
     </div>
 </article>

                 <!-- Slide 4 -->
 <article class="slide">
     <div class="review-showcase">
         <div class="review-panel" style="--review-bg: url('assets/img/review-bg.jpg');">
             <div class="review-content">
                 <p class="lang-text"
                    data-en="Working with Our-CS has had a real impact on our company. The team understood our business needs clearly and delivered a well-structured system that improved our operations and created lasting value."
                    data-pl="Współpraca z Our-CS miała realny wpływ na naszą firmę. Zespół jasno zrozumiał nasze potrzeby biznesowe i dostarczył dobrze uporządkowany system, który usprawnił nasze działania operacyjne i stworzył trwałą wartość.">
                     Working with Our-CS has had a real impact on our company. The team understood our business needs clearly and delivered a well-structured system that improved our operations and created lasting value.
                 </p>

                 <div class="review-author">
                     <h4>Andra Oproiu</h4>
                     <span class="lang-text" data-en="Principal, Beacon of Light Private Elementary School" data-pl="Dyrektor, Beacon of Light Private Elementary School">
                        Principal, Beacon of Light Private Elementary School
                     </span>
                 </div>
             </div>
         </div>

         <div class="review-floating-image">
             <img src="assets/img/review-4.png" alt="Andra Oproiu" />
         </div>
     </div>
 </article>
            </div>


            <!-- Bottom navigation -->
            <div class="review-nav">
                <button type="button" class="review-nav-btn prev" data-action="prev" aria-label="Previous review">
                    <i class="fa-solid fa-arrow-left"></i>
                </button>

                <div class="review-counter">
                    <span class="review-current">1</span>/<span class="review-total">4</span>
                </div>

                <button type="button" class="review-nav-btn next" data-action="next" aria-label="Next review">
                    <i class="fa-solid fa-arrow-right"></i>
                </button>
            </div>
        </div>
    </div>
</section>
            <!-- PROJECTS -->
<section class="projects-section section-space" id="projects">
    <div class="container">
        <h2 class="section-title lang-text" data-en="Our Projects" data-pl="Nasze projekty">Our Projects</h2>

        <div class="slider-box js-slider" data-slider="projects">
            <button type="button" class="slider-arrow prev" data-action="prev" aria-label="Previous project">
                <i class="fa-solid fa-arrow-left"></i>
            </button>

            <button type="button" class="slider-arrow next" data-action="next" aria-label="Next project">
                <i class="fa-solid fa-arrow-right"></i>
            </button>

            <div class="slides">

                                <!-- 1 -->
              <article class="slide active">
    <div class="project-card">
        <div class="project-copy">
            <span class="project-index">1 / 7</span>

            <h3>
                <a href="project-details.aspx?project=gaming-center-management-system" target="_blank" rel="noopener noreferrer">


                    Gaming Center Management System
                </a>
            </h3>

            <small class="lang-text"
                   data-en="Modular Operations Management System for Gaming & Billiard Centers"
                   data-pl="Modułowy system zarządzania operacjami dla centrów gier i bilarda">
                Modular Operations Management System for Gaming & Billiard Centers
            </small>

            <p class="lang-text"
               data-en="Custom web-based platform developed to manage gaming and billiard center operations, including live availability, active session timers, reservations, billing, add-ons, daily revenue tracking, and scalable modules for billiard, snooker, PlayStation, gaming PCs, loyalty programs, tournaments, and online booking."
               data-pl="Niestandardowa platforma internetowa stworzona do zarządzania operacjami centrum gier i bilarda, obejmująca dostępność na żywo, aktywne liczniki sesji, rezerwacje, rozliczenia, dodatki, dzienne śledzenie przychodów oraz skalowalne moduły dla bilarda, snookera, PlayStation, komputerów gamingowych, programów lojalnościowych, turniejów i rezerwacji online.">
                Custom web-based platform developed to manage gaming and billiard center operations, including live availability, active session timers, reservations, billing, add-ons, daily revenue tracking, and scalable modules for billiard, snooker, PlayStation, gaming PCs, loyalty programs, tournaments, and online booking.
            </p>

            <a href="project-details.aspx?project=gaming-center-management-system"
               class="btn btn-light lang-text"
               data-en="Case Study"
               data-pl="Case Study">
                Case Study
            </a>
        </div>

        <div class="project-media">
            <img src="assets/img/Billiard Center_main.png" alt="Gaming Center Management System" />
        </div>
    </div>
</article>
                <!-- 2 -->
                <article class="slide">
                    <div class="project-card">
                        <div class="project-copy">
                            <span class="project-index">2 / 7</span>
<h3>
    <a href="https://safetyhorizonsystem.com/Login.aspx" target="_blank" rel="noopener noreferrer">
        Safety Horizon System
    </a>
</h3>
                            <small class="lang-text"
                                   data-en="Halal Certification Operations Management System"
                                   data-pl="System zarządzania operacjami certyfikacji halal">
                                Halal Certification Operations Management System
                            </small>

                            <p class="lang-text"
                               data-en="Custom internal platform developed to manage halal certificate issuance, product and client records, approval stages, PDF certificate generation, QR-based output, and role-based administrative control."
                               data-pl="Wewnętrzna platforma stworzona do zarządzania wydawaniem certyfikatów halal, rejestrami produktów i klientów, etapami zatwierdzania, generowaniem certyfikatów PDF, kodami QR oraz administracją opartą na rolach.">
                                Custom internal platform developed to manage halal certificate issuance, product and client records, approval stages, PDF certificate generation, QR-based output, and role-based administrative control.
                            </p>

<a href="project-details.aspx?project=safety-horizon-system" class="btn btn-light lang-text" data-en="Case Study" data-pl="Case Study">Case Study</a>

                        </div>

                        <div class="project-media">
                            <img src="assets/img/ECIsystem.jpg" alt="Safety Horizon System" />
                        </div>
                    </div>
                </article>

                <!-- 3 -->
                <article class="slide">
                    <div class="project-card">
                        <div class="project-copy">
                            <span class="project-index">3 / 7</span>
<h3>
    <a href="https://abcnews-247.com/" target="_blank" rel="noopener noreferrer">
        ABC News 24/7
    </a>
</h3>
                            <small class="lang-text"
                                   data-en="News Platform & Publishing Management System"
                                   data-pl="Platforma newsowa i system zarządzania publikacją">
                                News Platform & Publishing Management System
                            </small>

                            <p class="lang-text"
                               data-en="Custom news platform developed with a public-facing website and a structured internal publishing system for article management, media uploads, author and category control, advertising sections, role-based permissions, social media embeds, and section-based publishing through manual or intelligent content classification."
                               data-pl="Dedykowana platforma newsowa z publiczną stroną internetową i uporządkowanym wewnętrznym systemem publikacji do zarządzania artykułami, multimediami, autorami, kategoriami, sekcjami reklamowymi, uprawnieniami oraz publikacją opartą na ręcznej lub inteligentnej klasyfikacji treści.">
                                Custom news platform developed with a public-facing website and a structured internal publishing system for article management, media uploads, author and category control, advertising sections, role-based permissions, social media embeds, and section-based publishing through manual or intelligent content classification.
                            </p>

                            <a href="project-details.aspx?project=abc-news-247" class="btn btn-light lang-text" data-en="Case Study" data-pl="Case Study">Case Study</a>
                        </div>

                        <div class="project-media">
                            <img src="assets/img/abcnews.jpg" alt="ABC News 24/7" />
                        </div>
                    </div>
                </article>

                <!-- 4 -->
                <article class="slide">
                    <div class="project-card">
                        <div class="project-copy">
                            <span class="project-index">4 / 7</span>
                            <h3>MBR Award Evaluation System</h3>

                            <small class="lang-text"
                                   data-en="Award Evaluation, Eligibility & Archive Management System"
                                   data-pl="System oceny nagród, kwalifikacji i archiwizacji">
                                Award Evaluation, Eligibility & Archive Management System
                            </small>

                            <p class="lang-text"
                               data-en="Custom internal platform developed to manage participant registration, eligibility review, scoring and evaluation, exclusion tracking, archive management, and reporting through a structured administrative workflow."
                               data-pl="Dedykowana platforma wewnętrzna stworzona do zarządzania rejestracją uczestników, weryfikacją kwalifikacji, punktacją i oceną, śledzeniem wykluczeń, archiwizacją oraz raportowaniem w ramach uporządkowanego procesu administracyjnego.">
                                Custom internal platform developed to manage participant registration, eligibility review, scoring and evaluation, exclusion tracking, archive management, and reporting through a structured administrative workflow.
                            </p>

                            <a href="project-details.aspx?project=mbr-award-evaluation-system" class="btn btn-light lang-text" data-en="Case Study" data-pl="Case Study">Case Study</a>
                        </div>

                        <div class="project-media">
                            <img src="assets/img/mbr.jpg" alt="MBR Award Evaluation System" />
                        </div>
                    </div>
                </article>

                <!-- 5 -->
                <article class="slide">
                    <div class="project-card">
                        <div class="project-copy">
                            <span class="project-index">5 / 7</span>
                            <h3>Al Bayan Editorial Intake, Archiving & Performance Monitoring System</h3>

                            <small class="lang-text"
                                   data-en="Editorial Operations, Archiving & Performance Analytics System"
                                   data-pl="System operacji redakcyjnych, archiwizacji i analityki wydajności">
                                Editorial Operations, Archiving & Performance Analytics System
                            </small>

                            <p class="lang-text"
                               data-en="Custom internal software developed for Dubai Media – Al Bayan to support the Electronic Editorial Department by automating content intake, extracting article data automatically, identifying content type, assigning the appropriate section, detecting duplicates, organizing editor activity archives, and monitoring editorial productivity through performance indicators and visual reports."
                               data-pl="Dedykowane oprogramowanie wewnętrzne stworzone dla Dubai Media – Al Bayan w celu wsparcia działu redakcji elektronicznej poprzez automatyzację przyjmowania treści, automatyczne wyodrębnianie danych artykułów, identyfikację typu treści, przypisywanie właściwej sekcji, wykrywanie duplikatów, porządkowanie archiwum pracy redaktorów oraz monitorowanie wydajności redakcyjnej za pomocą wskaźników i raportów wizualnych.">
                                Custom internal software developed for Dubai Media – Al Bayan to support the Electronic Editorial Department by automating content intake, extracting article data automatically, identifying content type, assigning the appropriate section, detecting duplicates, organizing editor activity archives, and monitoring editorial productivity through performance indicators and visual reports.
                            </p>

                            <a href="project-details.aspx?project=al-bayan-editorial-system" class="btn btn-light lang-text" data-en="Case Study" data-pl="Case Study">Case Study</a>

                        </div>

                        <div class="project-media">
                            <img src="assets/img/Editorial Intake.jpg" alt="Al Bayan Editorial Intake, Archiving and Performance Monitoring System" />
                        </div>
                    </div>
                </article>

                <!-- 6 -->
                <article class="slide">
                    <div class="project-card">
                        <div class="project-copy">
                            <span class="project-index">6 / 7</span>
<h3>
    <a href="https://qahwaworld.com/" target="_blank" rel="noopener noreferrer">
     Qahwa World
    </a>
</h3>
                            <small class="lang-text"
                                   data-en="Specialized Coffee News Platform & Publishing Management System"
                                   data-pl="Specjalistyczna platforma newsowa o kawie i system zarządzania publikacją">
                                Specialized Coffee News Platform & Publishing Management System
                            </small>

                            <p class="lang-text"
                               data-en="Specialized digital news platform developed for coffee-focused content, with a public-facing website and a structured internal publishing system for article management, media uploads, category control, social media integration, and section-based publishing workflows."
                               data-pl="Specjalistyczna cyfrowa platforma newsowa stworzona dla treści związanych z kawą, z publiczną stroną internetową oraz uporządkowanym wewnętrznym systemem publikacji do zarządzania artykułami, multimediami, kategoriami, integracją z mediami społecznościowymi i publikacją opartą na sekcjach.">
                                Specialized digital news platform developed for coffee-focused content, with a public-facing website and a structured internal publishing system for article management, media uploads, category control, social media integration, and section-based publishing workflows.
                            </p>

                            <a href="project-details.aspx?project=qahwa-world" class="btn btn-light lang-text" data-en="Case Study" data-pl="Case Study">Case Study</a>
                        </div>

                        <div class="project-media">
                            <img src="assets/img/qahwa.jpg" alt="Qahwa World" />
                        </div>
                    </div>
                </article>

                <!-- 7 -->
                <article class="slide">
                    <div class="project-card">
                        <div class="project-copy">
                            <span class="project-index">7 / 7</span>
                            <h3>
    <a href="https://safetyhorizoneci.com/" target="_blank" rel="noopener noreferrer">
        Safety Horizon ECI
    </a>
</h3>
                           
                            <small class="lang-text"
                                   data-en="Corporate Website"
                                   data-pl="Strona korporacyjna">
                                Corporate Website
                            </small>

                            <p class="lang-text"
                               data-en="Professional corporate website developed for a global certification and compliance company to present its Halal and ISO services, training programs, international presence, team credibility, and business identity in a clear and trusted digital format."
                               data-pl="Profesjonalna strona korporacyjna stworzona dla globalnej firmy certyfikacyjnej i compliance, aby w przejrzystej i wiarygodnej formie prezentować usługi halal i ISO, programy szkoleniowe, międzynarodową obecność, wiarygodność zespołu oraz tożsamość biznesową.">
                                Professional corporate website developed for a global certification and compliance company to present its Halal and ISO services, training programs, international presence, team credibility, and business identity in a clear and trusted digital format.
                            </p>
                            <a href="project-details.aspx?project=safety-horizon-eci" class="btn btn-light lang-text" data-en="Case Study" data-pl="Case Study">Case Study</a>
                        </div>

                        <div class="project-media">
                            <img src="assets/img/eci.jpg" alt="Safety Horizon ECI" />
                        </div>
                    </div>
                </article>
            </div>
        </div>
    </div>
</section>

            <!-- ABOUT -->
            <section class="about-section section-space" id="about">
                <div class="container about-grid">
                    <div class="about-copy">
                        <h2 class="section-title lang-text" data-en="About" data-pl="O nas">About</h2>

                        <p class="about-lead lang-text"
                           data-en="Our-CS builds reliable software around real business operations. From web systems and admin panels to internal platforms and custom business tools, we create structured digital solutions that improve workflow, clarity, and day-to-day efficiency."
                           data-pl="Our-CS tworzy niezawodne oprogramowanie oparte na rzeczywistych operacjach biznesowych. Od systemów webowych i paneli administracyjnych po platformy wewnętrzne i niestandardowe narzędzia biznesowe — tworzymy uporządkowane rozwiązania cyfrowe, które usprawniają workflow, zwiększają przejrzystość i poprawiają codzienną efektywność.">
Our-CS builds reliable software around real business operations. From web systems and admin panels to internal platforms and custom business tools, we create structured digital solutions that improve workflow, clarity, and day-to-day efficiency.

                        </p>

                        <p class="lang-text"
                           data-en="We combine technical execution with practical thinking, focusing on clean design, strong architecture, and long-term business value."
                           data-pl="Łączymy solidne wykonanie techniczne z praktycznym podejściem, koncentrując się na czystym designie, mocnej architekturze i długoterminowej wartości biznesowej.">
We combine technical execution with practical thinking, focusing on clean design, strong architecture, and long-term business value.
                        </p>


                    </div>

                    <div class="about-media">
                        <img src="assets/img/about.jpg" alt="About us" />
                    </div>
                </div>
            </section>

            <!-- TEAM BANNER -->
            <%--<section class="team-banner" id="team">
                <div class="team-overlay">
                    <h2 class="lang-text" data-en="Our team" data-pl="Nasz zespół">Our team</h2>
                </div>
            </section>--%>

            <!-- MAP -->
            <section class="map-section section-space" id="MapofClients">
    <div class="container">
        <div class="map-box">

            <img src="assets/img/map-clients.png" alt="Clients Map" class="map-image" />

            <!-- MAP TITLE INSIDE IMAGE -->
            <div class="map-caption" >
                <h2 class="section-title lang-text"
                    data-en="Map of Clients"
                    data-pl="Mapa klientów">
                    Map of Clients
                </h2>
            </div>

            <!-- MARKERS -->
            <div class="map-markers">

                <!-- Ireland -->
                <div class="map-marker" style="left: 44%; top: 27%;">
                    <span class="map-tooltip">
                        <strong>Safety Horizon ECI</strong>
                        <small>Ireland</small>
                    </span>
                </div>

                 <!-- Canada -->
 <div class="map-marker" style="left: 15%; top: 20%;">
     <span class="map-tooltip">
         <strong>Beacon Light School</strong>
         <small>Canada</small>
     </span>
 </div>

                <!-- Poland -->
                <div class="map-marker" style="left:  55%; top: 22%;">
                    <span class="map-tooltip">
                        <strong>ABCNews-247</strong>
                        <small>Poland</small>
                    </span>
                </div>

                <!-- France -->
                <div class="map-marker" style="left: 47%; top: 27%;">
                    <span class="map-tooltip">
                        <strong>Qahwa World</strong>
                        <small>France</small>
                    </span>
                </div>

                <!-- Belgium -->
                <div class="map-marker" style="left: 48%; top: 24%;">
                    <span class="map-tooltip">
                        <strong>Safety Horizon ECI</strong>
                        <small>Belgium</small>
                    </span>
                </div>

                <!-- Spain -->
                <div class="map-marker" style="left: 45%; top: 30%;">
                    <span class="map-tooltip">
                        <strong>Safety Horizon ECI</strong>
                        <small>Spain</small>
                    </span>
                </div>

                <!-- Latvia / Lithuania -->
                <div class="map-marker" style="left:  57%; top: 18%;">
                    <span class="map-tooltip">
                        <strong>Safety Horizon ECI</strong>
                        <small>Latvia / Lithuania</small>
                    </span>
                </div>

                <!-- Saudi Arabia -->
                <div class="map-marker" style="left: 61%; top: 40%;">
                    <span class="map-tooltip">
                        <strong>Safety Horizon ECI</strong>
                        <small>Saudi Arabia</small>
                    </span>
                </div>

                <!-- UAE -->
                <div class="map-marker" style="left: 63%; top: 40%;">
                    <span class="map-tooltip">
                        <strong>Dubai Sports Council</strong>
                                 <strong>Dubai Media Incorporated</strong>

                        <small>UAE</small>
                    </span>
                </div>


  
                

                <!-- Egypt -->
                <div class="map-marker" style="left: 56%; top: 40%;">
                    <span class="map-tooltip">
                        <strong>Safety Horizon ECI</strong>
                        <small>Egypt</small>
                    </span>
                </div>

                <!-- Netherlands -->
                <div class="map-marker" style="left: 48%; top: 22%;">
                    <span class="map-tooltip">
                        <strong>Safety Horizon ECI</strong>
                        <small>Netherlands</small>
                    </span>
                </div>

            </div>
        </div>
    </div>
</section>

            <!-- CONTACT INTRO -->
            <section class="contact-intro section-space" id="contact">
                <div class="container">
                    <div class="contact-intro-card">
                        <div class="contact-icon">
                            <i class="fa-solid fa-rocket"></i>
                        </div>

                        <div class="contact-copy">
                            <h2 class="lang-text" data-en="Let's talk!" data-pl="Porozmawiajmy!">Let's talk!</h2>

                            <p class="lang-text"
                               data-en="We help businesses build the right software solution for their operations, workflows, and long-term goals. Book a consultation and tell us what you need."
                               data-pl="Pomagamy firmom tworzyć odpowiednie rozwiązania programistyczne wspierające ich operacje, procesy i długoterminowe cele. Umów konsultację i powiedz nam, czego potrzebujesz.">
We help businesses build the right software solution for their operations, workflows, and long-term goals. Book a consultation and tell us what you need.
                            </p>

<a href="consultation.aspx" class="link-arrow big lang-text" data-en="Contact Us" data-pl="Skontaktuj się">Contact Us</a>

                        </div>
                    </div>
                </div>
            </section>

          
        </main>

        <footer class="site-footer">
            <div class="container">
                <div class="footer-top">
                    <div class="footer-cta">
                        <div class="footer-cta-inner">
                            <h3 class="lang-text"
                                data-en="What software solution will best support your business goals?"
                                data-pl="Jakie rozwiązanie programistyczne najlepiej wesprze cele Twojego biznesu?">
                                What software solution will best support your business goals?
                            </h3>

                            <a href="consultation.aspx" class="btn btn-primary lang-text" data-en="Free Tech Consultation" data-pl="Bezpłatna konsultacja techniczna">
                                Free Tech Consultation
                            </a>
                        </div>
                    </div>

                    <div class="footer-columns">
    <div class="footer-col">
    <h4>Our-CS</h4>

    <p class="lang-text"
       data-en="Business Systems, Admin Panels & Custom Software Development"
       data-pl="Systemy biznesowe, panele administracyjne i dedykowane oprogramowanie">
        Business Systems, Admin Panels & Custom Software Development
    </p>

    <p class="lang-text"
       data-en="Poland & International"
       data-pl="Polska i rynki międzynarodowe">
        Poland & International
    </p>

    <div class="home-footer-contact">
        <a href="tel:+48721143224" class="home-footer-contact-line">
            <i class="fa-solid fa-phone"></i>
            <span>+48 721 143 224</span>
        </a>

        <a href="tel:+971509229389" class="home-footer-contact-line">
            <i class="fa-solid fa-phone"></i>
            <span>+971 50 922 9389</span>
        </a>

        <a href="https://wa.me/48721143224" target="_blank" rel="noopener" class="home-footer-contact-line">
            <i class="fa-brands fa-whatsapp"></i>
            <span class="lang-text"
                  data-en="WhatsApp Poland"
                  data-pl="WhatsApp Polska">
                WhatsApp Poland
            </span>
        </a>

        <a href="https://wa.me/971509229389" target="_blank" rel="noopener" class="home-footer-contact-line">
            <i class="fa-brands fa-whatsapp"></i>
            <span class="lang-text"
                  data-en="WhatsApp UAE"
                  data-pl="WhatsApp ZEA">
                WhatsApp UAE
            </span>
        </a>
    </div>
</div>

    <div class="footer-col">
        <h4 class="lang-text" data-en="Services" data-pl="Usługi">Services</h4>

        <a href="#services"
           class="lang-text"
           data-en="Business Systems"
           data-pl="Systemy biznesowe">
            Business Systems
        </a>

        <a href="#services"
           class="lang-text"
           data-en="Admin Panels"
           data-pl="Panele administracyjne">
            Admin Panels
        </a>

        <a href="#services"
           class="lang-text"
           data-en="Internal Platforms"
           data-pl="Platformy wewnętrzne">
            Internal Platforms
        </a>

        <a href="#services"
           class="lang-text"
           data-en="Workflow Automation"
           data-pl="Automatyzacja workflow">
            Workflow Automation
        </a>

        <a href="#services"
           class="lang-text"
           data-en="Custom Web Development"
           data-pl="Dedykowany rozwój stron i systemów webowych">
            Custom Web Development
        </a>
    </div>

    <div class="footer-col">
        <h4 class="lang-text" data-en="Solutions" data-pl="Rozwiązania">Solutions</h4>

        <a href="#projects"
           class="lang-text"
           data-en="Certification Systems"
           data-pl="Systemy certyfikacyjne">
            Certification Systems
        </a>

        <a href="#projects"
           class="lang-text"
           data-en="Publishing Platforms"
           data-pl="Platformy publikacyjne">
            Publishing Platforms
        </a>

        <a href="#projects"
           class="lang-text"
           data-en="Evaluation Systems"
           data-pl="Systemy oceny i kwalifikacji">
            Evaluation Systems
        </a>

        <a href="#projects"
           class="lang-text"
           data-en="Corporate Websites"
           data-pl="Strony korporacyjne">
            Corporate Websites
        </a>

        <a href="#projects"
           class="lang-text"
           data-en="Editorial Workflow Tools"
           data-pl="Narzędzia workflow redakcyjnego">
            Editorial Workflow Tools
        </a>
    </div>
</div>
                </div>

                <div class="footer-bottom">
   

<p class="copyright lang-text"
   data-en="© 2026 Our-CS. All rights reserved."
   data-pl="© 2026 Our-CS. Wszelkie prawa zastrzeżone.">
    © 2026 Our-CS. All rights reserved.
</p>
</div>
            </div>
        </footer>
    </form>

    <script src="assets/js/home.js"></script>
</body>
</html>

