$path = 'c:\Users\Acer\Downloads\project\index.html'
$content = Get-Content $path -Encoding UTF8

# Fix Social Bar (Line 1489, 1491 - 0-indexed: 1488, 1490)
$content[1488] = '    <a href="mailto:anshkush9292@gmail.com" class="social-icon"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1-2 .9-2 2v12c0 1.1.9 2 2 2H4c-1.1 0-2-.9-2-2V6c0-1.1-.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg></a>'
$content[1490] = '    <a href="#certs" class="social-icon"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="8" r="7"/><polyline points="8.21 13.89 7 23 12 20 17 23 15.79 13.88"/></svg></a>'

# Fix Navigation (Line 1509, 1511 - 0-indexed: 1508, 1510)
$content[1508] = '      <a href="mailto:anshkush9292@gmail.com" class="btn-nav">Let''s Build →</a>'
$content[1510] = '    <button class="hamburger" id="ham-btn">☰</button>'

# Fix Hero Orbit Pills (Line 1546-1552 - 0-indexed: 1545-1551)
$content[1545] = '    <div class="hero-pill" style="top: 25%; left: 30%; animation-delay: 0s;">🎯 Google Ads</div>'
$content[1546] = '    <div class="hero-pill" style="top: 20%; right: 35%; animation-delay: 1.5s;">📘 Meta Ads</div>'
$content[1547] = '    <div class="hero-pill" style="top: 75%; left: 32%; animation-delay: 2.5s;">📺 YouTube SEO</div>'
$content[1548] = '    <div class="hero-pill" style="top: 70%; right: 28%; animation-delay: 0.5s;">🔍 AEO/Schema</div>'
$content[1550] = '    <div class="orbit-icon" style="top: 22%; left: 50%; transform: translateX(-50%); animation-delay: 0s;">✍️</div>'
$content[1551] = '    <div class="orbit-icon" style="top: 78%; left: 50%; transform: translateX(-50%); animation-delay: 1s;">📊</div>'

# Fix Robot Emoji & Speech (Line 1580, 1581 - 0-indexed: 1579, 1580)
$content[1579] = '      <div class="speech-bubble" id="robot-speech">I just optimized a Google Ads campaign! 🎯</div>'
$content[1580] = '      <div class="robot-emoji" id="robot-main">🤖</div>'

# Fix Why Me Icons (L1748, L1753, L1758, L1763, L1768, L1773, L1780 - 0-indexed: 1747, 1752, 1757, 1762, 1767, 1772, 1779)
$content[1747] = '            <div class="wc-icon">🤖</div>'
$content[1752] = '            <div class="wc-icon">🎯</div>'
$content[1757] = '            <div class="wc-icon">🔍</div>'
$content[1762] = '            <div class="wc-icon">📊</div>'
$content[1767] = '            <div class="wc-icon">⚡</div>'
$content[1772] = '            <div class="wc-icon">🚀</div>'
$content[1779] = '          <div style="font-size: 32px;">🤖</div>'

# Fix Skills Engine & Tech Grid (L1814, L1821, L1822, L1828, L1843, L1844 - 0-indexed: 1813, 1820, 1821, 1827, 1842, 1843)
$content[1813] = '          <div class="ai-sh">🤖 AI Content Gen</div>'
$content[1820] = '          <div class="ai-sh">⚡ Campaign Auto</div>'
$content[1821] = '          <p style="font-size: 13px; color: var(--text-body);">AI-driven bidding, Advantage+, PMax — algorithms optimizing 24/7 while I focus on strategy.</p>'
$content[1827] = '          <div class="ai-sh">📊 Analytics Auto</div>'

# Fix Mobile Menu (L1522 - 0-indexed: 1521)
$content[1521] = '      <li><a href="mailto:anshkush9292@gmail.com" class="mob-cta mob-link">LET''S BUILD →</a></li>'

# Fix Marquee (L1615, L1617 - 0-indexed: 1614, 1616)
$content[1614] = '      <div class="marquee-item">Google Ads ✦  AI Automation ✦  YouTube SEO ✦  AEO/Schema ✦  Meta Ads ✦  Prompt Engineering ✦  Analytics ✦  UGC Ads ✦  Growth Strategy ✦</div>'
$content[1616] = '      <div class="marquee-item">Google Ads ✦  AI Automation ✦  YouTube SEO ✦  AEO/Schema ✦  Meta Ads ✦  Prompt Engineering ✦  Analytics ✦  UGC Ads ✦  Growth Strategy ✦</div>'

# Fix Project and Certifications Arrow (L1250, L1964, L2011, L2058, L2138, L2324, L2328 - 0-indexed: 1249, 1963, 2010, 2057, 2137, 2323, 2327)
$content[1249] = '    .eb-list li::before { content: ''→''; position: absolute; left: 0; top: 0; color: var(--primary); font-weight: 700; }'
$content[1963] = '          <button class="pc-expand-btn" style="width:100%; text-align:left; background:transparent; border:none; color:var(--primary); font-weight:600; cursor:pointer;" onclick="toggleProj(this)">Expand details ↓</button>'
$content[2010] = '          <button class="pc-expand-btn" style="width:100%; text-align:left; background:transparent; border:none; color:var(--primary); font-weight:600; cursor:pointer;" onclick="toggleProj(this)">Expand details ↓</button>'
$content[2057] = '          <button class="pc-expand-btn" style="width:100%; text-align:left; background:transparent; border:none; color:var(--primary); font-weight:600; cursor:pointer;" onclick="toggleProj(this)">Expand details ↓</button>'
$content[2137] = '            <button class="pc-expand-btn" style="background:transparent; border:none; color:var(--primary); font-weight:600; cursor:pointer; padding:0;" onclick="toggleProj(this)">View Framework Details ↓</button>'
$content[2323] = '            Let''s Build Together <span>→</span>'
$content[2327] = '            RESUME <span>↗</span>'

# Fix Thank You Emoji (L2334 - 0-indexed: 2333)
$content[2333] = '            <div class="ty-icon">💡</div>'

# Fix Hamburgers (L2431, L2437 - 0-indexed: 2430, 2436)
$content[2430] = '      hamBtn.innerText = mobMenu.classList.contains(''open'') ? ''✕'' : ''☰'';'
$content[2436] = '        hamBtn.innerText = ''☰'';'

# Fix Bubbles Data Array (L2585-2596 - 0-indexed: 2584-2595)
$content[2584] = '      { emoji: ''🎯'', label: ''Google Ads'', color: ''#FF6B2C'', size: 82, p: ''Google'', t: ''Search/PMax'', l: ''Advanced'', u: ''Lead Generation'' },'
$content[2585] = '      { emoji: ''📘'', label: ''Facebook Ads'', color: ''#1877F2'', size: 74, p: ''Meta'', t: ''Awareness'', l: ''Intermediate'', u: ''Brand + Sales'' },'
$content[2586] = '      { emoji: ''📷'', label: ''Instagram'', color: ''#E1306C'', size: 68, p: ''Meta'', t: ''Reels/Stories'', l: ''Intermediate'', u: ''Engagement'' },'
$content[2587] = '      { emoji: ''📺'', label: ''YouTube SEO'', color: ''#FF0000'', size: 78, p: ''YouTube'', t: ''Organic'', l: ''Advanced'', u: ''Top-of-Funnel'' },'
$content[2588] = '      { emoji: ''📊'', label: ''Analytics'', color: ''#F4B400'', size: 70, p: ''Google'', t: ''GA4 + Looker'', l: ''Advanced'', u: ''KPI Reporting'' },'
$content[2589] = '      { emoji: ''🤖'', label: ''ChatGPT'', color: ''#10A37F'', size: 76, p: ''OpenAI'', t: ''Generation'', l: ''Advanced'', u: ''Content/Strategy'' },'
$content[2590] = '      { emoji: ''🔍'', label: ''AEO/Schema'', color: ''#7B5EF8'', size: 72, p: ''Web/Google'', t: ''JSON-LD'', l: ''Growing'', u: ''AI Visibility'' },'
$content[2591] = '      { emoji: ''✍️'', label: ''Prompt Eng'', color: ''#10B981'', size: 70, p: ''All AI'', t: ''Structured'', l: ''Advanced'', u: ''10x Speed'' },'
$content[2592] = '      { emoji: ''💬'', label: ''Meta Ads'', color: ''#0082FB'', size: 66, p: ''Meta'', t: ''Advantage+'', l: ''Intermediate'', u: ''Conversions'' },'
$content[2593] = '      { emoji: ''🎨'', label: ''Canva'', color: ''#00C4CC'', size: 60, p: ''Canva'', t: ''Design'', l: ''Intermediate'', u: ''Ad Creatives'' },'
$content[2594] = '      { emoji: ''💡'', label: ''CRO'', color: ''#F59E0B'', size: 64, p: ''Analytics'', t: ''Optimization'', l: ''Growing'', u: ''CVR Uplift'' },'
$content[2595] = '      { emoji: ''🎬'', label: ''CapCut'', color: ''#FF6B2C'', size: 62, p: ''ByteDance'', t: ''Video Edit'', l: ''Intermediate'', u: ''UGC Ads'' }'

# Build final content and save
$finalContent = $content -join "`r`n"
$utf8NoBom = New-Object System.Text.UTF-8Encoding $false
[System.IO.File]::WriteAllText($path, $finalContent, $utf8NoBom)
