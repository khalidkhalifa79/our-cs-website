<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="consultation.aspx.vb" Inherits="Our_CS.consultation" %>


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

    <title>Book a Software Consultation | Our-CS Business Systems</title>

    <meta name="description" content="Book a free consultation with Our-CS for custom business systems, admin panels, workflow automation, internal platforms and web development." />
    <meta name="robots" content="index, follow" />

    <link rel="canonical" href="https://our-cs.com/consultation.aspx" />

    <meta property="og:title" content="Book a Software Consultation | Our-CS" />
    <meta property="og:description" content="Discuss your business system, admin panel, workflow automation, internal platform, or custom web development project with Our-CS." />
    <meta property="og:url" content="https://our-cs.com/consultation.aspx" />
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="Our-CS" />

    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" content="Book a Software Consultation | Our-CS" />
    <meta name="twitter:description" content="Book a free consultation for business systems, admin panels, workflow automation, and custom web development." />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <link rel="stylesheet" href="assets/css/home.css" />
    <link rel="stylesheet" href="assets/css/consultation.css" />
</head>
<body class="consultation-page">
    <form id="form1" runat="server">

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
                    <a href="#consultationFooter" class="nav-link lang-text" data-en="Contact" data-pl="Kontakt">Contact</a>
                </nav>

                <div class="header-actions">
                    <a href="#consultationForm" class="btn btn-primary lang-text" data-en="Book Consultation" data-pl="Umów konsultację">Book Consultation</a>

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

        <main class="consultation-main">

            <!-- HERO + FORM -->
            <section class="consultation-hero-form-section" id="consultationForm">
                <div class="container">

                    <p class="consultation-kicker lang-text"
                       data-en="Tell us what you need help with"
                       data-pl="Powiedz nam, w czym potrzebujesz wsparcia">
                        Tell us what you need help with
                    </p>

                    <h1 class="consultation-title lang-text"
                        data-en="Book a consultation"
                        data-pl="Umów konsultację">
                        Book a consultation
                    </h1>

                    <div class="consultation-form-layout">

                        <!-- LEFT SIDE -->
                        <aside class="consultation-side-card">
                            <div class="consultation-side-slide active">
                                <p class="consultation-side-label lang-text"
                                   data-en="What you'll receive:"
                                   data-pl="Co otrzymasz:">
                                    What you'll receive:
                                </p>

                                <div class="consultation-side-icon">
                                    <i class="fa-solid fa-comments"></i>
                                </div>

                                <h3 class="lang-text"
                                    data-en="Free initial consultation"
                                    data-pl="Bezpłatna konsultacja wstępna">
                                    Free initial consultation
                                </h3>
                            </div>

                            <div class="consultation-side-slide">
                                <p class="consultation-side-label lang-text"
                                   data-en="What you'll receive:"
                                   data-pl="Co otrzymasz:">
                                    What you'll receive:
                                </p>

                                <div class="consultation-side-icon">
                                    <i class="fa-solid fa-compass-drafting"></i>
                                </div>

                                <h3 class="lang-text"
                                    data-en="Practical technical direction"
                                    data-pl="Praktyczny kierunek techniczny">
                                    Practical technical direction
                                </h3>
                            </div>

                            <div class="consultation-side-slide">
                                <p class="consultation-side-label lang-text"
                                   data-en="What you'll receive:"
                                   data-pl="Co otrzymasz:">
                                    What you'll receive:
                                </p>

                                <div class="consultation-side-icon">
                                    <i class="fa-solid fa-diagram-project"></i>
                                </div>

                                <h3 class="lang-text"
                                    data-en="Clear next steps for your project"
                                    data-pl="Jasne kolejne kroki dla projektu">
                                    Clear next steps for your project
                                </h3>
                            </div>

                            <div class="consultation-side-dots">
                                <button type="button" class="consultation-dot active" data-slide="0" aria-label="Slide 1"></button>
                                <button type="button" class="consultation-dot" data-slide="1" aria-label="Slide 2"></button>
                                <button type="button" class="consultation-dot" data-slide="2" aria-label="Slide 3"></button>
                            </div>
                        </aside>

                        <!-- FORM CARD -->
                        <section class="consultation-form-card">

    <asp:Literal ID="litFormMessage" runat="server"></asp:Literal>

    <div class="consultation-form-honeypot" aria-hidden="true">
        <label for="website">Website</label>
        <input type="text" id="website" name="website" autocomplete="off" tabindex="-1" />
    </div>

    <div class="consultation-fields-grid">
        <div class="consultation-field">
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

        <div class="consultation-field">
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

        <div class="consultation-field">
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

        <div class="consultation-field">
            <input type="text"
                   name="phoneNumber"
                   class='lang-placeholder <%= GetFieldCssClass("phoneNumber") %>'
                   placeholder="Phone"
                   data-placeholder-en="Phone"
                   data-placeholder-pl="Telefon"
                   value='<%= GetPostedValueAttribute("phoneNumber") %>' />
            <%= RenderFieldError("phoneNumber") %>
        </div>

        <div class="consultation-field">
            <input type="text"
                   name="companyName"
                   class='lang-placeholder <%= GetFieldCssClass("companyName") %>'
                   placeholder="Company / Organization"
                   data-placeholder-en="Company / Organization"
                   data-placeholder-pl="Firma / Organizacja"
                   value='<%= GetPostedValueAttribute("companyName") %>' />
            <%= RenderFieldError("companyName") %>
        </div>

        <div class="consultation-field">
            <select name="helpType" class="<%= GetFieldCssClass("helpType") %>">
                <option value="" disabled <%= GetSelectedAttribute("helpType", "") %>>What do you need help with?*</option>
                <option value="business_system" <%= GetSelectedAttribute("helpType", "business_system") %>>Business system</option>
                <option value="admin_panel" <%= GetSelectedAttribute("helpType", "admin_panel") %>>Admin panel</option>
                <option value="internal_platform" <%= GetSelectedAttribute("helpType", "internal_platform") %>>Internal platform</option>
                <option value="workflow_automation" <%= GetSelectedAttribute("helpType", "workflow_automation") %>>Workflow automation</option>
                <option value="cms_platform" <%= GetSelectedAttribute("helpType", "cms_platform") %>>CMS / Publishing platform</option>
                <option value="website" <%= GetSelectedAttribute("helpType", "website") %>>Website</option>
                <option value="existing_system" <%= GetSelectedAttribute("helpType", "existing_system") %>>Existing system improvement</option>
                <option value="not_sure" <%= GetSelectedAttribute("helpType", "not_sure") %>>Not sure yet</option>
            </select>
            <%= RenderFieldError("helpType") %>
        </div>

        <div class="consultation-field">
            <select name="projectStage" class="<%= GetFieldCssClass("projectStage") %>">
                <option value="" disabled <%= GetSelectedAttribute("projectStage", "") %>>Project stage*</option>
                <option value="idea" <%= GetSelectedAttribute("projectStage", "idea") %>>Just an idea</option>
                <option value="planning" <%= GetSelectedAttribute("projectStage", "planning") %>>Planning stage</option>
                <option value="existing" <%= GetSelectedAttribute("projectStage", "existing") %>>Existing system</option>
                <option value="redesign" <%= GetSelectedAttribute("projectStage", "redesign") %>>Need redesign or rebuild</option>
                <option value="review" <%= GetSelectedAttribute("projectStage", "review") %>>Need technical review</option>
            </select>
            <%= RenderFieldError("projectStage") %>
        </div>

        <div class="consultation-field">
            <select name="contactMethod" class="<%= GetFieldCssClass("contactMethod") %>">
                <option value="" disabled <%= GetSelectedAttribute("contactMethod", "") %>>Preferred contact method</option>
                <option value="email" <%= GetSelectedAttribute("contactMethod", "email") %>>Email</option>
                <option value="phone" <%= GetSelectedAttribute("contactMethod", "phone") %>>Phone</option>
                <option value="whatsapp" <%= GetSelectedAttribute("contactMethod", "whatsapp") %>>WhatsApp</option>
                <option value="online_meeting" <%= GetSelectedAttribute("contactMethod", "online_meeting") %>>Online meeting</option>
            </select>
            <%= RenderFieldError("contactMethod") %>
        </div>

        <div class="consultation-field">
            <select name="preferredTime" class="<%= GetFieldCssClass("preferredTime") %>">
                <option value="" disabled <%= GetSelectedAttribute("preferredTime", "") %>>Preferred time for consultation</option>
                <option value="this_week" <%= GetSelectedAttribute("preferredTime", "this_week") %>>This week</option>
                <option value="next_week" <%= GetSelectedAttribute("preferredTime", "next_week") %>>Next week</option>
                <option value="flexible" <%= GetSelectedAttribute("preferredTime", "flexible") %>>Flexible</option>
                <option value="morning" <%= GetSelectedAttribute("preferredTime", "morning") %>>Morning</option>
                <option value="afternoon" <%= GetSelectedAttribute("preferredTime", "afternoon") %>>Afternoon</option>
                <option value="evening" <%= GetSelectedAttribute("preferredTime", "evening") %>>Evening</option>
            </select>
            <%= RenderFieldError("preferredTime") %>
        </div>
    </div>

    <div class="consultation-field consultation-field-full">
        <textarea id="consultationDescription"
                  name="consultationDescription"
                  rows="5"
                  maxlength="1000"
                  class='lang-placeholder <%= GetFieldCssClass("consultationDescription") %>'
                  placeholder="Describe your goal or challenge*"
                  data-placeholder-en="Describe your goal or challenge*"
                  data-placeholder-pl="Opisz swój cel lub wyzwanie*"><%= GetPostedValueText("consultationDescription") %></textarea>

        <div class="consultation-text-meta">
            <span class="lang-text"
                  data-en="Describe your goal, current challenge, or the type of system you are considering."
                  data-pl="Opisz swój cel, aktualne wyzwanie lub rodzaj systemu, który rozważasz.">
                Describe your goal, current challenge, or the type of system you are considering.
            </span>
            <strong id="charCounter" aria-live="polite">0 / 1000</strong>
        </div>

        <%= RenderFieldError("consultationDescription") %>
    </div>

    <div class="consultation-check-list">
        <label class="consultation-check-item">
            <input type="checkbox" name="ndaRequested" value="true" <%= GetCheckedAttribute("ndaRequested") %> />
            <span class="lang-text"
                  data-en="I would like to sign an NDA before sharing sensitive project details"
                  data-pl="Chcę podpisać NDA przed udostępnieniem poufnych szczegółów projektu">
                I would like to sign an NDA before sharing sensitive project details
            </span>
        </label>

        <label class="consultation-check-item">
            <input type="checkbox" name="contactConsent" value="true" <%= GetCheckedAttribute("contactConsent") %> />
            <span class="lang-text"
                  data-en="I agree to be contacted regarding my consultation request"
                  data-pl="Wyrażam zgodę na kontakt w sprawie mojego zapytania konsultacyjnego">
                I agree to be contacted regarding my consultation request
            </span>
        </label>

        <%= RenderFieldError("contactConsent") %>
    </div>

    <div class="consultation-buttons-row">
        <button type="submit" class="consultation-submit-btn lang-text"
                data-en="Book consultation"
                data-pl="Umów konsultację">
            Book consultation
        </button>
    </div>
</section>
                    </div>
                </div>
            </section>

            <!-- BOTTOM SECTION -->
            <section class="consultation-bottom-section" id="consultationFooter">
                <div class="container consultation-bottom-layout">

                    <div class="consultation-promo-wrap">
                        <div class="consultation-promo-shadow"></div>

                        <div class="consultation-promo-card">
                            <div class="consultation-promo-slide active">
                                <div class="consultation-promo-icon">
                                    <i class="fa-solid fa-lightbulb"></i>
                                </div>

                                <h3 class="lang-text"
                                    data-en="Not sure which software solution fits your business best?"
                                    data-pl="Nie wiesz, które rozwiązanie programistyczne najlepiej pasuje do Twojego biznesu?">
                                    Not sure which software solution fits your business best?
                                </h3>

                                <a href="#consultationForm" class="consultation-promo-btn lang-text"
                                   data-en="Book a free consultation"
                                   data-pl="Umów bezpłatną konsultację">
                                    Book a free consultation
                                </a>
                            </div>

                            <div class="consultation-promo-slide">
                                <div class="consultation-promo-icon">
                                    <i class="fa-solid fa-gears"></i>
                                </div>

                                <h3 class="lang-text"
                                    data-en="Let’s discuss the right next step for your system, workflow, or platform."
                                    data-pl="Omówmy właściwy kolejny krok dla Twojego systemu, workflow lub platformy.">
                                    Let’s discuss the right next step for your system, workflow, or platform.
                                </h3>

                                <a href="#consultationForm" class="consultation-promo-btn lang-text"
                                   data-en="Start the conversation"
                                   data-pl="Rozpocznij rozmowę">
                                    Start the conversation
                                </a>
                            </div>

                            <div class="consultation-promo-dots">
                                <button type="button" class="promo-dot active" data-slide="0" aria-label="Promo 1"></button>
                                <button type="button" class="promo-dot" data-slide="1" aria-label="Promo 2"></button>
                            </div>
                        </div>
                    </div>

                    <div class="consultation-footer-columns">
                        <div class="consultation-footer-col consultation-company-col">
    <h4>Our-CS</h4>

    <div class="consultation-company-info">
        <p>Warsaw, Poland</p>
        <p class="lang-text"
           data-en="Poland & International"
           data-pl="Polska i rynki międzynarodowe">
            Poland & International
        </p>
    </div>

    <div class="consultation-footer-contact">
    <a href="tel:+48721143224" class="footer-contact-line">
        <i class="fa-solid fa-phone"></i>
        <span>+48 721 143 224</span>
    </a>

    <a href="tel:+971509229389" class="footer-contact-line">
        <i class="fa-solid fa-phone"></i>
        <span>+971 50 922 9389</span>
    </a>

    <a href="https://wa.me/48721143224" target="_blank" rel="noopener" class="footer-contact-line">
        <i class="fa-brands fa-whatsapp"></i>
        <span>WhatsApp Poland</span>
    </a>

    <a href="https://wa.me/971509229389" target="_blank" rel="noopener" class="footer-contact-line">
        <i class="fa-brands fa-whatsapp"></i>
        <span>WhatsApp UAE</span>
    </a>
</div>

    <div class="consultation-footer-social">
        <a href="https://www.behance.net/Our-CS" target="_blank" rel="noopener" aria-label="Behance">
            <i class="fa-brands fa-behance"></i>
        </a>

      
        <a href="https://www.linkedin.com/company/our-cs" target="_blank" rel="noopener" aria-label="LinkedIn">
            <i class="fa-brands fa-linkedin-in"></i>
        </a>
    </div>

    <div class="consultation-footer-logo">
        <img src="assets/img/logo.png" alt="Our-CS Logo" />
    </div>
</div>

                        <div class="consultation-footer-col">
                            <h4 class="lang-text" data-en="Services" data-pl="Usługi">Services</h4>
                            <a href="home.aspx#services" class="lang-text" data-en="Business Systems" data-pl="Systemy biznesowe">Business Systems</a>
                            <a href="home.aspx#services" class="lang-text" data-en="Admin Panels" data-pl="Panele administracyjne">Admin Panels</a>
                            <a href="home.aspx#services" class="lang-text" data-en="Internal Platforms" data-pl="Platformy wewnętrzne">Internal Platforms</a>
                            <a href="home.aspx#services" class="lang-text" data-en="Workflow Automation" data-pl="Automatyzacja workflow">Workflow Automation</a>
                            <a href="home.aspx#services" class="lang-text" data-en="Custom Web Development" data-pl="Dedykowany rozwój webowy">Custom Web Development</a>
                            <a href="home.aspx#services" class="lang-text" data-en="PDF & Document Automation" data-pl="Automatyzacja dokumentów i PDF">PDF & Document Automation</a>
                        </div>

                        <div class="consultation-footer-col">
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
    <script src="assets/js/consultation.js"></script>
</body>
</html>