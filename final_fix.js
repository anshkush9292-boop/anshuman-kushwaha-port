const fs = require('fs');

function fixPortfolio() {
    try {
        let content = fs.readFileSync('index.html');

        // 1. Encoding Fixes (Byte-level replacement for reliability)
        // We use Buffer for byte-level manipulation
        const replacements = [
            { old: Buffer.from([0xc3, 0xa2, 0xe2, 0x82, 0xac, 0xe2, 0x80, 0x94]), new: Buffer.from([0xe2, 0x80, 0x94]) }, // —
            { old: Buffer.from([0xc3, 0xa2, 0xe2, 0x82, 0xac, 0xc2, 0xba]), new: Buffer.from([0xe2, 0x80, 0x94]) }, // — variant
            { old: Buffer.from([0xc3, 0xa2, 0xe2, 0x80, 0x9a, 0xc2, 0xb9]), new: Buffer.from([0xe2, 0x82, 0xb9]) }, // ₹
            { old: Buffer.from([0xc3, 0x83, 0xc2, 0xa2, 0xc3, 0x82, 0xc5, 0x93, 0xc3, 0x82, 0xe2, 0x82, 0xac, 0xc3, 0x82, 0xc2, 0xb0, 0xc3, 0x83, 0xc2, 0xaf, 0xc3, 0x82, 0xc2, 0xb8, 0xc3, 0x82, 0xc2, 0x8f]), new: Buffer.from([0xe2, 0x9c, 0x93]) }, // ✓
            { old: Buffer.from([0xc3, 0x83, 0xc2, 0xb0, 0xc3, 0x82, 0xc5, 0xb8, 0xc3, 0x82, 0xe2, 0x82, 0xac, 0xc3, 0x82, 0xe2, 0x80, 0x9c, 0xc3, 0x82, 0xcb, 0x86]), new: Buffer.from([0xf0, 0x9f, 0x93, 0x88]) }, // 📈
            { old: Buffer.from([0xc3, 0x83, 0xc2, 0xa2, 0xc3, 0x82, 0xc5, 0x93, 0xc3, 0x82, 0xe2, 0x82, 0xac, 0xc3, 0x82, 0xc2, 0xb0]), new: Buffer.from([0xe2, 0x9c, 0x93]) }, // ✓ variant
            { old: Buffer.from([0xc3, 0x83, 0xc2, 0xa2, 0xc3, 0x82, 0xc5, 0xa1, 0xc3, 0x82, 0xe2, 0x84, 0xa2, 0xc3, 0x82, 0xef, 0xbf, 0xbd, 0xc3, 0x83, 0xc2, 0xaf, 0xc3, 0x82, 0xc2, 0xb8, 0xc3, 0x82, 0xc2, 0x8f]), new: Buffer.from([0xe2, 0x9a, 0x99, 0xef, 0xb8, 0x8f]) }, // ⚙️
            { old: Buffer.from([0xc3, 0x83, 0xc2, 0xa2, 0xc3, 0x82, 0xc5, 0xa1, 0xc3, 0x82, 0xc2, 0xa1]), new: Buffer.from([0xe2, 0x9a, 0xa1]) }, // ⚡
            { old: Buffer.from([0xc3, 0x83, 0xc2, 0xb0, 0xc3, 0x82, 0xc5, 0xb8, 0xc3, 0x82, 0xe2, 0x80, 0x9c, 0xc3, 0x82, 0xc5, 0xa0]), new: Buffer.from([0xf0, 0x9f, 0x93, 0x8a]) } // 📊
        ];

        for (let r of replacements) {
            let index = content.indexOf(r.old);
            while (index !== -1) {
                let newBuf = Buffer.concat([
                    content.slice(0, index),
                    r.new,
                    content.slice(index + r.old.length)
                ]);
                content = newBuf;
                index = content.indexOf(r.old, index + r.new.length);
            }
        }

        let html = content.toString('utf8');

        // 2. Nav Bar Fix
        html = html.replace(/\.nav-email \{/g, '.nav-email { display: flex; align-items: center; pointer-events: auto; ');
        html = html.replace(/gap: 32px;/g, 'gap: 40px; margin-left: 60px;');

        // 3. Nesting Fix (Critical)
        // Find the mess after AEO card and clean it up
        const brokenRegex = /<\/div>blocks before expanding\.<\/li>\s*<\/ul>\s*<\/div>\s*<\/div>\s*<div class="pc-sec">\s*<h5>Validation<\/h5>/g;
        html = html.replace(brokenRegex, '</div></div></div></div></div>\n\n  <!-- CERTIFICATIONS SECTION -->');

        // 4. Scroll Reveal Fallback
        const fallbackJS = `
    // 7. Scroll Reveals (IntersectionObserver)
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('visible');
          observer.unobserve(entry.target);
        }
      });
    }, { threshold: 0.15 });
    
    document.querySelectorAll('.reveal').forEach(el => observer.observe(el));
    
    // Visibility fallback for local file access (Bug 5)
    setTimeout(() => {
      document.querySelectorAll('[data-reveal], .reveal, .fade-up, .scroll-reveal').forEach(el => {
        el.style.opacity = '1';
        el.style.transform = 'translateY(0)';
        el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
      });
    }, 2500);
`;
        html = html.replace(/\/\/ 7\. Scroll Reveals \(IntersectionObserver\)[\s\S]*?observer\.observe\(el\)\);/g, fallbackJS);

        // 5. Dark Theme Text Visibility
        html = html.replace(/\/\* Dark context overrides \*\//g, `/* Dark context overrides */
    .p-card p, .aeo-card p, .wynm-section p, .contact-section p, .ty-desc {
      color: #eee !important;
    }
    .p-card li, .aeo-card li {
      color: #ccc !important;
    }
    .p-card h3, .aeo-card h3, .contact-section h2, .contact-section h4 {
      color: #FFFFFF !important;
    }`);

        // 6. Skills Bubbles
        html = html.replace(/'ÃƒÂ°Ã…Â¸Ã¢â‚¬Â Ã‚Â '/g, "'🚀'");
        html = html.replace(/'ÃƒÂ¢Ã…â€œÃ‚Â ÃƒÂ¯Ã‚Â¸Ã‚Â '/g, "'✍️'");

        fs.writeFileSync('index.html', html, 'utf8');
        console.log("Success: Fixed all bugs.");
    } catch (e) {
        console.error("Error: " + e.message);
        process.exit(1);
    }
}

fixPortfolio();
