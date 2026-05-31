    <?php
    session_start();
    require_once 'includes/db.php';
    // No login required - one-day event guest mode
    ?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>The Covenant of Commitment - RAISE Davao</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/cditelogo.jpg" type="image/x-icon">

        <!-- Bootstrap 5 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="assets/css/style.css?v=<?php echo filemtime('assets/css/style.css'); ?>">

        <!-- FontAwesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

        <!-- SweetAlert2 -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <style>
            .privacy-locked-container {
                position: relative;
                overflow: hidden;
                border-radius: 24px;
            }
            .privacy-overlay {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                z-index: 100;
                background: rgba(255, 255, 255, 0.4);
                backdrop-filter: blur(12px);
                -webkit-backdrop-filter: blur(12px);
                display: flex;
                flex-column;
                align-items: center;
                justify-content: center;
                transition: all 0.5s ease;
            }
            .privacy-overlay.unlocked {
                opacity: 0;
                visibility: hidden;
                pointer-events: none;
            }
            .privacy-lock-card {
                background: white;
                padding: 2.5rem;
                border-radius: 30px;
                box-shadow: 0 20px 50px rgba(0,0,0,0.1);
                text-align: center;
                max-width: 400px;
                border: 1px solid rgba(14, 165, 233, 0.1);
            }
        </style>
    </head>

    <body>

        <!-- Navigation Bar -->
        <nav class="main-nav sticky-top d-flex align-items-center shadow-sm">
            <div class="container d-flex justify-content-between align-items-center">
                <a href="index" class="text-decoration-none">
                    <div class="nav-logo-text"><span class="logo-raise">RAISE</span> <span class="logo-davao">DAVAO</span>
                    </div>
                </a>

                <div class="d-flex align-items-center gap-2 gap-md-4">
                    <a href="signature-wall" class="nav-link-custom" target="_blank">
                        <i class="fa-solid fa-layer-group"></i> <span class="d-none d-md-inline">Signature Wall</span>
                    </a>
                    <a href="https://ched.gov.ph/" target="_blank" class="nav-link-custom">
                        <i class="fa-solid fa-building-columns"></i> <span class="d-none d-md-inline">Commission on Higher
                            Education</span><span class="d-inline d-md-none">CHED</span>
                    </a>
                </div>
            </div>
        </nav>

        <!-- HERO SECTION -->
        <div class="py-5 text-center animate-fade-in" style="background: transparent;">
            <div class="container">
                <div class="mb-3">
                    <span class="badge bg-primary bg-opacity-10 text-primary px-3 py-2 rounded-pill fw-bold"
                        style="font-size: 0.8rem; letter-spacing: 1px;">
                        <i class="fa-solid fa-certificate me-2"></i> OFFICIAL DIGITAL COVENANT
                    </span>
                </div>
                <h1 class="fw-bold mb-3" style="font-family: 'Outfit'; font-size: 2.5rem; color: var(--accent-deep);">
                    Affirming Our Commitment</h1>
                <p class="text-muted mx-auto" style="max-width: 600px; font-size: 1.1rem;">Join the leading technical
                    alliance in Davao City by digitally committing to the future of IT education.</p>
            </div>
        </div>

        <div class="container py-4">
            <!-- TOP LOGO HEADER -->
            <div class="d-flex justify-content-center gap-5 mb-5">
                <img src="assets/images/chedlogo.png" alt="CHED" style="height: 60px;">
                <img src="assets/images/cditelogo.jpg" alt="CDITE" style="height: 60px;">
            </div>

            <!-- MAIN VISION CARDS (Clickable) -->
            <div class="row g-4 mb-5">
                <div class="col-md-6">
                    <div class="commitment-card cursor-pointer" data-bs-toggle="modal" data-bs-target="#covenantTextModal"
                        style="cursor:pointer;">
                        <div class="commitment-number">01</div>
                        <div class="commitment-title text-primary"><i class="fa-solid fa-handshake me-2"></i> Our Vision
                        </div>
                        <p class="commitment-text">
                            We affirm our shared commitment to strengthening Information Technology Education (ITE) in the
                            Davao Region, recognizing the rapid evolution of digital technologies and the demand for a
                            future-ready workforce.
                        </p>
                        <span class="small text-primary fw-bold mt-2 d-inline-block"><i
                                class="fa-solid fa-arrow-up-right-from-square me-1"></i>Read Full Covenant Text</span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="commitment-card cursor-pointer" data-bs-toggle="modal" data-bs-target="#covenantTextModal"
                        style="cursor:pointer;">
                        <div class="commitment-number">02</div>
                        <div class="commitment-title text-primary"><i class="fa-solid fa-users-gear me-2"></i> Collaboration
                        </div>
                        <p class="commitment-text">
                            Through this covenant, we support the RAISE-IT Davao and the Regional Advisory Council to guide
                            curriculum enhancement and industry-academe partnerships.
                        </p>
                        <span class="small text-primary fw-bold mt-2 d-inline-block"><i
                                class="fa-solid fa-arrow-up-right-from-square me-1"></i>Read Full Covenant Text</span>
                    </div>
                </div>
            </div>

            <!-- COMMITMENTS GRID (Clickable) -->
            <div class="mt-5 pt-3">
                <h4 class="fw-bold mb-4 text-center" style="font-family: 'Outfit';">The Six Core Commitments</h4>
                <p class="text-center text-muted mb-5">Click any commitment to read the full details</p>
                <div class="row g-4 mb-5">
                    <?php
                    $commitments = [
                        [
                            'title' => 'Promote Industry–Academe Alignment',
                            'short' => 'Provide insights on emerging technologies, industry practices, and workforce demands.',
                            'full' => 'Provide insights on emerging technologies, industry practices, and workforce demands to help ensure that IT education programs remain relevant and responsive to evolving industry needs.',
                            'icon' => 'fa-arrow-trend-up'
                        ],
                        [
                            'title' => 'Support Curriculum & Practicum Development',
                            'short' => 'Contribute recommendations and feedback to improve IT curricula and practicum frameworks.',
                            'full' => 'Contribute recommendations and feedback to improve IT curricula and practicum frameworks, including internship and on-the-job training (OJT) programs.',
                            'icon' => 'fa-book'
                        ],
                        [
                            'title' => 'Enhance Experiential Learning Opportunities',
                            'short' => 'Facilitate internships, OJT placements, mentorship, and real-world project exposure.',
                            'full' => 'Facilitate internships, OJT placements, mentorship, and real-world project exposure that strengthen students\' practical competencies and professional readiness.',
                            'icon' => 'fa-laptop-code'
                        ],
                        [
                            'title' => 'Participate in Advisory & Consultative Processes',
                            'short' => 'Engage in consultations and collaborative initiatives of RAISE-IT Davao and partner HEIs.',
                            'full' => 'Engage in consultations, meetings, and collaborative initiatives of RAISE-IT Davao and partner Higher Education Institutions (HEIs) to support continuous improvement in IT education.',
                            'icon' => 'fa-comments'
                        ],
                        [
                            'title' => 'Encourage Faculty Development & Industry Exposure',
                            'short' => 'Provide opportunities for faculty immersion, training, or industry engagement.',
                            'full' => 'Provide opportunities for faculty immersion, training, or industry engagement to ensure that teaching practices remain aligned with current technological trends and professional practices.',
                            'icon' => 'fa-chalkboard-user'
                        ],
                        [
                            'title' => 'Promote Innovation & Collaborative Research',
                            'short' => 'Support partnerships in research, development, and innovation initiatives.',
                            'full' => 'Support partnerships in research, development, and innovation initiatives that contribute to technological advancement and regional economic growth.',
                            'icon' => 'fa-microscope'
                        ],
                    ];
                    foreach ($commitments as $index => $item): ?>
                        <div class="col-md-4 animate-fade-in" style="animation-delay: <?php echo 0.1 * ($index + 3); ?>s;">
                            <div class="commitment-card" style="padding: 2rem; cursor: pointer;"
                                data-title="<?php echo htmlspecialchars($item['title']); ?>"
                                data-icon="<?php echo $item['icon']; ?>"
                                data-text="<?php echo htmlspecialchars($item['full']); ?>" onclick="openDetailModal(this)">
                                <div class="commitment-number"><?php echo str_pad($index + 1, 2, '0', STR_PAD_LEFT); ?></div>
                                <div class="commitment-title fs-6">
                                    <i class="fa-solid <?php echo $item['icon']; ?> text-primary me-2"></i>
                                    <?php echo $item['title']; ?>
                                </div>
                                <p class="commitment-text small mb-0"><?php echo $item['short']; ?></p>
                                <span class="small text-primary fw-bold mt-3 d-inline-block"><i
                                        class="fa-solid fa-circle-info me-1"></i>Click for full details</span>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>

            <!-- RESPONSIBILITIES (DUTY GRID, Clickable) -->
            <div class="mt-5 pt-4">
                <div class="text-center mb-5">
                    <h4 class="fw-bold" style="font-family: 'Outfit';">Member Responsibilities</h4>
                    <p class="text-muted">Industry partners and members of the Regional Advisory Council pledge to: <span
                            class="fw-bold text-primary">(tap to expand)</span></p>
                </div>
                <div class="row g-3 mb-5">
                    <?php
                    $duties = [
                        [
                            'title' => 'Regional Advisory Support',
                            'short' => 'Participate in consultative meetings with CDITE XI and CHED XI.',
                            'full' => 'Participate in consultative meetings and industry dialogues organized by the Council of Deans of IT Education (CDITE XI) and CHED Regional Office XI.',
                            'icon' => 'fa-earth-asia'
                        ],
                        [
                            'title' => 'Institutional Advisory Support',
                            'short' => 'Serve as members of Institutional Industry Advisory Councils for HEIs.',
                            'full' => 'Serve, when possible, as members of Institutional Industry Advisory Councils or Program Advisory Boards of partner Higher Education Institutions (HEIs).',
                            'icon' => 'fa-landmark-dome'
                        ],
                        [
                            'title' => 'Curriculum Input',
                            'short' => 'Provide technical expertise to ensure programs remain aligned with standards.',
                            'full' => 'Provide technical expertise and recommendations to ensure that IT education programs remain aligned with industry standards and emerging technologies.',
                            'icon' => 'fa-code-branch'
                        ],
                        [
                            'title' => 'Policy and Program Consultation',
                            'short' => 'Offer expert insights in the review of regional policies and IT programs.',
                            'full' => 'Offer expert insights in the development and review of regional initiatives, policies, and programs related to IT education.',
                            'icon' => 'fa-scale-balanced'
                        ],
                        [
                            'title' => 'Faculty Immersion Opportunities',
                            'short' => 'Support faculty opportunities to gain relevant industry exposure.',
                            'full' => 'Support opportunities for faculty members to gain relevant industry exposure.',
                            'icon' => 'fa-chalkboard-user'
                        ],
                        [
                            'title' => 'Internship and OJT Placement',
                            'short' => 'Provide mentorship and placement opportunities for IT students.',
                            'full' => 'Provide internship or on-the-job training opportunities and mentorship for IT students.',
                            'icon' => 'fa-user-graduate'
                        ],
                        [
                            'title' => 'Research and Development Collaboration',
                            'short' => 'Engage in collaborative research and innovation projects.',
                            'full' => 'Engage in collaborative research, innovation initiatives, or technology development projects with partner institutions.',
                            'icon' => 'fa-microscope'
                        ],
                    ];
                    foreach ($duties as $index => $duty): ?>
                        <div class="col-md-4 col-lg-3 animate-fade-in"
                            style="animation-delay: <?php echo 0.1 * ($index + 1); ?>s;">
                            <div class="duty-grid-item text-center" style="cursor:pointer;"
                                data-title="<?php echo htmlspecialchars($duty['title']); ?>"
                                data-icon="<?php echo $duty['icon']; ?>"
                                data-text="<?php echo htmlspecialchars($duty['full']); ?>" onclick="openDetailModal(this)">
                                <i class="fa-solid <?php echo $duty['icon']; ?> duty-icon"></i>
                                <h6 class="fw-bold small mb-2"><?php echo $duty['title']; ?></h6>
                                <p class="small text-muted mb-2" style="font-size: 0.75rem;"><?php echo $duty['short']; ?></p>
                                <span class="small text-primary fw-bold" style="font-size: 0.7rem;"><i
                                        class="fa-solid fa-circle-info me-1"></i>Full details</span>
                            </div>
                        </div>
                    <?php endforeach; ?>
                    <div class="col-md-4 col-lg-3 animate-fade-in" style="animation-delay: 0.8s;">
                        <div class="duty-grid-item text-center d-flex flex-column justify-content-center align-items-center"
                            style="background: var(--accent-gradient); color: white;">
                            <i class="fa-solid fa-check-double mb-2 fs-4"></i>
                            <h6 class="fw-bold small mb-0">Committed to Excellence</h6>
                        </div>
                    </div>
                </div>
            </div>

            <!-- MANIFESTO QUOTE -->
            <div class="manifesto-block animate-fade-in" style="animation-delay: 1s;">
                <i class="fa-solid fa-quote-right manifesto-icon"></i>
                <div class="container">
                    <p class="manifesto-quote mx-auto" style="max-width: 850px;">
                        "We reaffirm our shared responsibility to cultivate a dynamic, industry-responsive IT education
                        ecosystem that prepares graduates with the skills, knowledge, and values necessary to thrive in the
                        digital economy."
                    </p>
                    <div class="mt-4">
                        <span class="badge bg-primary bg-opacity-10 text-primary px-3 py-2 rounded-pill fw-bold">THE
                            MANIFESTO OF EXCELLENCE</span>
                    </div>
                </div>
            </div>

            <!-- ============================================== -->
            <!-- MODAL: Full Covenant Text                      -->
            <!-- ============================================== -->
            <div class="modal fade" id="covenantTextModal" tabindex="-1" aria-labelledby="covenantModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-scrollable">
                    <div class="modal-content" style="border-radius: 24px; border: none;">
                        <div class="modal-header border-0 pb-0"
                            style="background: var(--accent-gradient); border-radius: 24px 24px 0 0; padding: 2.5rem 2.5rem 1.5rem;">
                            <div>
                                <span class="badge bg-white bg-opacity-25 text-white px-3 py-2 rounded-pill mb-2"
                                    style="font-size: 0.75rem; letter-spacing: 1px;">OFFICIAL DOCUMENT</span>
                                <h4 class="modal-title fw-bold text-white mb-0" id="covenantModalLabel"
                                    style="font-family: 'Outfit';">The Covenant of Commitment</h4>
                            </div>
                            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body" style="padding: 2.5rem;">
                            <div class="d-flex gap-3 mb-4">
                                <img src="assets/images/chedlogo.png" alt="CHED" style="height: 50px;">
                                <img src="assets/images/cditelogo.jpg" alt="CDITE" style="height: 50px;">
                                <div class="ms-2">
                                    <div class="fw-bold small">Regional Alliance for Industry-Supported Skills and Education
                                        in IT – Davao (RAISE DAVAO)</div>
                                    <div class="text-muted small">Venue: Luxebridge Suites Davao, Maa, Davao City
                                        &nbsp;|&nbsp; March 17, 2026 &nbsp;|&nbsp; 8:00–1:00 PM</div>
                                </div>
                            </div>
                            <hr>
                            <p class="text-muted" style="line-height: 1.8;">
                                We, the undersigned representatives of industry, academia, and partner institutions, affirm
                                our shared commitment to strengthening Information Technology Education (ITE) in the Davao
                                Region. Recognizing the rapid evolution of digital technologies and the increasing demand
                                for a future-ready workforce, we pledge to work collaboratively to align academic
                                preparation with industry needs.
                            </p>
                            <p class="text-muted" style="line-height: 1.8;">
                                Through this Covenant of Commitment, we express our support for the Regional Alliance for
                                Industry-Supported Skills and Education in IT (RAISE-IT Davao) and our participation in the
                                Regional Advisory Council for IT Education, established to guide curriculum enhancement,
                                practicum development, and industry-academe collaboration in the region.
                            </p>
                            <p class="fw-bold mb-2">Together, we commit to:</p>
                            <ol class="text-muted" style="line-height: 2;">
                                <li><strong>Promote Industry–Academe Alignment:</strong> Provide insights on emerging
                                    technologies, industry practices, and workforce demands to help ensure that IT education
                                    programs remain relevant and responsive to evolving industry needs.</li>
                                <li><strong>Support Curriculum and Practicum Development:</strong> Contribute
                                    recommendations and feedback to improve IT curricula and practicum frameworks, including
                                    internship and on-the-job training (OJT) programs.</li>
                                <li><strong>Enhance Experiential Learning Opportunities:</strong> Facilitate internships,
                                    OJT placements, mentorship, and real-world project exposure that strengthen students'
                                    practical competencies and professional readiness.</li>
                                <li><strong>Participate in Advisory and Consultative Processes:</strong> Engage in
                                    consultations, meetings, and collaborative initiatives of RAISE-IT Davao and partner
                                    Higher Education Institutions (HEIs) to support continuous improvement in IT education.
                                </li>
                                <li><strong>Encourage Faculty Development and Industry Exposure:</strong> Provide
                                    opportunities for faculty immersion, training, or industry engagement to ensure that
                                    teaching practices remain aligned with current technological trends and professional
                                    practices.</li>
                                <li><strong>Promote Innovation and Collaborative Research:</strong> Support partnerships in
                                    research, development, and innovation initiatives that contribute to technological
                                    advancement and regional economic growth.</li>
                            </ol>
                            <hr>
                            <h6 class="fw-bold">Responsibilities as Members of RAISE-IT Davao</h6>
                            <p class="text-muted small">As industry partners and members of the Regional Advisory Council,
                                we commit to:</p>
                            <ul class="text-muted" style="line-height: 2;">
                                <li><strong>Regional Advisory Support</strong> – Participate in consultative meetings and
                                    industry dialogues organized by CDITE XI and CHED Regional Office XI.</li>
                                <li><strong>Institutional Advisory Support</strong> – Serve, when possible, as members of
                                    Institutional Industry Advisory Councils or Program Advisory Boards of partner HEIs.
                                </li>
                                <li><strong>Curriculum Input</strong> – Provide technical expertise and recommendations to
                                    ensure that IT education programs remain aligned with industry standards and emerging
                                    technologies.</li>
                                <li><strong>Policy and Program Consultation</strong> – Offer expert insights in the
                                    development and review of regional initiatives, policies, and programs related to IT
                                    education.</li>
                                <li><strong>Faculty Immersion Opportunities</strong> – Support opportunities for faculty
                                    members to gain relevant industry exposure.</li>
                                <li><strong>Internship and OJT Placement</strong> – Provide internship or on-the-job
                                    training opportunities and mentorship for IT students.</li>
                                <li><strong>Research and Development Collaboration</strong> – Engage in collaborative
                                    research, innovation initiatives, or technology development projects with partner
                                    institutions.</li>
                            </ul>
                            <div class="p-4 rounded-4 mt-4"
                                style="background: rgba(14,165,233,0.05); border: 1px solid rgba(14,165,233,0.15);">
                                <p class="mb-0 text-muted fst-italic" style="line-height: 1.8;">
                                    Through this covenant, we reaffirm our shared responsibility to cultivate a dynamic,
                                    industry-responsive IT education ecosystem that prepares graduates with the skills,
                                    knowledge, and values necessary to thrive in the digital economy.
                                </p>
                            </div>
                        </div>
                        <div class="modal-footer border-0" style="padding: 1.5rem 2.5rem;">
                            <button type="button" class="btn btn-outline-secondary rounded-pill px-4"
                                data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-tech rounded-pill px-4" data-bs-dismiss="modal"
                                onclick="scrollToForm()"><i class="fa-solid fa-signature me-2"></i>Sign Now</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ============================================== -->
            <!-- MODAL: Data Privacy Agreement                -->
            <!-- ============================================== -->
            <div class="modal fade" id="privacyModal" tabindex="-1" aria-labelledby="privacyModalLabel" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content border-0 shadow-lg" style="border-radius: 28px; overflow: hidden;">
                        <div class="modal-header border-0 p-4 pb-0" style="background: linear-gradient(135deg, #0ea5e9 0%, #2563eb 100%);">
                            <div class="w-100 text-center py-2">
                                <div class="d-inline-flex align-items-center justify-content-center bg-white rounded-circle mb-3 shadow-sm" style="width: 80px; height: 80px; overflow: hidden; border: 3px solid rgba(255,255,255,0.3);">
                                    <img src="assets/images/cditelogo.jpg" alt="CDITE" style="width: 100%; height: 100%; object-fit: cover;">
                                </div>
                                <h4 class="modal-title fw-bold text-white w-100" id="privacyModalLabel" style="font-family: 'Outfit';">Data Privacy Agreement</h4>
                            </div>
                        </div>
                        <div class="modal-body p-4 p-md-5">
                            <div class="privacy-content-box p-3 rounded-4 mb-4" style="background: #f8fafc; border: 1px solid #e2e8f0; line-height: 1.7; font-size: 0.95rem; color: #475569;">
                                <p class="mb-3">
                                    By registering for the <strong>RAISE-IT Davao Industry Consultation</strong>, you authorize <strong>CDITE XI</strong> and <strong>CHEDRO XI</strong> to collect and process your personal data (name, affiliation, and contact details) solely for event coordination, certificates, and future academic-industry collaborations.
                                </p>
                                <p class="mb-0">
                                    We commit to protecting your information in compliance with the <strong>Data Privacy Act of 2012</strong>. Your data will not be shared with third parties without explicit consent. Photos or videos taken during the event may be used for official documentation and promotional reports.
                                </p>
                            </div>
                            
                            <div class="d-flex flex-column gap-3">
                                <div class="p-3 rounded-4 border d-flex align-items-center gap-3 cursor-pointer transition-all" id="optionYesContainer" style="cursor: pointer; border-color: #e2e8f0;">
                                    <div class="form-check m-0">
                                        <input class="form-check-input fs-5" type="radio" name="privacyOption" id="privacyAgree" value="yes">
                                    </div>
                                    <label class="form-check-label fw-bold mb-0 cursor-pointer w-100" for="privacyAgree">
                                        Yes, I agree and proceed
                                    </label>
                                </div>
                                <div class="p-3 rounded-4 border d-flex align-items-center gap-3 cursor-pointer transition-all" id="optionNoContainer" style="cursor: pointer; border-color: #e2e8f0;">
                                    <div class="form-check m-0">
                                        <input class="form-check-input fs-5" type="radio" name="privacyOption" id="privacyDisagree" value="no" checked>
                                    </div>
                                    <label class="form-check-label fw-bold mb-0 cursor-pointer w-100" for="privacyDisagree">
                                        No, I do not agree
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer border-0 p-4 pt-0">
                            <button type="button" class="btn btn-tech w-100 py-3 rounded-pill fs-6 fw-bold shadow-sm" id="btnProceedToSign" onclick="handlePrivacyAction()">
                                Agree & Continue To Document <i class="fa-solid fa-arrow-right ms-2"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ============================================== -->
            <!-- MODAL: Individual Detail Card                  -->
            <!-- ============================================== -->
            <div class="modal fade" id="detailModal" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content" style="border-radius: 24px; border: none;">
                        <div class="modal-header border-0"
                            style="background: var(--accent-gradient); border-radius: 24px 24px 0 0; padding: 2rem 2rem 1.5rem;">
                            <div class="d-flex align-items-center gap-3">
                                <div class="social-circle bg-white text-primary border-0 flex-shrink-0" id="detailModalIcon"
                                    style="width:50px;height:50px;font-size:1.2rem;"></div>
                                <h5 class="modal-title fw-bold text-white mb-0" id="detailModalTitle"
                                    style="font-family: 'Outfit';"></h5>
                            </div>
                            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body" style="padding: 2rem;">
                            <p class="text-muted mb-0" style="line-height: 1.9; font-size: 1.05rem;" id="detailModalText">
                            </p>
                        </div>
                        <div class="modal-footer border-0" style="padding: 1rem 2rem;">
                            <button type="button" class="btn btn-outline-secondary rounded-pill px-4"
                                data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-tech rounded-pill px-4" data-bs-dismiss="modal"
                                onclick="scrollToForm()"><i class="fa-solid fa-signature me-2"></i>Sign Now</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- INTEGRATED INTERACTIVE FORM -->
            <div class="privacy-locked-container mt-5">
                <div id="privacyOverlay" class="privacy-overlay">
                    <div class="privacy-lock-card animate-fade-in">
                        <div class="social-circle bg-primary text-white mx-auto mb-4" style="width: 70px; height: 70px; font-size: 1.8rem; border: none;">
                            <i class="fa-solid fa-lock"></i>
                        </div>
                        <h4 class="fw-bold mb-3" style="font-family: 'Outfit';">Form Locked</h4>
                        <p class="text-muted mb-4">Please review and agree to our Data Privacy Agreement to unlock the signing module.</p>
                        <button class="btn btn-tech rounded-pill px-5 py-3 fw-bold" onclick="showPrivacyModal()">
                            <i class="fa-solid fa-shield-halved me-2"></i> Review Agreement
                        </button>
                    </div>
                </div>

                <div class="interactive-form-panel animate-fade-in" style="animation-delay: 0.4s; margin-top: 0 !important;">
                <div class="row g-0">
                    <div
                        class="col-lg-4 form-header-side d-flex flex-column justify-content-center text-center text-lg-start">
                        <h2 class="fw-bold mb-3" style="font-family: 'Outfit';"><i
                                class="fa-solid fa-signature me-2"></i>Seal the Commitment</h2>
                        <p class="mb-5 opacity-75">Provide your professional details to generate your digital covenant and
                            join the signature wall.</p>

                        <div class="d-flex align-items-center gap-3 mb-4">
                            <div class="social-circle bg-white text-primary border-0"><i
                                    class="fa-solid fa-shield-halved"></i></div>
                            <div>
                                <div class="fw-bold">Secure & Private</div>
                                <div class="small opacity-75">Data Privacy Compliant</div>
                            </div>
                        </div>
                        <div class="d-flex align-items-center gap-3">
                            <div class="social-circle bg-white text-primary border-0"><i
                                    class="fa-solid fa-envelope-circle-check"></i></div>
                            <div>
                                <div class="fw-bold">Signed Covenant Copy</div>
                                <div class="small opacity-75">Email copy sent to you</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 form-body-side">
                        <form id="covenantForm" action="submit_covenant" method="POST">
                            <div class="row g-4">
                                <div class="col-md-6">
                                    <label class="form-label fw-bold small text-muted text-uppercase"><i
                                            class="fa-solid fa-building col-blue me-2 opacity-75"></i>Organization
                                        Name</label>
                                    <input type="text" class="form-control tech-input" name="organization_name" required
                                        placeholder="Agency or Company">
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label fw-bold small text-muted text-uppercase"><i
                                            class="fa-solid fa-user-tie col-blue me-2 opacity-75"></i>Position/Title</label>
                                    <input type="text" class="form-control tech-input" name="position_title" required
                                        placeholder="CEO, Director, Dean">
                                </div>
                                <div class="col-12">
                                    <label class="form-label fw-bold small text-muted text-uppercase">Institution
                                        Type</label>
                                    <div class="d-flex flex-wrap gap-3">
                                        <div class="form-check custom-option-check p-0">
                                            <input class="form-check-input" type="radio" name="institution_type"
                                                id="typeInd" value="Industry Partner" required
                                                style="position:absolute;opacity:0;width:0;height:0;">
                                            <label class="btn btn-outline-light text-dark fw-medium px-3 border-subtle"
                                                for="typeInd"><i class="fa-solid fa-industry me-2 text-primary"></i>Industry
                                                Partner</label>
                                        </div>
                                        <div class="form-check custom-option-check p-0">
                                            <input class="form-check-input" type="radio" name="institution_type"
                                                id="typeHei" value="Higher Education Institution (HEI)"
                                                style="position:absolute;opacity:0;width:0;height:0;">
                                            <label class="btn btn-outline-light text-dark fw-medium px-3 border-subtle"
                                                for="typeHei"><i
                                                    class="fa-solid fa-building-columns me-2 text-primary"></i>HEI</label>
                                        </div>
                                        <div class="form-check custom-option-check p-0">
                                            <input class="form-check-input" type="radio" name="institution_type"
                                                id="typeOther" value="Others"
                                                style="position:absolute;opacity:0;width:0;height:0;">
                                            <label class="btn btn-outline-light text-dark fw-medium px-3 border-subtle"
                                                for="typeOther"><i
                                                    class="fa-solid fa-users-gear me-2 text-primary"></i>Others</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label fw-bold small text-muted text-uppercase"><i
                                            class="fa-solid fa-id-card col-blue me-2 opacity-75"></i>Full Name</label>
                                    <input type="text" class="form-control tech-input" name="represented_by"
                                        placeholder="Enter Full Name" required>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label fw-bold small text-muted text-uppercase"><i
                                            class="fa-solid fa-envelope col-blue me-2 opacity-75"></i>Email</label>
                                    <input type="email" class="form-control tech-input" name="email_address"
                                        placeholder="email@example.com" required>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label fw-bold small text-muted text-uppercase"><i
                                            class="fa-solid fa-phone col-blue me-2 opacity-75"></i>Contact</label>
                                    <input type="text" class="form-control tech-input" name="contact_number"
                                        placeholder="Optional">
                                </div>
                            </div>

                            <!-- INTEGRATED SIGNATURE -->
                            <div class="mt-5">
                                <ul class="nav nav-pills mb-3 tech-pills" id="sigTab" role="tablist">
                                    <li class="nav-item">
                                        <button class="nav-link active" id="draw-tab" data-bs-toggle="pill"
                                            data-bs-target="#draw-sig" type="button"><i
                                                class="fa-solid fa-pen-nib me-2"></i>Draw</button>
                                    </li>
                                    <li class="nav-item">
                                        <button class="nav-link" id="upload-tab" data-bs-toggle="pill"
                                            data-bs-target="#upload-sig" type="button"><i
                                                class="fa-solid fa-upload me-2"></i>Upload</button>
                                    </li>
                                </ul>

                                <div class="tab-content" id="sigTabContent">
                                    <div class="tab-pane fade show active" id="draw-sig">
                                        <div class="signature-pad-container" style="height: 280px;">
                                            <canvas id="signature-pad"></canvas>
                                            <button type="button" id="clear-sig"
                                                class="btn btn-sm btn-link text-muted position-absolute bottom-0 end-0 m-2 text-decoration-none"
                                                style="z-index: 2;">Clear</button>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="upload-sig">
                                        <label for="sig-upload-input"
                                            class="upload-wrapper p-3 text-center w-100 cursor-pointer border rounded-4 bg-light d-block">
                                            <i class="fa-solid fa-cloud-arrow-up fs-4 text-primary mb-2"></i>
                                            <p class="small fw-bold mb-0">Upload E-Signature</p>
                                            <input type="file" id="sig-upload-input" accept="image/*" class="d-none">
                                        </label>
                                        <div id="upload-preview-container"
                                            class="mt-3 p-3 rounded-4 border d-none text-center bg-white shadow-sm">
                                            <p class="small text-muted mb-2">Preview (Background Removed):</p>
                                            <canvas id="upload-preview-canvas"
                                                style="max-width: 100%; height: auto; max-height: 150px;"></canvas>
                                            <p class="small text-success mt-1 mb-0"><i
                                                    class="fa-solid fa-check-circle me-1"></i> Signature Processed</p>
                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" name="signature_data" id="signature_data">
                                <input type="hidden" id="signature_mode" value="draw">
                            </div>

                            <div
                                class="mt-5 d-flex flex-column flex-md-row align-items-center justify-content-between gap-4">
                                <div class="text-start">
                                    <p class="mb-0 small fw-bold">Digitally Stamping on:</p>
                                    <h5 class="fw-bold text-primary mb-0" id="dateSignedDisplay"
                                        style="font-family: 'Outfit';">March 12, 2026</h5>
                                </div>
                                <button type="submit" class="btn btn-tech px-5 py-3 fs-5">Submit & Digitally Commit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
        </div>

        <!-- FOOTER SECTION -->
        <footer class="main-footer">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-5">
                        <div class="footer-logo mb-3">RAISE <span class="text-primary">DAVAO</span></div>
                        <p class="text-muted mb-4" style="max-width: 400px; line-height: 1.8;">
                            The Regional Alliance for Industry-Supported Skills and Education in IT (RAISE DAVAO) is a
                            collaborative initiative dedicated to bridging the gap between academia and industry in the
                            Davao Region.
                        </p>

                    </div>
                    <div class="col-md-4 col-lg-2">
                        <h6 class="fw-bold mb-4">Quick Links</h6>
                        <ul class="list-unstyled d-grid gap-2">
                            <li><a href="signature-wall" class="footer-link"><i
                                        class="fa-solid fa-layer-group me-2 small opacity-75"></i>Signature Wall</a></li>
                            <li><a href="https://ched.gov.ph" target="_blank" class="footer-link"><i
                                        class="fa-solid fa-building-columns me-2 small opacity-75"></i>CHED</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 col-lg-2">
                        <h6 class="fw-bold mb-4">Event Details</h6>
                        <ul class="list-unstyled d-grid gap-2">
                            <li class="footer-link"><i class="fa-solid fa-calendar-day me-2 small opacity-75"></i>March 17,
                                2026</li>
                            <li class="footer-link"><i class="fa-solid fa-location-dot me-2 small opacity-75"></i>Luxebridge
                                Davao</li>
                            <li class="footer-link"><i class="fa-solid fa-clock me-2 small opacity-75"></i>8:00 AM - 1:00 PM
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <h6 class="fw-bold mb-4">Secure Signature</h6>
                        <div class="p-3 rounded-4 bg-light border border-dashed">
                            <p class="small text-muted mb-0">
                                <i class="fa-solid fa-shield-halved text-success me-2"></i> Authorized Digital Covenant
                                Signing System.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="mt-5 pt-4 border-top text-center text-muted small">
                    &copy; <?php echo date('Y'); ?> RAISE DAVAO Alliance. All rights reserved.
                    <span class="mx-2">|</span> Powered by CDITE XI
                </div>
            </div>
        </footer>

        <!-- Bootstrap JS bundled -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

        <!-- GLOBAL: Detail Modal Opener (must be global scope for onclick to work) -->
        <script>
            let hasAgreedPrivacy = false;

            window.onload = function() {
                setTimeout(showPrivacyModal, 1500); // Small delay for polish
            }

            function showPrivacyModal() {
                const modalEl = document.getElementById('privacyModal');
                const existing = bootstrap.Modal.getInstance(modalEl);
                const modal = existing || new bootstrap.Modal(modalEl);
                modal.show();
            }

            function scrollToForm() {
                if (!hasAgreedPrivacy) {
                    showPrivacyModal();
                    return;
                }

                setTimeout(() => {
                    const element = document.getElementById('covenantForm');
                    if (element) {
                        const headerOffset = 100;
                        const elementPosition = element.getBoundingClientRect().top;
                        const offsetPosition = elementPosition + window.pageYOffset - headerOffset;

                        window.scrollTo({
                            top: offsetPosition,
                            behavior: "smooth"
                        });
                    }
                }, 300); // Wait for modal to start closing
            }

            function handlePrivacyAction() {
                const agree = document.getElementById('privacyAgree').checked;
                if (agree) {
                    confirmPrivacyAndProceed();
                } else {
                    // Redirect to the professional exit page
                    window.location.href = 'exit-privacy'; 
                }
            }

            function confirmPrivacyAndProceed() {
                const agree = document.getElementById('privacyAgree').checked;
                if (agree) {
                    hasAgreedPrivacy = true;
                    
                    // Unlock visuals
                    const overlay = document.getElementById('privacyOverlay');
                    if (overlay) overlay.classList.add('unlocked');
                    
                    const modalEl = document.getElementById('privacyModal');
                    const modal = bootstrap.Modal.getInstance(modalEl);
                    if (modal) modal.hide();
                    
                    // No auto-scroll - let them "read all" first
                }
            }

            // Listen for radio changes in privacy modal
            document.addEventListener('change', function(e) {
                if (e.target && e.target.name === 'privacyOption') {
                    const btn = document.getElementById('btnProceedToSign');
                    const yesContainer = document.getElementById('optionYesContainer');
                    const noContainer = document.getElementById('optionNoContainer');
                    
                    if (e.target.id === 'privacyAgree') {
                        if (btn) {
                            btn.innerHTML = 'Agree & Continue To Document <i class="fa-solid fa-arrow-right ms-2"></i>';
                            btn.className = 'btn btn-tech w-100 py-3 rounded-pill fs-6 fw-bold shadow-sm';
                        }
                        if (yesContainer) {
                            yesContainer.style.borderColor = '#0ea5e9';
                            yesContainer.style.backgroundColor = 'rgba(14, 165, 233, 0.05)';
                        }
                        if (noContainer) {
                            noContainer.style.borderColor = '#e2e8f0';
                            noContainer.style.backgroundColor = 'transparent';
                        }
                    } else {
                        if (btn) {
                            btn.innerHTML = '<i class="fa-solid fa-door-open me-2"></i> I Disagree, Exit System';
                            btn.className = 'btn btn-outline-danger w-100 py-3 rounded-pill fs-6 fw-bold shadow-sm';
                        }
                        if (noContainer) {
                            noContainer.style.borderColor = '#f43f5e';
                            noContainer.style.backgroundColor = 'rgba(244, 63, 94, 0.05)';
                        }
                        if (yesContainer) {
                            yesContainer.style.borderColor = '#e2e8f0';
                            yesContainer.style.backgroundColor = 'transparent';
                        }
                    }
                }
            });

            function openDetailModal(el) {
                const card = el.closest('[data-title]') || el;
                const title = card.getAttribute('data-title');
                const icon = card.getAttribute('data-icon');
                const text = card.getAttribute('data-text');

                document.getElementById('detailModalTitle').textContent = title || '';
                document.getElementById('detailModalText').textContent = text || '';
                document.getElementById('detailModalIcon').innerHTML = icon
                    ? '<i class="fa-solid ' + icon + '"></i>'
                    : '';

                const modalEl = document.getElementById('detailModal');
                const existing = bootstrap.Modal.getInstance(modalEl);
                const modal = existing || new bootstrap.Modal(modalEl);
                modal.show();
            }
        </script>

        <!-- Signature Pad library -->
        <script src="https://cdn.jsdelivr.net/npm/signature_pad@4.1.7/dist/signature_pad.umd.min.js"></script>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                // Set current date in UI
                const today = new Date();
                const options = { month: 'long', day: 'numeric', year: 'numeric' };
                const formattedDate = today.toLocaleDateString('en-US', options);

                const day = today.getDate();
                const nth = function (d) {
                    if (d > 3 && d < 21) return 'th';
                    switch (d % 10) {
                        case 1: return "st";
                        case 2: return "nd";
                        case 3: return "rd";
                        default: return "th";
                    }
                }
                const monthText = today.toLocaleDateString('en-US', { month: 'long' });

                // Note: dateSignedDisplay exists, ensure it is used
                const dateDisplay = document.getElementById('dateSignedDisplay');
                if (dateDisplay) dateDisplay.textContent = formattedDate;

                // Initialize Signature Pad
                const canvas = document.getElementById('signature-pad');
                const signaturePad = new SignaturePad(canvas, {
                    backgroundColor: 'rgba(255, 255, 255, 0)',
                    penColor: '#0f172a'
                });

                // Handle window resize for canvas
                function resizeCanvas() {
                    const ratio = Math.max(window.devicePixelRatio || 1, 1);
                    const wasEmpty = signaturePad.isEmpty();
                    const oldData = wasEmpty ? null : signaturePad.toDataURL();

                    canvas.width = canvas.offsetWidth * ratio;
                    canvas.height = canvas.offsetHeight * ratio;
                    canvas.getContext("2d").scale(ratio, ratio);

                    signaturePad.clear();
                    if (!wasEmpty) {
                        signaturePad.fromDataURL(oldData);
                    }
                }
                window.addEventListener("resize", resizeCanvas);
                resizeCanvas();

                // Clear Signature
                document.getElementById('clear-sig').addEventListener('click', function () {
                    signaturePad.clear();
                });

                // Handle Tab Switches
                document.getElementById('draw-tab').addEventListener('shown.bs.tab', function () {
                    document.getElementById('signature_mode').value = 'draw';
                    resizeCanvas();
                });
                document.getElementById('upload-tab').addEventListener('shown.bs.tab', function () {
                    document.getElementById('signature_mode').value = 'upload';
                });

                // Handle E-Signature Upload & Background Removal
                const uploadInput = document.getElementById('sig-upload-input');
                const previewCanvas = document.getElementById('upload-preview-canvas');
                const previewCtx = previewCanvas.getContext('2d');

                uploadInput.addEventListener('change', function (e) {
                    const file = e.target.files[0];
                    if (!file) return;

                    const reader = new FileReader();
                    reader.onload = function (event) {
                        const img = new Image();
                        img.onload = function () {
                            // Set canvas size
                            previewCanvas.width = img.width;
                            previewCanvas.height = img.height;

                            // Draw image to canvas
                            previewCtx.drawImage(img, 0, 0);

                            // REMOVE BACKGROUND: Get image data and make white-ish pixels transparent
                            const imageData = previewCtx.getImageData(0, 0, previewCanvas.width, previewCanvas.height);
                            const data = imageData.data;

                            for (let i = 0; i < data.length; i += 4) {
                                const r = data[i];
                                const g = data[i + 1];
                                const b = data[i + 2];

                                // If pixel is white or close to white, set alpha to 0
                                if (r > 200 && g > 200 && b > 200) {
                                    data[i + 3] = 0;
                                }
                            }

                            previewCtx.putImageData(imageData, 0, 0);
                            document.getElementById('upload-preview-container').classList.remove('d-none');
                        };
                        img.src = event.target.result;
                    };
                    reader.readAsDataURL(file);
                });

                // Form Submit Intercept with SweetAlert
                const form = document.getElementById('covenantForm');
                form.addEventListener('submit', function (e) {
                    e.preventDefault();

                    const mode = document.getElementById('signature_mode').value;
                    let finalSigData = '';

                    if (mode === 'draw') {
                        if (signaturePad.isEmpty()) {
                            Swal.fire({ icon: 'warning', title: 'Signature Required', text: 'Please sign or upload an e-sig before submitting.', confirmButtonColor: '#0ea5e9' });
                            return;
                        }
                        finalSigData = signaturePad.toDataURL();
                    } else {
                        // Check if canvas has image data (preview canvas)
                        const isCanvasEmpty = previewCtx.getImageData(0, 0, previewCanvas.width, previewCanvas.height).data.every(val => val === 0);
                        if (isCanvasEmpty) {
                            Swal.fire({ icon: 'warning', title: 'Upload Required', text: 'Please upload an e-signature file.', confirmButtonColor: '#0ea5e9' });
                            return;
                        }
                        finalSigData = previewCanvas.toDataURL();
                    }

                    Swal.fire({
                        title: 'Confirm Digital Signature?',
                        text: "By clicking confirm, you are legally signing this digital covenant as a representative of your organization.",
                        icon: 'info',
                        showCancelButton: true,
                        confirmButtonColor: '#0ea5e9',
                        cancelButtonColor: '#64748b',
                        confirmButtonText: 'Yes, I Sign & Commit',
                        cancelButtonText: 'Review Document'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            document.getElementById('signature_data').value = finalSigData;
                            form.submit();
                        }
                    });
                });


                <?php if (isset($_SESSION['error_msg'])): ?>
                    Swal.fire({
                        icon: 'error',
                        title: 'Submission Error',
                        text: <?php echo json_encode($_SESSION['error_msg']); ?>,
                        confirmButtonColor: '#0ea5e9'
                    });
                    <?php unset($_SESSION['error_msg']); ?>
                <?php endif; ?>
            });
        </script>
    </body>

    </html>