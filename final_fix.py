import re

def fix_portfolio():
    try:
        with open('index.html', 'rb') as f:
            content = f.read()

        # 1. Encoding Fixes (Byte-level replacement for reliability)
        replacements = [
            (b'\xc3\xa2\xe2\x82\xac\xe2\x80\x94', b'\xe2\x80\x94'), # —
            (b'\xc3\xa2\xe2\x82\xac\xc2\xba', b'\xe2\x80\x94'), # — variant
            (b'\xc3\xa2\xe2\x80\x9a\xc2\xb9', b'\xe2\x82\xb9'), # ₹
            (b'\xc3\xa2\xef\xbf\xbd\xef\xbf\xbd', b'\xe2\x82\xb9'), # ₹ fallback
            (b'\xc3\x83\xc2\xa2\xc3\x82\xc5\x93\xc3\x82\xe2\x82\xac\xc3\x82\xc2\xb0\xc3\x83\xc2\xaf\xc3\x82\xc2\xb8\xc3\x82\xc2\x8f', b'\xe2\x9c\x93'), # ✓
            (b'\xc3\x83\xc2\xb0\xc3\x82\xc5\xb8\xc3\x82\xe2\x82\xac\xc3\x82\xe2\x80\x9c\xc3\x82\xcb\x86', b'\xf0\x9f\x93\x88'), # 📈
            (b'\xc3\x83\xc2\xa2\xc3\x82\xc5\x93\xc3\x82\xe2\x82\xac\xc3\x82\xc2\xb0', b'\xe2\x9c\x93'), # ✓ variant
            (b'\xc3\x83\xc2\xa2\xc3\x82\xc5\xa1\xc3\x82\xe2\x84\xa2\xc3\x82\xef\xbf\xbd\xc3\x83\xc2\xaf\xc3\x82\xc2\xb8\xc3\x82\xc2\x8f', b'\xe2\x9a\x99\xef\xb8\x8f'), # ⚙️
            (b'\xc3\x83\xc2\xa2\xc3\x82\xc5\xa1\xc3\x82\xc2\xa1', b'\xe2\x9a\xa1'), # ⚡
            (b'\xc3\x83\xc2\xb0\xc3\x82\xc5\xb8\xc3\x82\xe2\x80\x9c\xc3\x82\xc5\xa0', b'\xf0\x9f\x93\x8a'), # 📊
            (b'\xc3\x83\xc2\xb0\xc3\x82\xc5\xb8\xc3\x82\xc2\xa4\xc3\x82\xe2\x80\x94', b'\xf0\x9f\xa4\x94'), # 🤔
        ]

        for old, new in replacements:
            content = content.replace(old, new)

        html = content.decode('utf-8', errors='ignore')

        # 2. Nav Bar Fix (Bug 2)
        # Search for .nav-email styles and update them
        html = html.replace('.nav-email {', '.nav-email { display: flex; align-items: center;')
        # Increase gap and add z-index to email
        html = re.sub(r'gap: 32px;', 'gap: 40px; margin-left: 60px;', html)

        # 3. Nesting Fix (Bug 4)
        # Fix the broken AEO card ending and section transition
        broken_block = r'</div>blocks before expanding\.</li>\s*</ul>\s*</div>\s*</div>\s*<div class="pc-sec">\s*<h5>Validation</h5>'
        fixed_block = '</div></div></div></div></div>\n\n  <!-- CERTIFICATIONS SECTION -->'
        html = re.sub(broken_block, fixed_block, html)

        # 4. Scroll Reveal Fallback (Bug 5)
        fallback_js = """
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
    
    // Visibility fallback for local file access
    setTimeout(() => {
      document.querySelectorAll('[data-reveal], .reveal, .fade-up, .scroll-reveal').forEach(el => {
        el.style.opacity = '1';
        el.style.transform = 'translateY(0)';
        el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
      });
    }, 2500);
"""
        html = re.sub(r'// 7\. Scroll Reveals \(IntersectionObserver\).*?observer\.observe\(el\)\);', fallback_js, html, flags=re.DOTALL)

        # 5. Fix Dark Theme Text Visibility (Bug 4)
        html = html.replace('/* Dark context overrides */', """/* Dark context overrides */
    .p-card p, .aeo-card p, .wynm-section p, .contact-section p, .ty-desc {
      color: #ccc !important;
    }
    .p-card li, .aeo-card li {
      color: #bbb !important;
    }""")

        # 6. Ensure charset is first
        if '<meta charset="UTF-8">' not in html[:500]:
            html = html.replace('<head>', '<head>\n  <meta charset="UTF-8">')

        # 7. Fix Skills Bubbles (Bug 3)
        # Correct emojis in bubblesData
        html = html.replace("'ÃƒÂ°Ã…Â¸Ã¢â‚¬Â Ã‚Â '", "'🚀'")
        html = html.replace("'ÃƒÂ¢Ã…â€œÃ‚Â ÃƒÂ¯Ã‚Â¸Ã‚Â '", "'✍️'")

        with open('index.html', 'w', encoding='utf-8') as f:
            f.write(html)
        
        print("Success: Fixed all bugs.")
    except Exception as e:
        print(f"Error: {str(e)}")

if __name__ == "__main__":
    fix_portfolio()
