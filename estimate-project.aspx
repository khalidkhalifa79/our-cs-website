<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="estimate-project.aspx.vb" Inherits="Our_CS.estimate_project" %>



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

    <title>Get a Project Estimate | Our-CS Custom Software</title>

    <meta name="description" content="Request a project estimate from Our-CS for custom software, business systems, admin panels, internal platforms, workflow automation and web development." />
    <meta name="robots" content="index, follow" />

    <link rel="canonical" href="https://our-cs.com/estimate-project.aspx" />

    <meta property="og:title" content="Get a Project Estimate | Our-CS" />
    <meta property="og:description" content="Tell us about your project and receive practical direction for custom software, business systems, admin panels, workflow automation, or web development." />
    <meta property="og:url" content="https://our-cs.com/estimate-project.aspx" />
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="Our-CS" />

    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="Get a Project Estimate | Our-CS" />
    <meta name="twitter:description" content="Request an estimate for custom software, business systems, admin panels, workflow automation, or web development." />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <link rel="stylesheet" href="assets/css/home.css" />
    <link rel="stylesheet" href="assets/css/estimate-project.css" />
</head>
<body class="estimate-page">
<form id="form1" runat="server" enctype="multipart/form-data">
        <!-- HEADER -->
        <header class="site-header">
            <div class="container header-inner">
                <a href="home.aspx#hero" class="logo-wrap">
                    <img src="assets/img/logo.png" alt="Our-CS Logo" class="logo-img" />
                </a>

                <nav class="main-nav" id="mainNav">
                    <a href="home.aspx#services" class="nav-link lang-text" data-en="Services" data-pl="Usługi">Services</a>
                    <a href="home.aspx#projects" class="nav-link lang-text" data-en="Our Projects" data-pl="Nasze projekty">Our Projects</a>
                    <a href="home.aspx#about" class="nav-link lang-text" data-en="Overview" data-pl="Przegląd">Overview</a>
                    <a href="home.aspx#reviews" class="nav-link lang-text" data-en="Reviews" data-pl="Opinie">Reviews</a>
                    <a href="home.aspx#MapofClients" class="nav-link lang-text" data-en="Map of Clients" data-pl="Mapa klientów">Map of Clients</a>
                    <a href="consultation.aspx" class="nav-link lang-text" data-en="Contact" data-pl="Kontakt">Contact</a>
                </nav>

                <div class="header-actions">
                    <a href="#estimateForm" class="btn btn-primary lang-text" data-en="Estimate Project" data-pl="Wyceń projekt">Estimate Project</a>

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

        <main class="estimate-main">

         <!-- HERO + FORM : ONE SECTION -->
            <section class="estimate-hero-form-section" id="estimateForm">
    <div class="container">

        <p class="estimate-kicker lang-text"
           data-en="Tell us what you need"
           data-pl="Powiedz nam, czego potrzebujesz">
            Tell us what you need
        </p>

        <h1 class="estimate-title lang-text"
            data-en="Get an estimate"
            data-pl="Uzyskaj wycenę">
            Get an estimate
        </h1>

        <div class="estimate-form-layout">

            <aside class="estimate-side-card">
                <div class="estimate-side-slide active">
                    <p class="estimate-side-label lang-text"
                       data-en="What you'll receive:"
                       data-pl="Co otrzymasz:">
                        What you'll receive:
                    </p>

                    <div class="estimate-side-icon">
                        <i class="fa-solid fa-users-gear"></i>
                    </div>

                    <h3 class="lang-text"
                        data-en="Free expert consultation"
                        data-pl="Bezpłatna konsultacja ekspercka">
                        Free expert consultation
                    </h3>
                </div>

                <div class="estimate-side-slide">
                    <p class="estimate-side-label lang-text"
                       data-en="What you'll receive:"
                       data-pl="Co otrzymasz:">
                        What you'll receive:
                    </p>

                    <div class="estimate-side-icon">
                        <i class="fa-solid fa-user-check"></i>
                    </div>

                    <h3 class="lang-text"
                        data-en="A well selected team"
                        data-pl="Dobrze dobrany zespół">
                        A well selected team
                    </h3>
                </div>

                <div class="estimate-side-slide">
                    <p class="estimate-side-label lang-text"
                       data-en="What you'll receive:"
                       data-pl="Co otrzymasz:">
                        What you'll receive:
                    </p>

                    <div class="estimate-side-icon">
                        <i class="fa-solid fa-diagram-project"></i>
                    </div>

                    <h3 class="lang-text"
                        data-en="A clear project direction"
                        data-pl="Jasny kierunek projektu">
                        A clear project direction
                    </h3>
                </div>

                <div class="estimate-side-dots">
                    <button type="button" class="estimate-dot active" data-slide="0" aria-label="Slide 1"></button>
                    <button type="button" class="estimate-dot" data-slide="1" aria-label="Slide 2"></button>
                    <button type="button" class="estimate-dot" data-slide="2" aria-label="Slide 3"></button>
                </div>
            </aside>

            <section class="estimate-form-card">

    <asp:Literal ID="litFormMessage" runat="server"></asp:Literal>

    <div class="estimate-form-honeypot" aria-hidden="true">
        <label for="website">Website</label>
        <input type="text" id="website" name="website" autocomplete="off" tabindex="-1" />
    </div>

    <div class="estimate-fields-grid">
        <div class="estimate-field">
            <input type="text"
                   name="firstName"
                   required
                   class='lang-placeholder <%= GetFieldCssClass("firstName") %>'
                   placeholder="First name*"
                   data-placeholder-en="First name*"
                   data-placeholder-pl="Imię*"
                   value='<%= GetPostedValueAttribute("firstName") %>' />
            <%= RenderFieldError("firstName") %>
        </div>

        <div class="estimate-field">
            <input type="text"
                   name="lastName"
                   required
                   class='lang-placeholder <%= GetFieldCssClass("lastName") %>'
                   placeholder="Last name*"
                   data-placeholder-en="Last name*"
                   data-placeholder-pl="Nazwisko*"
                   value='<%= GetPostedValueAttribute("lastName") %>' />
            <%= RenderFieldError("lastName") %>
        </div>

        <div class="estimate-field">
            <input type="email"
                   name="emailAddress"
                   required
                   class='lang-placeholder <%= GetFieldCssClass("emailAddress") %>'
                   placeholder="Email address*"
                   data-placeholder-en="Email address*"
                   data-placeholder-pl="Adres e-mail*"
                   value='<%= GetPostedValueAttribute("emailAddress") %>' />
            <%= RenderFieldError("emailAddress") %>
        </div>

        <div class="estimate-field">
            <input type="text"
                   name="phoneNumber"
                   class='lang-placeholder <%= GetFieldCssClass("phoneNumber") %>'
                   placeholder="Phone"
                   data-placeholder-en="Phone"
                   data-placeholder-pl="Telefon"
                   value='<%= GetPostedValueAttribute("phoneNumber") %>' />
            <%= RenderFieldError("phoneNumber") %>
        </div>
    </div>

    <div class="estimate-field estimate-field-full">
        <textarea id="projectDescription"
                  name="projectDescription"
                  rows="5"
                  maxlength="1000"
                  class='lang-placeholder <%= GetFieldCssClass("projectDescription") %>'
                  placeholder="Describe your project"
                  data-placeholder-en="Describe your project"
                  data-placeholder-pl="Opisz swój projekt"><%= GetPostedValueText("projectDescription") %></textarea>

        <div class="estimate-text-meta">
            <span></span>
            <strong id="charCounter" aria-live="polite">0 / 1000</strong>
        </div>

        <%= RenderFieldError("projectDescription") %>
    </div>

    <div class='estimate-upload-block <%= GetFieldCssClass("projectFiles", "estimate-files-error") %>'>
        <p class="estimate-upload-note lang-text"
           data-en="Feel free to attach the project documentation, NDA or any other documents that can help us with the project estimate"
           data-pl="Możesz dołączyć dokumentację projektu, NDA lub inne dokumenty, które pomogą nam w przygotowaniu wyceny projektu.">
            Feel free to attach the project documentation, NDA or any other documents that can help us with the project estimate
        </p>

        <div class="estimate-upload-row">
            <label for="projectFiles" class="estimate-add-file">
                <i class="fa-solid fa-plus"></i>
                <span class="lang-text" data-en="Add another file" data-pl="Dodaj kolejny plik">Add another file</span>
            </label>

            <input type="file"
                   id="projectFiles"
                   name="projectFiles"
                   multiple
                   accept=".pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.zip,.jpg,.jpeg,.png"
                   hidden />
        </div>

        <div id="selectedFiles" class="estimate-files-list"></div>

        <%= RenderFieldError("projectFiles") %>
        <%= RenderReattachNotice() %>
    </div>

    <div class="estimate-check-list">
        <label class="estimate-check-item">
            <input type="checkbox" name="ndaRequested" value="true" <%= GetCheckedAttribute("ndaRequested") %> />
            <span class="lang-text"
                  data-en="I would like to receive and sign a NDA which will protect both sides before we go into project details"
                  data-pl="Chcę otrzymać i podpisać NDA, które zabezpieczy obie strony przed przejściem do szczegółów projektu">
                I would like to receive and sign a NDA which will protect both sides before we go into project details
            </span>
        </label>

        <label class="estimate-check-item">
            <input type="checkbox" name="updatesConsent" value="true" <%= GetCheckedAttribute("updatesConsent") %> />
            <span class="lang-text"
                  data-en="I want to receive occasional updates regarding software development news and services"
                  data-pl="Chcę otrzymywać okazjonalne aktualizacje dotyczące usług i świata tworzenia oprogramowania">
                I want to receive occasional updates regarding software development news and services
            </span>
        </label>
    </div>

    <div class="estimate-buttons-row">
        <button type="submit" class="estimate-submit-btn lang-text"
                data-en="Estimate"
                data-pl="Wycena">
            Estimate
        </button>
    </div>
</section>
        </div>
    </div>
</section>

            <!-- BOTTOM PROMO + FOOTER COLUMNS -->
            <section class="estimate-bottom-section" id="estimateFooter">
                <div class="container estimate-bottom-layout">

                    <!-- PROMO CARD -->
                    <div class="estimate-promo-wrap">
                        <div class="estimate-promo-shadow"></div>

                        <div class="estimate-promo-card">
                            <div class="estimate-promo-slide active">
                                <div class="estimate-promo-icon">
                                    <i class="fa-solid fa-layer-group"></i>
                                </div>

                                <h3 class="lang-text"
                                    data-en="What software structure will best support your project?"
                                    data-pl="Jaka struktura oprogramowania najlepiej wesprze Twój projekt?">
                                    What software structure will best support your project?
                                </h3>

                                <a href="#estimateForm" class="estimate-promo-btn lang-text"
                                   data-en="Free project consultation"
                                   data-pl="Bezpłatna konsultacja projektu">
                                    Free project consultation
                                </a>
                            </div>

                            <div class="estimate-promo-slide">
                                <div class="estimate-promo-icon">
                                    <i class="fa-solid fa-code-branch"></i>
                                </div>

                                <h3 class="lang-text"
                                    data-en="How can the right workflow system improve your operations?"
                                    data-pl="Jak odpowiedni system workflow może usprawnić Twoje operacje?">
                                    How can the right workflow system improve your operations?
                                </h3>

                                <a href="consultation.aspx" class="estimate-promo-btn lang-text"
                                   data-en="Free workflow consultation"
                                   data-pl="Bezpłatna konsultacja workflow">
                                    Free workflow consultation
                                </a>
                            </div>

                            <div class="estimate-promo-dots">
                                <button type="button" class="promo-dot active" data-slide="0" aria-label="Promo 1"></button>
                                <button type="button" class="promo-dot" data-slide="1" aria-label="Promo 2"></button>
                            </div>
                        </div>
                    </div>

                    <!-- RIGHT COLUMNS -->
                    <div class="estimate-footer-columns">
                        <div class="estimate-footer-col estimate-company-col">
    <h4>Our-CS</h4>

    <div class="estimate-company-info">
        <p>Warsaw, Poland</p>
        <p class="lang-text"
           data-en="Poland & International"
           data-pl="Polska i rynki międzynarodowe">
            Poland & International
        </p>
    </div>

    <div class="estimate-footer-contact">
        <a href="tel:+48721143224" class="estimate-footer-contact-line">
            <i class="fa-solid fa-phone"></i>
            <span>+48 721 143 224</span>
        </a>

        <a href="tel:+971509229389" class="estimate-footer-contact-line">
            <i class="fa-solid fa-phone"></i>
            <span>+971 50 922 9389</span>
        </a>

        <a href="https://wa.me/48721143224" target="_blank" rel="noopener" class="estimate-footer-contact-line">
            <i class="fa-brands fa-whatsapp"></i>
            <span class="lang-text"
                  data-en="WhatsApp Poland"
                  data-pl="WhatsApp Polska">
                WhatsApp Poland
            </span>
        </a>

        <a href="https://wa.me/971509229389" target="_blank" rel="noopener" class="estimate-footer-contact-line">
            <i class="fa-brands fa-whatsapp"></i>
            <span class="lang-text"
                  data-en="WhatsApp UAE"
                  data-pl="WhatsApp ZEA">
                WhatsApp UAE
            </span>
        </a>
    </div>

    <div class="estimate-footer-social">
        <a href="https://www.behance.net/Our-CS" target="_blank" rel="noopener" aria-label="Behance">
            <i class="fa-brands fa-behance"></i>
        </a>

        <a href="https://www.linkedin.com/company/our-cs" target="_blank" rel="noopener" aria-label="LinkedIn">
            <i class="fa-brands fa-linkedin-in"></i>
        </a>
    </div>

    <div class="estimate-footer-logo">
        <img src="assets/img/logo.png" alt="Our-CS Logo" />
    </div>
</div>

                        <div class="estimate-footer-col">
                            <h4 class="lang-text" data-en="Services" data-pl="Usługi">Services</h4>
                            <a href="home.aspx#services" class="lang-text" data-en="Business Systems" data-pl="Systemy biznesowe">Business Systems</a>
                            <a href="home.aspx#services" class="lang-text" data-en="Admin Panels" data-pl="Panele administracyjne">Admin Panels</a>
                            <a href="home.aspx#services" class="lang-text" data-en="Internal Platforms" data-pl="Platformy wewnętrzne">Internal Platforms</a>
                            <a href="home.aspx#services" class="lang-text" data-en="Workflow Automation" data-pl="Automatyzacja workflow">Workflow Automation</a>
                            <a href="home.aspx#services" class="lang-text" data-en="Custom Web Development" data-pl="Dedykowany rozwój webowy">Custom Web Development</a>
                            <a href="home.aspx#services" class="lang-text" data-en="PDF & Document Automation" data-pl="Automatyzacja dokumentów i PDF">PDF & Document Automation</a>
                        </div>

                        <div class="estimate-footer-col">
                            <h4 class="lang-text" data-en="Solutions" data-pl="Rozwiązania">Solutions</h4>
                            <a href="home.aspx#projects" class="lang-text" data-en="Certification Systems" data-pl="Systemy certyfikacyjne">Certification Systems</a>
                            <a href="home.aspx#projects" class="lang-text" data-en="Publishing Platforms" data-pl="Platformy publikacyjne">Publishing Platforms</a>
                            <a href="home.aspx#projects" class="lang-text" data-en="Evaluation Systems" data-pl="Systemy oceny i kwalifikacji">Evaluation Systems</a>
                            <a href="home.aspx#projects" class="lang-text" data-en="Corporate Websites" data-pl="Strony korporacyjne">Corporate Websites</a>
                            <a href="home.aspx#projects" class="lang-text" data-en="Editorial Workflow Tools" data-pl="Narzędzia workflow redakcyjnego">Editorial Workflow Tools</a>
                        </div>
                    </div>
                </div>

             
            </section>
        </main>





                <footer class="site-footer">
            <div class="container">
                

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
    <script src="assets/js/estimate-project.js"></script>
</body>
</html>