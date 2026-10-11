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

    <title>Custom Business Software &amp; Workflow Systems | OUR-CS</title>

    <meta name="description" content="OUR-CS builds custom business applications, internal platforms, and workflow systems around real operational requirements." />
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
                    <a href="#projects" class="nav-link lang-text" data-en="Selected Work" data-pl="Realizacje">Selected Work</a>
                    <a href="#approach" class="nav-link lang-text" data-en="Approach" data-pl="Podejście">Approach</a>
                    <a href="#reviews" class="nav-link lang-text" data-en="Client Feedback" data-pl="Opinie klientów">Client Feedback</a>
                    <a href="#MapofClients" class="nav-link lang-text" data-en="Industries &amp; Use Cases" data-pl="Branże i zastosowania">Industries &amp; Use Cases</a>
                    <a href="#contact" class="nav-link lang-text" data-en="Contact" data-pl="Kontakt">Contact</a>
                </nav>

                <div class="header-actions">
                    <a href="estimate-project.aspx" class="btn btn-primary lang-text" data-en="Request an Estimate" data-pl="Poproś o wycenę">Request an Estimate</a>

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
        data-en="Software Built Around How Your Business Works"
        data-pl="Oprogramowanie dopasowane do sposobu działania Twojej firmy">
        Software Built Around How Your Business Works
    </h1>

    <h2 class="hero-subtitle lang-text"
        data-en="Custom business applications, internal platforms, and workflow automation for organizations that need more than off-the-shelf tools."
        data-pl="Dedykowane aplikacje biznesowe, platformy wewnętrzne i automatyzacja procesów dla organizacji, którym nie wystarczają gotowe narzędzia.">
        Custom business applications, internal platforms, and workflow automation for organizations that need more than off-the-shelf tools.
    </h2>

    <p class="hero-text lang-text"
       data-en="We turn operational requirements into practical digital systems—connecting the records, approvals, content, and processes that keep a business running. Our focus is clear architecture, purposeful functionality, and software you can work with."
       data-pl="Przekładamy wymagania operacyjne na praktyczne systemy cyfrowe, które łączą dane, akceptacje, treści i procesy niezbędne do działania firmy. Stawiamy na przejrzystą architekturę, przemyślane funkcje i oprogramowanie, z którego można sprawnie korzystać.">
        We turn operational requirements into practical digital systems—connecting the records, approvals, content, and processes that keep a business running. Our focus is clear architecture, purposeful functionality, and software you can work with.
    </p><div class="hero-actions" style="display:flex;gap:1rem;flex-wrap:wrap;margin-top:1.5rem;"><a href="/consultation/" class="btn btn-primary lang-text" data-en="Discuss Your Project" data-pl="Omówmy Twój projekt">Discuss Your Project</a><a href="#projects" class="btn btn-light lang-text" data-en="Explore Selected Work" data-pl="Zobacz wybrane realizacje">Explore Selected Work</a></div></div>

                    <div class="hero-visual">
                        <img src="assets/img/hero-illustration.png" alt="Illustration representing software engineering and digital workflows" />
                    </div>

                    <div class="hero-stats">
                        <div class="stat-card">
                            <strong>Understand</strong>
                            <span class="lang-text" data-en="Start with the real operational problem." data-pl="Zacznij od rzeczywistego problemu operacyjnego.">Start with the real operational problem.</span>
                        </div>
                        <div class="stat-card">
                            <strong>Engineer</strong>
                            <span class="lang-text" data-en="Build around clear requirements and workflows." data-pl="Buduj w oparciu o jasne wymagania i procesy.">Build around clear requirements and workflows.</span>
                        </div>
                        <div class="stat-card">
                            <strong>Evolve</strong>
                            <span class="lang-text" data-en="Improve what the business needs next." data-pl="Rozwijaj to, czego firma potrzebuje dalej.">Improve what the business needs next.</span>
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
        <h3 class="lang-text" data-en="Custom Business Systems" data-pl="Dedykowane systemy biznesowe">Custom Business Systems</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-building"></i>
        <h3 class="lang-text" data-en="Internal Web Platforms" data-pl="Wewnętrzne platformy internetowe">Internal Web Platforms</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-table-columns"></i>
        <h3 class="lang-text" data-en="Workflow Automation" data-pl="Automatyzacja procesów">Workflow Automation</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-sitemap"></i>
        <h3 class="lang-text" data-en="Admin &amp; Operations Panels" data-pl="Panele administracyjne i operacyjne">Admin &amp; Operations Panels</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-newspaper"></i>
        <h3 class="lang-text" data-en="Publishing &amp; CMS Platforms" data-pl="Platformy publikacyjne i CMS">Publishing &amp; CMS Platforms</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-database"></i>
        <h3 class="lang-text" data-en="Data-Driven Applications" data-pl="Aplikacje oparte na danych">Data-Driven Applications</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-gears"></i>
        <h3 class="lang-text" data-en="Certification Workflows" data-pl="Procesy certyfikacyjne">Certification Workflows</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-file-circle-check"></i>
        <h3 class="lang-text" data-en="Evaluation Systems" data-pl="Systemy oceny">Evaluation Systems</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-file-pdf"></i>
        <h3 class="lang-text" data-en="Document &amp; PDF Automation" data-pl="Automatyzacja dokumentów i PDF">Document &amp; PDF Automation</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-bug"></i>
        <h3 class="lang-text" data-en="API &amp; Systems Integration" data-pl="Integracja API i systemów">API &amp; Systems Integration</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-magnifying-glass-chart"></i>
        <h3 class="lang-text" data-en="System Improvement" data-pl="Usprawnianie systemów">System Improvement</h3>
    </div>

    <div class="service-card">
        <i class="fa-solid fa-screwdriver-wrench"></i>
        <h3 class="lang-text" data-en="Maintenance &amp; Support" data-pl="Utrzymanie i wsparcie">Maintenance &amp; Support</h3>
    </div>
</div>

                    <div class="services-side"><p class="section-kicker lang-text" data-en="What We Build" data-pl="Co tworzymy">What We Build</p><h2 class="section-title lang-text" data-en="Software for Workflows That Matter." data-pl="Oprogramowanie dla ważnych procesów.">Software for Workflows That Matter.</h2><h3 class="section-subtitle lang-text" data-en="Practical systems for real operational needs." data-pl="Praktyczne systemy odpowiadające rzeczywistym potrzebom operacyjnym.">Practical systems for real operational needs.</h3><p class="lang-text" data-en="When critical work depends on spreadsheets, repetitive manual steps, disconnected records, or software that does not match the process, a tailored system can make operations easier to understand and manage." data-pl="Gdy ważna praca zależy od arkuszy kalkulacyjnych, powtarzalnych czynności, rozproszonych danych lub oprogramowania niedopasowanego do procesu, dedykowany system może ułatwić zrozumienie i prowadzenie operacji.">When critical work depends on spreadsheets, repetitive manual steps, disconnected records, or software that does not match the process, a tailored system can make operations easier to understand and manage.</p><p class="lang-text" data-en="OUR-CS designs and develops custom web-based solutions that organize business information, define operational steps, and give the right users access to the tools and views they need." data-pl="OUR-CS projektuje i rozwija dedykowane rozwiązania internetowe, które porządkują informacje biznesowe, definiują etapy pracy i zapewniają odpowiednim użytkownikom dostęp do potrzebnych narzędzi i widoków.">OUR-CS designs and develops custom web-based solutions that organize business information, define operational steps, and give the right users access to the tools and views they need.</p></div></div>
                </div>
            </section>

            <!-- ENGINEERING APPROACH -->
<section class="founder-message-section section-space" id="approach">
    <div class="container">
        <h2 class="center-title text-left lang-text"
            data-en="Understand the Work. Then Engineer the System."
            data-pl="Nasze podejście inżynierskie">
            Our Engineering Approach
        </h2>
        <article class="founder-message-card">
            <div class="founder-message-grid">
                <div class="founder-message-copy">
                    <p class="lang-text" data-en="Useful software starts with a correct understanding of the process. Before defining screens or features, we identify who uses the system, what information moves through it, where decisions are made, and which rules cannot be compromised." data-pl="Dobre oprogramowanie zaczyna się od właściwego zrozumienia procesu. Zanim określimy ekrany i funkcje, ustalamy, kto korzysta z systemu, jakie informacje przez niego przepływają, gdzie zapadają decyzje i których reguł nie można naruszyć.">Useful software starts with a correct understanding of the process. Before defining screens or features, we identify who uses the system, what information moves through it, where decisions are made, and which rules cannot be compromised.</p>
                    <p class="lang-text" data-en="Development follows a clear structure: model the data, define responsibilities and permissions, implement essential workflows, test real scenarios, and refine the result against the original need." data-pl="Prace przebiegają według jasnej struktury: modelujemy dane, określamy odpowiedzialności i uprawnienia, wdrażamy kluczowe procesy, testujemy rzeczywiste scenariusze i dopracowujemy rozwiązanie zgodnie z pierwotną potrzebą.">Development follows a clear structure: model the data, define responsibilities and permissions, implement essential workflows, test real scenarios, and refine the result against the original need.</p>
                    <ul class="approach-principles"><li class="lang-text" data-en="Clarity before complexity." data-pl="Przejrzystość przed złożonością.">Clarity before complexity.</li><li class="lang-text" data-en="Accountability for technical decisions." data-pl="Odpowiedzialność za decyzje techniczne.">Accountability for technical decisions.</li><li class="lang-text" data-en="Maintainability beyond launch." data-pl="Łatwość utrzymania także po uruchomieniu.">Maintainability beyond launch.</li></ul><a href="#projects" class="link-arrow lang-text" data-en="See the Work" data-pl="Zobacz realizacje">See the Work</a>
                </div>
                <div class="founder-message-media">
                    <div class="founder-message-visual">
                        <i class="fa-solid fa-diagram-project" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>

<!-- REVIEWS --><section class="reviews-section section-space" id="reviews"><div class="container"><h2 class="section-title lang-text" data-en="Selected Project Experience" data-pl="Wybrane doświadczenia projektowe">Selected Project Experience</h2><p class="lang-text" data-en="Selected projects span education technology, certification operations, editorial workflows, specialist publishing and venue management. Each case study describes the operational context and the scope of the work." data-pl="Wybrane projekty obejmują technologie edukacyjne, procesy certyfikacyjne, pracę redakcyjną, publikacje specjalistyczne i zarządzanie lokalami. Każdy opis przedstawia kontekst operacyjny i zakres prac.">Selected projects span education technology, certification operations, editorial workflows, specialist publishing and venue management. Each case study describes the operational context and the scope of the work.</p><div class="slider-box js-slider reviews-slider" data-slider="reviews"><div class="slides"><article class="slide active"><div class="review-showcase"><div class="review-panel"><div class="review-content"><p class="lang-text" data-en="Academic structures, learning outcomes, assessments and reporting organized within a school-focused platform." data-pl="Struktury akademickie, efekty uczenia się, oceny i raportowanie uporządkowane w platformie dla szkół.">Academic structures, learning outcomes, assessments and reporting organized within a school-focused platform.</p><div class="review-author"><h4 class="lang-text" data-en="Education Technology" data-pl="Technologie edukacyjne">Education Technology</h4><span class="lang-text" data-en="Selected work area" data-pl="Obszar realizacji">Selected work area</span></div></div></div></div></article><article class="slide"><div class="review-showcase"><div class="review-panel"><div class="review-content"><p class="lang-text" data-en="Structured records, eligibility checks, approval states and controlled document workflows." data-pl="Uporządkowane rekordy, weryfikacja kwalifikacji, stany zatwierdzania i kontrolowane procesy dokumentowe.">Structured records, eligibility checks, approval states and controlled document workflows.</p><div class="review-author"><h4 class="lang-text" data-en="Certification Operations" data-pl="Procesy certyfikacyjne">Certification Operations</h4><span class="lang-text" data-en="Selected work area" data-pl="Obszar realizacji">Selected work area</span></div></div></div></div></article><article class="slide"><div class="review-showcase"><div class="review-panel"><div class="review-content"><p class="lang-text" data-en="Publishing websites and internal editorial tools for content, media, categories and workflow organization." data-pl="Serwisy publikacyjne i wewnętrzne narzędzia redakcyjne do organizacji treści, mediów, kategorii i procesów.">Publishing websites and internal editorial tools for content, media, categories and workflow organization.</p><div class="review-author"><h4 class="lang-text" data-en="Publishing & Editorial" data-pl="Publikacje i redakcja">Publishing & Editorial</h4><span class="lang-text" data-en="Selected work area" data-pl="Obszar realizacji">Selected work area</span></div></div></div></div></article><article class="slide"><div class="review-showcase"><div class="review-panel"><div class="review-content"><p class="lang-text" data-en="Operational views for bookable resources, timed sessions, reservations and billing." data-pl="Widoki operacyjne do obsługi zasobów, sesji czasowych, rezerwacji i rozliczeń.">Operational views for bookable resources, timed sessions, reservations and billing.</p><div class="review-author"><h4 class="lang-text" data-en="Venue Operations" data-pl="Obsługa lokali">Venue Operations</h4><span class="lang-text" data-en="Selected work area" data-pl="Obszar realizacji">Selected work area</span></div></div></div></div></article></div><div class="review-nav"><button type="button" class="review-nav-btn prev" data-action="prev" aria-label="Previous item"><i class="fa-solid fa-arrow-left"></i></button><div class="review-counter"><span class="review-current">1</span>/<span class="review-total">4</span></div><button type="button" class="review-nav-btn next" data-action="next" aria-label="Next item"><i class="fa-solid fa-arrow-right"></i></button></div></div></div></section><!-- PROJECTS -->
<section class="projects-section section-space" id="projects">
    <div class="container">
        <h2 class="section-title lang-text" data-en="Selected Work" data-pl="Realizacje">Selected Work</h2>

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
                        <h2 class="section-title lang-text" data-en="About OUR-CS" data-pl="O OUR-CS">About OUR-CS</h2>

                        <p class="about-lead lang-text" data-en="OUR-CS is a Poland-based software company focused on custom business systems, workflow-driven applications, and specialized digital platforms." data-pl="OUR-CS to polska firma programistyczna tworząca dedykowane systemy biznesowe, aplikacje oparte na procesach i wyspecjalizowane platformy cyfrowe.">OUR-CS is a Poland-based software company focused on custom business systems, workflow-driven applications, and specialized digital platforms.</p>

                        <p class="lang-text" data-en="The company builds on the direct software development experience of its founder, who personally developed the projects featured in this portfolio. That work includes independent professional engagements and projects undertaken through OUR-CS." data-pl="Firma korzysta z bezpośredniego doświadczenia programistycznego swojego założyciela, który osobiście opracował projekty przedstawione w portfolio. Obejmują one zarówno niezależne realizacje zawodowe, jak i projekty prowadzone w ramach OUR-CS.">The company builds on the direct software development experience of its founder, who personally developed the projects featured in this portfolio. That work includes independent professional engagements and projects undertaken through OUR-CS.</p><p class="lang-text" data-en="The objective is practical: understand the operating environment, define a sensible technical approach, and build software that people can use, manage, and improve." data-pl="Cel jest praktyczny: zrozumieć środowisko pracy, określić rozsądne podejście techniczne i tworzyć oprogramowanie, z którego można korzystać, którym można zarządzać i które można rozwijać.">The objective is practical: understand the operating environment, define a sensible technical approach, and build software that people can use, manage, and improve.</p>


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
            <section class="map-section section-space" id="MapofClients"><div class="container"><div class="map-box"><img src="/assets/img/map-clients.png" alt="Decorative world map illustration; no client offices or locations are represented" class="map-image" /><div class="map-caption"><h2 class="section-title lang-text" data-en="Industries &amp; Use Cases" data-pl="Branże i zastosowania">Industries &amp; Use Cases</h2><p class="lang-text" data-en="The portfolio includes work in education technology, certification workflows, editorial and publishing platforms, evaluation systems, and venue operations. This illustration is decorative and does not identify office or client locations." data-pl="Portfolio obejmuje różne obszary działalności: edukację, certyfikację, media, ocenę i obsługę lokali. Mapa ma charakter ilustracyjny i nie wskazuje biur OUR-CS ani zweryfikowanych lokalizacji klientów.">The portfolio covers different operating contexts, including education, certification, media, evaluation and venue operations. The map is illustrative and does not identify OUR-CS offices or verified client locations.</p></div></div></div></section>

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

