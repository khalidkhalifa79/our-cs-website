<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="project-details.aspx.vb" Inherits="Our_CS.project_details" %>


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

    <title><%: CurrentProject.TitleEn %> | Our-CS Case Study</title>

    <meta name="description" content="<%: CurrentProject.SubtitleEn %>" />
    <meta name="robots" content="index, follow" />

    <link rel="canonical" href="https://our-cs.com/project-details.aspx?project=<%: CurrentProject.Slug %>" />

    <meta property="og:title" content="<%: CurrentProject.TitleEn %> | Our-CS Case Study" />
    <meta property="og:description" content="<%: CurrentProject.SubtitleEn %>" />
    <meta property="og:url" content="https://our-cs.com/project-details.aspx?project=<%: CurrentProject.Slug %>" />
    <meta property="og:type" content="article" />
    <meta property="og:site_name" content="Our-CS" />
    <meta property="og:image" content="https://our-cs.com/<%: CurrentProject.HeroImage %>" />

    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="<%: CurrentProject.TitleEn %> | Our-CS Case Study" />
    <meta name="twitter:description" content="<%: CurrentProject.SubtitleEn %>" />
    <meta name="twitter:image" content="https://our-cs.com/<%: CurrentProject.HeroImage %>" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <link rel="stylesheet" href="assets/css/home.css" />
    <link rel="stylesheet" href="assets/css/project-details.css" />
</head>
<body class="project-details-page">
    <form id="form1" runat="server">

        <!-- HEADER -->
        <header class="site-header">
            <div class="container header-inner">
                <a href="home.aspx#hero" class="logo-wrap">
                    <img src="assets/img/logo.png" alt="Our-CS Logo" class="logo-img" />
                </a>

                <nav class="main-nav" id="mainNav">
                    <a href="home.aspx#services" class="nav-link lang-text" data-en="Services" data-pl="Usługi">Services</a>
                    <a href="home.aspx#projects" class="nav-link active lang-text" data-en="Our Projects" data-pl="Nasze projekty">Our Projects</a>
                    <a href="home.aspx#about" class="nav-link lang-text" data-en="Overview" data-pl="Przegląd">Overview</a>
                    <a href="home.aspx#reviews" class="nav-link lang-text" data-en="Reviews" data-pl="Opinie">Reviews</a>
                    <a href="home.aspx#MapofClients" class="nav-link lang-text" data-en="Map of Clients" data-pl="Mapa klientów">Map of Clients</a>
                    <a href="consultation.aspx" class="nav-link lang-text" data-en="Contact" data-pl="Kontakt">Contact</a>
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

        <main class="project-details-main">

            <!-- HERO -->
            <section class="project-hero-section">
                <div class="container">
                    <div class="project-hero-box">
                        <img src="<%= ResolveUrl(CurrentProject.HeroImage) %>"
                             alt="<%: CurrentProject.HeroImageAltEn %>"
                             class="project-hero-image" />

                        <div class="project-hero-caption">

                            <span class="project-hero-kicker lang-text"
                                  data-en="<%: CurrentProject.CategoryEn %>"
                                  data-pl="<%: CurrentProject.CategoryPl %>">
                                <%: CurrentProject.CategoryEn %>
                            </span>

                            <h1 class="lang-text"
                                data-en="<%: CurrentProject.TitleEn %>"
                                data-pl="<%: CurrentProject.TitlePl %>">
                                <%: CurrentProject.TitleEn %>
                            </h1>

                            <p class="lang-text"
                               data-en="<%: CurrentProject.SubtitleEn %>"
                               data-pl="<%: CurrentProject.SubtitlePl %>">
                                <%: CurrentProject.SubtitleEn %>
                            </p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- QUICK META -->
            <section class="project-meta-strip">
                <div class="container">
                    <div class="project-meta-grid">
                        <div class="project-meta-item">
                            <small class="lang-text" data-en="Client" data-pl="Klient">Client</small>
                            <strong class="lang-text"
                                    data-en="<%: CurrentProject.ClientEn %>"
                                    data-pl="<%: CurrentProject.ClientPl %>">
                                <%: CurrentProject.ClientEn %>
                            </strong>
                        </div>

                        <div class="project-meta-item">
                            <small class="lang-text" data-en="Location" data-pl="Lokalizacja">Location</small>
                            <strong class="lang-text"
                                    data-en="<%: CurrentProject.LocationEn %>"
                                    data-pl="<%: CurrentProject.LocationPl %>">
                                <%: CurrentProject.LocationEn %>
                            </strong>
                        </div>

                        <div class="project-meta-item">
                            <small class="lang-text" data-en="Solution Type" data-pl="Typ rozwiązania">Solution Type</small>
                            <strong class="lang-text"
                                    data-en="<%: CurrentProject.SolutionTypeEn %>"
                                    data-pl="<%: CurrentProject.SolutionTypePl %>">
                                <%: CurrentProject.SolutionTypeEn %>
                            </strong>
                        </div>

                        <div class="project-meta-item">
                            <small class="lang-text" data-en="Platform Type" data-pl="Typ platformy">Platform Type</small>
                            <strong class="lang-text"
                                    data-en="<%: CurrentProject.PlatformTypeEn %>"
                                    data-pl="<%: CurrentProject.PlatformTypePl %>">
                                <%: CurrentProject.PlatformTypeEn %>
                            </strong>
                        </div>
                    </div>
                </div>
            </section>

            <!-- ABOUT CLIENT + OVERVIEW -->
            <section class="project-overview-section">
                <div class="container">
                    <div class="project-overview-grid">

                        <div class="project-main-flow">

                            <div class="project-step-copy project-copy-block" data-step="1">
                                <h2 class="lang-text" data-en="About the Client" data-pl="O kliencie">About the Client</h2>

                                <p class="lang-text"
                                   data-en="<%: CurrentProject.AboutClientEn %>"
                                   data-pl="<%: CurrentProject.AboutClientPl %>">
                                    <%: CurrentProject.AboutClientEn %>
                                </p>
                            </div>

                            <div class="project-step-copy project-copy-block" data-step="2">
                                <h2 class="lang-text" data-en="Project Overview" data-pl="Opis projektu">Project Overview</h2>

                                <h3 class="lang-text"
                                    data-en="<%: CurrentProject.OverviewHeadingEn %>"
                                    data-pl="<%: CurrentProject.OverviewHeadingPl %>">
                                    <%: CurrentProject.OverviewHeadingEn %>
                                </h3>

                                <p class="lang-text"
                                   data-en="<%: CurrentProject.OverviewBodyEn %>"
                                   data-pl="<%: CurrentProject.OverviewBodyPl %>">
                                    <%: CurrentProject.OverviewBodyEn %>
                                </p>
                            </div>

                        </div>

                        <aside class="project-info-card">
                            <div class="project-info-brand">
                                <span class="lang-text"
                                      data-en="<%: CurrentProject.TitleEn %>"
                                      data-pl="<%: CurrentProject.TitlePl %>">
                                    <%: CurrentProject.TitleEn %>
                                </span>
                            </div>

                            <div class="project-info-row">
                                <small class="lang-text" data-en="Client" data-pl="Klient">Client</small>
                                <strong class="lang-text"
                                        data-en="<%: CurrentProject.ClientEn %>"
                                        data-pl="<%: CurrentProject.ClientPl %>">
                                    <%: CurrentProject.ClientEn %>
                                </strong>
                            </div>

                            <div class="project-info-row">
                                <small class="lang-text" data-en="Location" data-pl="Lokalizacja">Location</small>
                                <strong class="lang-text"
                                        data-en="<%: CurrentProject.LocationEn %>"
                                        data-pl="<%: CurrentProject.LocationPl %>">
                                    <%: CurrentProject.LocationEn %>
                                </strong>
                            </div>

                            <div class="project-info-row">
                                <small class="lang-text" data-en="Industry" data-pl="Branża">Industry</small>
                                <strong class="lang-text"
                                        data-en="<%: CurrentProject.IndustryEn %>"
                                        data-pl="<%: CurrentProject.IndustryPl %>">
                                    <%: CurrentProject.IndustryEn %>
                                </strong>
                            </div>

                            <div class="project-info-row">
                                <small class="lang-text" data-en="Project Scope" data-pl="Zakres projektu">Project Scope</small>
                                <strong class="lang-text"
                                        data-en="<%: CurrentProject.ProjectScopeEn %>"
                                        data-pl="<%: CurrentProject.ProjectScopePl %>">
                                    <%: CurrentProject.ProjectScopeEn %>
                                </strong>
                            </div>

                            <div class="project-info-row">
                                <small class="lang-text" data-en="Region" data-pl="Region">Region</small>
                                <strong class="lang-text"
                                        data-en="<%: CurrentProject.RegionEn %>"
                                        data-pl="<%: CurrentProject.RegionPl %>">
                                    <%: CurrentProject.RegionEn %>
                                </strong>
                            </div>

                            <div class="project-info-row">
                                <small class="lang-text" data-en="Live Preview" data-pl="Podgląd na żywo">Live Preview</small>

                                <% If Not String.IsNullOrWhiteSpace(CurrentProject.LiveUrl) Then %>
                                    <a href="<%: CurrentProject.LiveUrl %>" target="_blank" rel="noopener noreferrer" class="project-live-link">
                                        <span class="lang-text"
                                              data-en="<%: CurrentProject.LiveLabelEn %>"
                                              data-pl="<%: CurrentProject.LiveLabelPl %>">
                                            <%: CurrentProject.LiveLabelEn %>
                                        </span>
                                        <i class="fa-solid fa-arrow-up-right-from-square"></i>
                                    </a>
                                <% Else %>
                                    <strong class="lang-text"
                                            data-en="<%: CurrentProject.LiveLabelEn %>"
                                            data-pl="<%: CurrentProject.LiveLabelPl %>">
                                        <%: CurrentProject.LiveLabelEn %>
                                    </strong>
                                <% End If %>
                            </div>
                        </aside>
                    </div>
                </div>
            </section>

            <!-- CHALLENGE -->
            <section class="project-split-section">
                <div class="container">
                    <div class="project-split-grid">
                        <div class="project-step-copy split-step-copy" data-step="3">
                            <h2 class="lang-text" data-en="The Challenge" data-pl="Wyzwanie">The Challenge</h2>

                            <p class="lang-text"
                               data-en="<%: CurrentProject.ChallengeBodyEn %>"
                               data-pl="<%: CurrentProject.ChallengeBodyPl %>">
                                <%: CurrentProject.ChallengeBodyEn %>
                            </p>
                        </div>

                        <div class="project-split-image">
                            <img src="<%= ResolveUrl(CurrentProject.ChallengeImage) %>"
                                 alt="<%: CurrentProject.ChallengeImageAltEn %>" />
                        </div>
                    </div>
                </div>
            </section>

            <!-- SOLUTION -->
            <section class="project-split-section project-split-section-alt">
                <div class="container">
                    <div class="project-split-grid reverse">
                        <div class="project-split-image">
                            <img src="<%= ResolveUrl(CurrentProject.SolutionImage) %>"
                                 alt="<%: CurrentProject.SolutionImageAltEn %>" />
                        </div>

                        <div class="project-step-copy split-step-copy" data-step="4">
                            <h2 class="lang-text" data-en="The Solution" data-pl="Rozwiązanie">The Solution</h2>

                            <p class="lang-text"
                               data-en="<%: CurrentProject.SolutionBodyEn %>"
                               data-pl="<%: CurrentProject.SolutionBodyPl %>">
                                <%: CurrentProject.SolutionBodyEn %>
                            </p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- WHAT MADE IT SPECIAL -->
            <section class="project-special-section">
                <div class="container">
                    <div class="project-special-card">
                        <div class="project-special-icon">
                            <i class="fa-solid fa-star"></i>
                        </div>

                        <div class="project-special-copy">
                            <h2 class="lang-text" data-en="What Made the Project Special" data-pl="Co wyróżniało ten projekt">
                                What Made the Project Special
                            </h2>

                            <p class="lang-text"
                               data-en="<%: CurrentProject.SpecialBodyEn %>"
                               data-pl="<%: CurrentProject.SpecialBodyPl %>">
                                <%: CurrentProject.SpecialBodyEn %>
                            </p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- FEATURES -->
            <section class="project-features-section">
                <div class="container">
                    <div class="project-section-head">
                        <h2 class="lang-text" data-en="Key Features" data-pl="Kluczowe funkcje">Key Features</h2>
                    </div>

                    <div class="project-features-grid">
                        <% For Each feature In CurrentProject.Features %>
                            <article class="project-feature-card">
                                <span class="project-feature-index"><%: feature.Number %></span>

                                <h3 class="lang-text"
                                    data-en="<%: feature.TitleEn %>"
                                    data-pl="<%: feature.TitlePl %>">
                                    <%: feature.TitleEn %>
                                </h3>

                                <p class="lang-text"
                                   data-en="<%: feature.TextEn %>"
                                   data-pl="<%: feature.TextPl %>">
                                    <%: feature.TextEn %>
                                </p>
                            </article>
                        <% Next %>
                    </div>
                </div>
            </section>

            <!-- BUSINESS VALUE -->
            <section class="project-value-section">
                <div class="container">
                    <div class="project-value-box">
                        <div class="project-step-copy project-value-copy" data-step="5">
                            <h2 class="lang-text" data-en="Business Value" data-pl="Wartość biznesowa">Business Value</h2>

                            <p class="lang-text"
                               data-en="<%: CurrentProject.BusinessValueEn %>"
                               data-pl="<%: CurrentProject.BusinessValuePl %>">
                                <%: CurrentProject.BusinessValueEn %>
                            </p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- GALLERY -->
            <section class="project-gallery-section">
                <div class="container">
                    <div class="project-gallery-head">
                        <h2 class="lang-text" data-en="Project Gallery" data-pl="Galeria projektu">Project Gallery</h2>

                        <div class="project-gallery-counter">
                            <button type="button" class="project-gallery-arrow project-gallery-prev" aria-label="Previous image">
                                <i class="fa-solid fa-arrow-left"></i>
                            </button>

                            <span class="project-gallery-current">1</span>
                            <span>/</span>
                            <span class="project-gallery-total"><%= CurrentProject.Gallery.Count %></span>

                            <button type="button" class="project-gallery-arrow project-gallery-next" aria-label="Next image">
                                <i class="fa-solid fa-arrow-right"></i>
                            </button>
                        </div>
                    </div>

                    <div class="project-gallery-slider">
                        <% Dim galleryIndex As Integer = 0 %>
                        <% For Each galleryItem In CurrentProject.Gallery %>
                            <div class='project-gallery-slide<%= If(galleryIndex = 0, " active", "") %>'>
                                <img src="<%= ResolveUrl(galleryItem.ImageUrl) %>"
                                     alt="<%: galleryItem.AltEn %>" />
                            </div>
                            <% galleryIndex += 1 %>
                        <% Next %>
                    </div>

                    <div class="project-gallery-dots">
                        <% For i As Integer = 0 To CurrentProject.Gallery.Count - 1 %>
                            <button type="button"
                                    class='project-gallery-dot<%= If(i = 0, " active", "") %>'
                                    data-slide="<%= i %>"
                                    aria-label="Gallery image <%= i + 1 %>"></button>
                        <% Next %>
                    </div>
                </div>
            </section>

            <!-- RELATED PROJECTS -->
            <section class="project-related-section">
                <div class="container">
                    <div class="project-related-head">
                        <h2 class="lang-text" data-en="Related Projects" data-pl="Powiązane projekty">Related Projects</h2>

                        <div class="project-related-counter-wrap">
                            <button type="button" class="project-related-arrow project-related-prev" aria-label="Previous project">
                                <i class="fa-solid fa-arrow-left"></i>
                            </button>

                            <span class="project-related-current">1</span>
                            <span>/</span>
                            <span class="project-related-total"><%= RelatedProjects.Count %></span>

                            <button type="button" class="project-related-arrow project-related-next" aria-label="Next project">
                                <i class="fa-solid fa-arrow-right"></i>
                            </button>
                        </div>
                    </div>

                    <div class="project-related-slider">
                        <% Dim relatedIndex As Integer = 0 %>
                        <% For Each relatedProject In RelatedProjects %>
                            <article class='project-related-slide<%= If(relatedIndex = 0, " active", "") %>'>
                                <div class="project-related-card">
                                    <div class="project-related-copy">
                                        <small class="lang-text"
                                               data-en="<%: relatedProject.CategoryEn %>"
                                               data-pl="<%: relatedProject.CategoryPl %>">
                                            <%: relatedProject.CategoryEn %>
                                        </small>

                                        <h3 class="lang-text"
                                            data-en="<%: relatedProject.TitleEn %>"
                                            data-pl="<%: relatedProject.TitlePl %>">
                                            <%: relatedProject.TitleEn %>
                                        </h3>

                                        <p class="lang-text"
                                           data-en="<%: relatedProject.CardDescriptionEn %>"
                                           data-pl="<%: relatedProject.CardDescriptionPl %>">
                                            <%: relatedProject.CardDescriptionEn %>
                                        </p>

                                        <a href='project-details.aspx?project=<%: relatedProject.Slug %>' class="btn btn-light lang-text" data-en="Case Study" data-pl="Case Study">
                                            Case Study
                                        </a>
                                    </div>

                                    <div class="project-related-media">
                                        <img src="<%= ResolveUrl(relatedProject.HeroImage) %>"
                                             alt="<%: relatedProject.HeroImageAltEn %>" />
                                    </div>
                                </div>
                            </article>
                            <% relatedIndex += 1 %>
                        <% Next %>
                    </div>
                </div>
            </section>

            <!-- CTA -->
            <section class="project-cta-section">
                <div class="container">
                    <div class="project-cta-card">
                        <div class="project-cta-icon">
                            <i class="fa-solid fa-rocket"></i>
                        </div>

                        <div class="project-cta-copy">
                            <h2 class="lang-text"
                                data-en="Need a similar solution for your business?"
                                data-pl="Potrzebujesz podobnego rozwiązania dla swojego biznesu?">
                                Need a similar solution for your business?
                            </h2>

                            <p class="lang-text"
                               data-en="We build practical software systems around real workflows, operations, and long-term business needs. Let’s talk about the right structure for your next project."
                               data-pl="Tworzymy praktyczne systemy informatyczne oparte na rzeczywistych procesach, operacjach i długoterminowych potrzebach biznesowych. Porozmawiajmy o właściwej strukturze dla Twojego kolejnego projektu.">
                                We build practical software systems around real workflows, operations, and long-term business needs. Let’s talk about the right structure for your next project.
                            </p>

                            <div class="project-cta-actions">
                                <a href="consultation.aspx" class="btn btn-primary lang-text" data-en="Book Consultation" data-pl="Umów konsultację">Book Consultation</a>
                                <a href="estimate-project.aspx" class="btn btn-light lang-text" data-en="Estimate Project" data-pl="Wyceń projekt">Estimate Project</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </main>

        <!-- FOOTER -->
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

    <div class="project-footer-contact">
        <a href="tel:+48721143224" class="project-footer-contact-line">
            <i class="fa-solid fa-phone"></i>
            <span>+48 721 143 224</span>
        </a>

        <a href="tel:+971509229389" class="project-footer-contact-line">
            <i class="fa-solid fa-phone"></i>
            <span>+971 50 922 9389</span>
        </a>

        <a href="https://wa.me/48721143224" target="_blank" rel="noopener" class="project-footer-contact-line">
            <i class="fa-brands fa-whatsapp"></i>
            <span class="lang-text"
                  data-en="WhatsApp Poland"
                  data-pl="WhatsApp Polska">
                WhatsApp Poland
            </span>
        </a>

        <a href="https://wa.me/971509229389" target="_blank" rel="noopener" class="project-footer-contact-line">
            <i class="fa-brands fa-whatsapp"></i>
            <span class="lang-text"
                  data-en="WhatsApp UAE"
                  data-pl="WhatsApp ZEA">
                WhatsApp UAE
            </span>
        </a>
    </div>

    <div class="footer-social">
        <a href="https://www.behance.net/Our-CS" target="_blank" rel="noopener" aria-label="Behance">
            <i class="fa-brands fa-behance"></i>
        </a>

        <a href="https://www.linkedin.com/company/our-cs" target="_blank" rel="noopener" aria-label="LinkedIn">
            <i class="fa-brands fa-linkedin-in"></i>
        </a>
    </div>
</div>

                        <div class="footer-col">
                            <h4 class="lang-text" data-en="Services" data-pl="Usługi">Services</h4>
                            <a href="home.aspx#services" class="lang-text" data-en="Business Systems" data-pl="Systemy biznesowe">Business Systems</a>
                            <a href="home.aspx#services" class="lang-text" data-en="Admin Panels" data-pl="Panele administracyjne">Admin Panels</a>
                            <a href="home.aspx#services" class="lang-text" data-en="Internal Platforms" data-pl="Platformy wewnętrzne">Internal Platforms</a>
                            <a href="home.aspx#services" class="lang-text" data-en="Workflow Automation" data-pl="Automatyzacja workflow">Workflow Automation</a>
                            <a href="home.aspx#services" class="lang-text" data-en="Custom Web Development" data-pl="Dedykowany rozwój webowy">Custom Web Development</a>
                        </div>

                        <div class="footer-col">
                            <h4 class="lang-text" data-en="Solutions" data-pl="Rozwiązania">Solutions</h4>
                            <a href="home.aspx#projects" class="lang-text" data-en="Certification Systems" data-pl="Systemy certyfikacyjne">Certification Systems</a>
                            <a href="home.aspx#projects" class="lang-text" data-en="Publishing Platforms" data-pl="Platformy publikacyjne">Publishing Platforms</a>
                            <a href="home.aspx#projects" class="lang-text" data-en="Evaluation Systems" data-pl="Systemy oceny i kwalifikacji">Evaluation Systems</a>
                            <a href="home.aspx#projects" class="lang-text" data-en="Corporate Websites" data-pl="Strony korporacyjne">Corporate Websites</a>
                            <a href="home.aspx#projects" class="lang-text" data-en="Editorial Workflow Tools" data-pl="Narzędzia workflow redakcyjnego">Editorial Workflow Tools</a>
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
    <script src="assets/js/project-details.js"></script>
</body>
</html>