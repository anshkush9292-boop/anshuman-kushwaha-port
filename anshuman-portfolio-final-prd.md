# PRODUCT REQUIREMENT DOCUMENT
## Anshuman Kushwaha — AI-Driven Digital Growth Strategist
### V4 Portfolio — White × Orange Edition

---

```
Version    : V4.0 — Final Production Build
Date       : March 2026
Author     : Anshuman Kushwaha
Stack      : Single-file HTML · CSS3 · Vanilla JS · No frameworks
Theme      : White (#FFFFFF) + Orange (#FF6B2C)
Deploy     : Vercel (static site)
Status     : READY FOR ANTIGRAVITY BUILD
```

---

## TABLE OF CONTENTS

1. [Executive Summary](#1-executive-summary)
2. [Personal Info & Brand](#2-personal-info--brand)
3. [Design System](#3-design-system)
4. [Sitemap & Section Order](#4-sitemap--section-order)
5. [Loading Screen](#5-loading-screen) ⭐ NEW
6. [Fixed Global Elements](#6-fixed-global-elements) ⭐ NEW
7. [Custom Cursor](#7-custom-cursor) ⭐ NEW
8. [Navigation](#8-navigation)
9. [Hero Section](#9-hero-section)
10. [Marquee Strip](#10-marquee-strip)
11. [Stats Bar](#11-stats-bar)
12. [About Section](#12-about-section)
13. [Why You Need Me](#13-why-you-need-me)
14. [Skills Section](#14-skills-section)
15. [Experience Timeline](#15-experience-timeline)
16. [Projects / Case Studies](#16-projects--case-studies)
17. [Personal Project — AEO Engine](#17-personal-project--aeo-engine)
18. [Certifications](#18-certifications)
19. [Contact Section](#19-contact-section)
20. [Footer](#20-footer)
21. [Animations Master List](#21-animations-master-list)
22. [JS Interactions Master List](#22-js-interactions-master-list)
23. [Scroll Reveals](#23-scroll-reveals) ⭐ NEW
24. [Magnetic Buttons](#24-magnetic-buttons) ⭐ NEW
25. [Mobile Responsive](#25-mobile-responsive)
26. [AEO / Schema Markup](#26-aeo--schema-markup)
27. [Meta Tags](#27-meta-tags)
28. [Asset Inventory](#28-asset-inventory)
29. [Design Reference — Rajesh Portfolio](#29-design-reference--rajesh-portfolio)
30. [Build Checklist](#30-build-checklist)

---

## 1. Executive Summary

### Mission
> *"A portfolio that doesn't just show what I do — it demonstrates HOW I think, HOW I use AI, and WHY a client or employer should choose me over anyone else."*

### What This Portfolio Does
- **For HR / Recruiters** → Proves AI-augmented workflow, shows real certifications, clear experience timeline
- **For Clients** → Shows case study results with real numbers, "Why You Need Me" comparison, AEO proof
- **For Everyone** → Memorable design experience that itself demonstrates digital marketing expertise

### Design Inspiration
Adapted from **raxx21/rajesh-portfolio** (GitHub, 63 stars) — a developer portfolio with:
- Large 3D character center of hero
- Name LEFT bottom / Role RIGHT bottom split
- Ghost word outline effect
- Minimal nav with email center
- Fixed left social bar
- Fixed bottom-right resume button

**Key adaptation:** Their dark theme + Three.js → Our **White + Orange** + pure CSS/JS

---

## 2. Personal Info & Brand

```
Full Name     : Anshuman Kushwaha
Role          : AI-Driven Digital Growth Strategist
Location      : Gurgaon, Haryana, India
Email         : anshkush9292@gmail.com
LinkedIn      : linkedin.com/in/anshuman-kushwaha-31bb95237
Education     : BBA — JK Business School (Aug 2024 – Oct 2027)
Current Job   : Digital Marketing Strategist @ NMQ Digital India (Jun 2025–Present)
Previous      : HR Assistant @ Cook N Klean (Jul–Oct 2024)
```

### Core Skills
`Google Ads` `Meta Ads` `YouTube SEO` `AEO/Schema` `AI Automation`
`Prompt Engineering` `Google Analytics GA4` `Looker Studio`
`UGC Ads` `CRO` `Canva` `CapCut` `HTML/Replit`

### AI Stack
`ChatGPT` `Claude` `Gemini` `GitHub Copilot`

---

## 3. Design System

### Color Palette

| Token | Hex | Usage |
|---|---|---|
| `--primary` | `#FF6B2C` | Orange — CTAs, highlights, hover, badges |
| `--dark` | `#1A1A1A` | Headlines, nav, dark cards, footer |
| `--bg-white` | `#FFFFFF` | Main background, cards, hero |
| `--bg-light` | `#F9F9F9` | Section alternates, skill cards |
| `--text-body` | `#555555` | Body text, descriptions |
| `--text-muted` | `#888888` | Subtitles, labels, meta |
| `--border` | `#F0F0F0` | Card borders, dividers |
| `--border-med` | `#EBEBEB` | Stronger dividers |
| `--orange-tint` | `#FFF5F0` | Tag bg, hover state, callout boxes |
| `--accent-purple` | `#7B5EF8` | AEO/Schema section, project 02 |
| `--accent-green` | `#10B981` | Validation badge, success states |
| `--accent-blue` | `#0EA5E9` | Project 03 accent |
| `--accent-teal` | `#10B981` | Project 04 accent |

### Typography

| Element | Font | Weight | Size | Notes |
|---|---|---|---|---|
| H1 Hero Name | Syne | 800 | `clamp(46px,7vw,82px)` | Uppercase, -3px spacing |
| H1 Role | Syne | 800 | `clamp(46px,7vw,82px)` | Uppercase, -3px spacing |
| H2 Section | Syne | 800 | `clamp(32px,5.5vw,54px)` | -2px spacing |
| H3 Sub-section | Syne | 700 | `16px` | Uppercase labels |
| Stat Numbers | Syne | 800 | `44px` | Orange color |
| Body | DM Sans | 400 | `13px` | Line-height 1.9 |
| Labels | DM Sans | 700 | `10–11px` | Uppercase, letter-spacing 2–3px |
| Nav links | DM Sans | 400 | `10px` | Uppercase, letter-spacing 3px |

**Google Fonts import:**
```
Syne:wght@600;700;800 + DM Sans:wght@300;400;500;600
```

### Spacing & Layout

| Property | Value |
|---|---|
| Section padding | `88px 80px` (desktop) / `64px 28px` (mobile) |
| Max content width | `1100px` centered |
| Grid gap trick | `1px` gap + `#ebebeb` bg = seamless divider |
| Card border-radius | `0` sharp (cards) / `100px` pill (badges) / `16px` (floating cards) |
| Breakpoints | `1140px` / `900px` / `768px` / `700px` / `600px` |

---

## 4. Sitemap & Section Order

```
┌─────────────────────────────────────────────────┐
│  LOADING SCREEN (2.2s)                           │
├─────────────────────────────────────────────────┤
│  NAV (fixed top)                                 │
│  SOCIAL BAR (fixed left)    RESUME (fixed BR)    │
├─────────────────────────────────────────────────┤
│  01 HERO           → First impression + robot    │
│  02 MARQUEE        → Trust + keyword density     │
│  03 STATS BAR      → Instant credibility         │
│  04 ABOUT          → Story + philosophy          │
│  05 WHY YOU NEED ME → Core business case ★       │
│  06 SKILLS         → Expertise depth proof ★     │
│  07 EXPERIENCE     → Background credibility      │
│  08 WORK/PROJECTS  → Case study proof ★          │
│  09 PERSONAL PROJECT → AEO innovation proof ★   │
│  10 CERTIFICATIONS → Credential trust            │
│  11 CONTACT        → Conversion CTA              │
│  12 FOOTER         → Brand close                 │
└─────────────────────────────────────────────────┘
★ = Highest priority conversion sections
```

---

## 5. Loading Screen ⭐ NEW

**Behavior:** Full-screen white overlay that appears first, fades out after 2.2 seconds.

```
Background  : #FFFFFF full viewport
Z-index     : 9999 (above everything)
Fade out    : opacity 1→0, transition .5s ease, then display:none
```

**Content (centered vertically + horizontally):**
```
🤖  (60px, gentle float animation)

"Bootstrapping AI Modules..."   ← main text, Syne 800

Typewriter cycling:
  → "Loading Growth Systems..."
  → "Connecting to AI Stack..."
  → "Initializing Analytics..."
  → "Portfolio Ready."

Orange progress bar at bottom:
  height: 3px
  background: #FF6B2C
  width: 0% → 100% over 2s (linear)
  position: fixed bottom 0
```

**JS:**
```js
window.addEventListener('load', () => {
  setTimeout(() => {
    document.getElementById('loader').style.opacity = '0';
    setTimeout(() => {
      document.getElementById('loader').style.display = 'none';
    }, 500);
  }, 2200);
});
```

---

## 6. Fixed Global Elements ⭐ NEW (Rajesh Style)

### Left Social Bar

```css
Position  : fixed, left: 24px, top: 50%, translateY(-50%)
Direction : column, gap: 18px
Z-index   : 150
Hide      : below 900px
```

**4 icons:**
| Icon | Link | Title |
|---|---|---|
| 🔗 | linkedin.com/in/anshuman-kushwaha-31bb95237 | LinkedIn |
| ✉️ | mailto:anshkush9292@gmail.com | Email |
| 📊 | #work | Work |
| 🏆 | #certs | Certs |

**Style each icon:**
- 36px circle, border `1.5px solid #e8e8e8`, bg white
- Shadow: `0 2px 8px rgba(0,0,0,.06)`
- Hover: border orange, color orange, scale(1.12), orange shadow

### Bottom-Right Resume Button ⭐ NEW

```css
Position  : fixed, bottom: 28px, right: 32px
Z-index   : 150
Hide      : below 768px
```

```
Text     : "RESUME" + ↗ small box icon
Font     : Syne 700, 10px, letter-spacing 3px, uppercase
Color    : #999 default → #FF6B2C hover
Icon box : 22px square, 1.5px border, 3px border-radius
```

---

## 7. Custom Cursor ⭐ NEW (Rajesh Style)

```css
body { cursor: none; }

#cur  — small dot
  width: 10px, height: 10px, border-radius: 50%
  background: #FF6B2C
  position: fixed, z-index: 9999
  transform: translate(-50%, -50%)
  mix-blend-mode: multiply
  transition: transform .08s

#cur2 — lagging ring
  width: 38px, height: 38px, border-radius: 50%
  border: 1.5px solid #FF6B2C
  position: fixed, z-index: 9998
  transform: translate(-50%, -50%)
  opacity: .45
  transition: left .12s, top .12s, width .3s, height .3s, opacity .3s

#cur2.big (on hover over interactive elements)
  width: 70px, height: 70px, opacity: .18
```

**JS:**
```js
document.addEventListener('mousemove', e => {
  cur.style.left = e.clientX + 'px';
  cur.style.top = e.clientY + 'px';
  setTimeout(() => {
    cur2.style.left = e.clientX + 'px';
    cur2.style.top = e.clientY + 'px';
  }, 80);
});
// Add .big on hover for all: a, button, .ccard, .bub, .pcard, .wcard
```

---

## 8. Navigation

```css
Position    : fixed top, z-index: 200
Padding     : 22px 48px
Background  : transparent → rgba(255,255,255,.95) on scroll
Backdrop    : blur(20px) on scroll
Border-bot  : none → 1px solid #f0f0f0 on scroll
Box-shadow  : 0 1px 0 #f0f0f0 on scroll (.sc class)
```

**Layout:**
```
[AK.]          [anshkush9292@gmail.com]          [About | Why Me | Work | Skills | Certs | Let's Build →]
 logo left          center absolute                              links right
```

**Logo:** `AK.` — Syne 800, 22px, dot orange

**Center email:**
```css
position: absolute, left: 50%, transform: translateX(-50%)
font-size: 10.5px, color: #999, letter-spacing: .5px
hover: color #FF6B2C
hide below 900px
```

**Nav links:** 10px, uppercase, letter-spacing 3px, color #888 → orange hover

**CTA button:** `Let's Build →`
- bg #1a1a1a, color white, 9px 20px padding
- hover: bg #FF6B2C, border #FF6B2C

### Mobile Menu (Improved) ⭐ NEW

```
Trigger     : ☰ hamburger, shows below 900px
Animation   : max-height 0 → auto (smooth slide down)
Background  : white, border-bottom
```

**Menu items:**
- Each link: `display:block`, padding `11px 0`, font 10px uppercase
- Border-bottom separator between items
- Each link closes menu on click (JS onclick)
- CTA button: orange full-width at bottom, padding 12px

---

## 9. Hero Section

```css
min-height  : 100vh
display     : flex flex-direction column justify-content flex-end
padding     : 0 80px 56px (desktop) / 0 28px 48px (mobile)
background  : #fff
overflow    : hidden
```

### Orange Glow (Rajesh teal → our orange)

```css
.hero-glow
  position: absolute, top: 46%, left: 50%, translate(-50%,-50%)
  width: 560px, height: 560px, border-radius: 50%
  background: radial-gradient(circle, rgba(255,107,44,.11) 0%, rgba(255,107,44,.04) 50%, transparent 72%)
  animation: glowPulse 4s ease-in-out infinite

.hero-glow2
  same position, 800px × 800px
  background: radial-gradient(circle, rgba(255,107,44,.04) 0%, transparent 65%)
```

### Orbit Rings (3 rings) ⭐ NEW (added 3rd ring)

```
Ring 1 : 360px, dashed rgba(255,107,44,.18), spin 24s clockwise
Ring 2 : 275px, dashed rgba(255,107,44,.13), spin 36s counter-clockwise
Ring 3 : 460px, dashed rgba(255,107,44,.07), spin 48s clockwise ← NEW
All centered absolutely behind robot
```

### Robot (Center, Large) ⭐ IMPROVED

```css
Position    : absolute, top: 46%, left: 50%, translate(-50%,-52%)
Font-size   : clamp(130px, 17vw, 190px)
Z-index     : 3
Filter      : drop-shadow(0 28px 56px rgba(255,107,44,.22))
Cursor      : pointer
```

**Animation sequence — Robot is ALIVE:**

| State | Animation | Trigger |
|---|---|---|
| Idle | `floatR` — translateY 0↔-16px, 3.5s loop | Always |
| Hover | scale(1.07) rotate(-5deg), filter glow | Mouse hover |
| Click | `robotPop` — scale 1.13, rotate -7deg → 1.05 rotate 3deg → back | onClick |
| After click | Resume `floatR` | Auto |
| Auto-wave ⭐ | `robotWave` — rotate -3deg↔3deg, .8s | Every 8s via setInterval |

**Robot speech bubble:**
```css
Position    : absolute, top: -64px, left: 50%, translateX(-50%)
Background  : #1a1a1a, border-radius: 12px, padding: 10px 16px
Arrow       : CSS border trick pointing down
Opacity     : 0 → 1 (.4s) → 0 after 3.2s
min-width   : 210px, text-align: center
```

**7 speech bubble messages (cycle on click):**
```
1. "I just optimized a Google Ads campaign! 🎯"
2. "AEO schema validated ✓ Rich Results ready!"
3. "Running YouTube SEO analysis... 📺"
4. "Building your growth engine ⚙️"
5. "Data: increase budget on campaign 3 📊"
6. "5 AI-written ad headlines in 10 seconds ⚡"
7. "Full-funnel dashboard is live 📈"
```

**Auto-wave JS:**
```js
setInterval(() => {
  robo.classList.add('wave');
  setTimeout(() => robo.classList.remove('wave'), 800);
}, 8000);
```

### 6 Orbit Icons

```
🎯  top-center     (targeting/ads)
📊  bottom-center  (analytics)
✍️  left-middle    (content writing)
🔍  right-middle   (SEO/schema)
📺  top-right      (YouTube)
🤖  bottom-left    (AI automation)

Each: 44px white card, 1px border #ebebeb, shadow
      animation: floatR 4s ease-in-out, staggered delays
```

### 4 Floating Skill Pills

```
"🎯 Google Ads"   — top-left area
"📘 Meta Ads"     — top-right area
"📺 YouTube SEO"  — bottom-left area
"🔍 AEO/Schema"   — bottom-right area

Style: white card, border, shadow, border-radius 100px
Animation: floatR 3.5s, staggered delays
```

### AI-Augmented Badge (Right of Robot)

```css
Position  : absolute, right: calc(50% - 370px), top: 42%, translateY(-50%)
Width     : 210px, z-index: 5
Background: #1a1a1a, border-radius: 16px, padding: 18px 20px
Shadow    : 0 20px 60px rgba(0,0,0,.14) + 0 0 0 1px rgba(255,107,44,.08)
Hide      : below 1140px
```

**Content:**
```
⚡ AI-AUGMENTED STRATEGIST   ← orange, Syne 800, uppercase, letter-spacing 2px

● Campaigns  [AI-Optimized]   ← pulsing dot + label + orange pill value
● Content    [AI-Generated]
● Analytics  [Real-time]
● SEO / AEO  [AI-Structured]
● Reports    [Automated]

───────────────────────────
Claude · GPT-4 · Gemini · Copilot   ← tiny, muted #444
```

### Stat Card (Left of Robot)

```css
Position  : absolute, left: calc(50% - 370px), top: 42%, translateY(-50%)
Background: #fff, border: 1px solid #ebebeb
Shadow    : 0 8px 32px rgba(0,0,0,.08), border-radius: 16px
Padding   : 16px 20px, z-index: 5
Hide      : below 1140px
```

**Content:**
```
2+ Yrs     ← Syne 800, 26px, orange
AI & AUTOMATION  ← 10px, muted, uppercase
───────────
10+        ← Syne 800, 20px, orange
Certifications  ← 9px, muted
```

### 8 Floating Background Metrics

```
CTR 7%+  |  ROAS 4x  |  CAC ₹150  |  AVD 45%
800+ Views  |  Schema ✓  |  AI Driven  |  JSON-LD ✓

Style   : font 11px, Syne 800, letter-spacing 2px
Color   : rgba(255,107,44,.055) — very faint
Position: scattered across hero, position absolute
Animation: fbgF — float + rotate ±2deg + opacity pulse, 12s, staggered delays
```

### Hero Bottom — Rajesh Split Layout

**LEFT side:**
```
[Availability badge]
  → "Open to Opportunities" — orange pill, pulsing dot

[Name — MASSIVE]
  → "ANSHUMAN" — Syne 800, clamp(46px,7vw,82px), uppercase, -3px spacing
  → "KUSHWAHA" — same, second line

[Buttons]
  → "View Work →"  (orange fill .btnp)
  → "Why Hire Me"  (dark border .btno)
```

**RIGHT side:**
```
[Ghost word — Rajesh effect]
  → "STRATEGIST" — -webkit-text-stroke: 1.5px rgba(255,107,44,.16)
    color: transparent, same font size, absolute behind main text

[Main role text]
  → "AI-DRIVEN"   line 1
  → "GROWTH."     line 2 — GROWTH in #FF6B2C orange
  Font: Syne 800, clamp(46px,7vw,82px), uppercase, -3px spacing

[Subtitle]
  → "I build AI-powered growth engines — ads, YouTube SEO,
     AEO content and automation that generate leads and
     compound results every month."
  Font: DM Sans 400, 12px, color #888, line-height 1.82
  max-width: 310px, text-align: right
```

---

## 10. Marquee Strip

```css
Background: #FF6B2C
Padding   : 11px 0
Animation : marq — translateX(0 → -50%) 22s linear infinite
```

**Items (duplicate for seamless loop):**
```
Google Ads ✦  AI Automation ✦  YouTube SEO ✦  AEO/Schema ✦
Meta Ads ✦  Prompt Engineering ✦  Analytics ✦  UGC Ads ✦  Growth Strategy
```
Each item: white, 10px, Syne 700, uppercase, letter-spacing 3px

---

## 11. Stats Bar

```css
Background  : #f9f9f9
Border      : top + bottom 1px solid #f0f0f0
Padding     : 48px
```

**5 stats with count-up animation:**

| Stat | Target | Suffix | Label |
|---|---|---|---|
| s1 | 5 | — | Projects Done |
| s2 | 800 | + | Views Projected |
| s3 | 50 | K | Budget Managed (₹) |
| s4 | 10 | + | Certifications |
| s5 | 9 | + | Months Experience |

**Count-up JS:**
```js
// 44 steps, 26ms interval per stat
setInterval(() => {
  n += target/44;
  if(n >= target) { n = target; clearInterval(tm); }
  el.textContent = prefix + Math.floor(n) + suffix;
}, 26);
```

**Layout:** 5-column grid, vertical 1px dividers between stats, centered text

---

## 12. About Section

**Layout:** 2-column, 1px gap, `#ebebeb` background = seamless divider
```
Left  : white bg (#fff)   — Bio content
Right : light bg (#f9f9f9) — Philosophy slides
```

### Left — Bio

**Headline:** "I build **AI-powered** growth systems that compound." (orange bold)

**3 paragraphs:**
```
1. Who I am — Gurgaon, combine performance marketing + YouTube SEO + AEO + AI automation
2. My edge — architect systems, not just campaigns. Measurable: leads, CVR, revenue
3. AI in 2026 — how I think, research, build, optimize. From prompt-engineered copy to FAQPage schema
```

**NMQ callout box:**
```
Style     : bg #fff5f0, border-left 3px solid #FF6B2C
Label     : "CURRENTLY" — orange, uppercase, tiny
Title     : "Digital Marketing Strategist @ NMQ Digital India"
Subtitle  : "AI Automation · Campaign Mgmt · Analytics · Growth"
```

**Skill tags:**
```
📍 Gurgaon, India
🎓 BBA · JK Business School
```

### Right — Growth Philosophy

**Label:** "MY GROWTH PHILOSOPHY" — orange, uppercase

**5 numbered buttons:** `01` `02` `03` `04` `05`
- Default: white bg, `#e8e8e8` border, `#888` text
- Active: `#FF6B2C` bg, white text

**5 slide contents** (fadeUp animation on switch):

| # | Title | Description |
|---|---|---|
| 01 | Strategy before spending | Every rupee has a purpose. Map full funnel before touching budget. Every touchpoint intentional and measurable. |
| 02 | Data before decisions | Gut feel has its place, but data wins. CTR, CAC, AVD, LTV — numbers guide every optimization call. |
| 03 | Systems before scaling | Don't scale what's broken. Build the engine first — tight audience, validated messaging, proven funnel. Then pour fuel. |
| 04 | AI as a force multiplier | AI doesn't replace strategy — it amplifies it. Research faster, write better, test more, analyze deeper. 10x output. |
| 05 | Optimization before expansion | Fix the leaks before adding water. CVR, Quality Score, CTR — optimize first, scale second. Always. |

**Slide card style:**
```css
background  : #fff5f0
border-left : 3px solid #FF6B2C
border-radius: 0 10px 10px 0
padding     : 22px 26px

Big faded number: Syne 800, 40px, #FF6B2C, opacity .22
Title: Syne 700, 18px, #1a1a1a
Text: DM Sans, 13px, #666, line-height 1.9
```

---

## 13. Why You Need Me

**This is the highest-priority section for HR and client conversion.**

```css
Background  : #1a1a1a (dark)
Padding     : 88px 80px
Overflow    : hidden
```

**Subtle decoration:** Orange radial glow top-right: `rgba(255,107,44,.07)`, 600px, pointer-none

**Layout:** 2-column grid, 56px gap, align-items start

### Left Column

**Section label:** "VALUE PROPOSITION" — muted, uppercase, orange line

**Headline:**
```
"Why Your Brand"    ← white, Syne 800, large
"Needs Me."         ← #FF6B2C orange
```
Size: clamp(30px, 4.5vw, 50px), Syne 800, -2px spacing

**Subtext:**
```
"Most marketers run ads. I build growth engines.
Systems that work while you sleep — powered by AI,
driven by data, built for scale."
```

**3 Impact Stats:**
```
10x    — Output via AI
4+     — Channels in Sync
60%    — Faster Execution

Style: Syne 800, 38px, #FF6B2C
Label: 10px, #555, uppercase, letter-spacing 1.5px
```

**"Without Me → With Me" Table:**
```css
background  : rgba(255,255,255,.03)
border      : 1px solid rgba(255,255,255,.07)
border-radius: 14px, padding: 22px
```

| Without Me | → | With Me |
|---|---|---|
| ~~Generic ad copy~~ | → | **AI-crafted, tested copy** |
| ~~Guessing keywords~~ | → | **Data-driven keyword strategy** |
| ~~No AEO / schema~~ | → | **AI-search ready content** |
| ~~Siloed channels~~ | → | **Unified cross-channel funnel** |
| ~~Monthly PDF reports~~ | → | **Real-time dashboards** |
| ~~Slow manual execution~~ | → | **AI-automated workflows** |

Left side: `color: #444`, `text-decoration: line-through`
Right side: `color: #e0e0e0`, `font-weight: 600`

### Right Column

**6 Value Cards (2×3 grid):**

```css
background    : rgba(255,255,255,.04)
border        : 1px solid rgba(255,255,255,.08)
border-radius : 14px, padding: 22px
hover         : bg rgba(255,107,44,.08), border rgba(255,107,44,.25), translateY(-3px)
transition    : all .3s
```

| Icon | Title | Description |
|---|---|---|
| 🤖 | AI-First Workflow | Every campaign, content, report AI-augmented — faster decisions, higher output, lower cost. |
| 🎯 | Full-Funnel Ownership | Google + Meta + YouTube + Analytics. One strategist, complete customer journey. |
| 🔍 | AEO Ready | Content for Perplexity, ChatGPT, Google AI Overviews — visible in the new AI-first search. |
| 📊 | Data, Not Guesses | Looker Studio: CAC, LTV, ROAS in real-time. Every rupee justified by numbers. |
| ⚡ | Speed to Market | 60% faster execution via AI automation. Campaigns live faster, creatives done faster. |
| 🚀 | Compound Growth | Systems, not campaigns. Every month's work makes the next month stronger. |

**Bottom Banner:**
```css
background  : rgba(255,107,44,.08)
border      : 1px solid rgba(255,107,44,.18)
border-radius: 14px, padding: 20px
display     : flex, align-items: center, gap: 14px
```
```
🤖  "I deliver WITH AI. Not just ON AI."
    "Not someone who just prompts ChatGPT. I build AI-powered
     workflows generating real, measurable business results."
```

---

## 14. Skills Section

**Background:** `#f9f9f9`

### Layer 1 — Antigravity Bubble Arena

```css
height        : 440px
background    : linear-gradient(135deg, #fafafa 0%, #fff 100%)
border        : 1px solid #ebebeb
border-radius : 20px
overflow      : hidden
margin-bottom : 28px
```

**Dot grid pattern (subtle):** ⭐ NEW
```css
background-image: radial-gradient(circle, #e0e0e0 1px, transparent 1px);
background-size: 28px 28px;
opacity: .4;
```

**12 Bubbles:**

| Emoji | Label | Color | Size |
|---|---|---|---|
| 🎯 | Google Ads | `#FF6B2C` | 82px |
| 📘 | Facebook Ads | `#1877F2` | 74px |
| 📸 | Instagram | `#E1306C` | 68px |
| 📺 | YouTube SEO | `#FF0000` | 78px |
| 📊 | Analytics | `#F4B400` | 70px |
| 🤖 | ChatGPT | `#10A37F` | 76px |
| 🔍 | AEO/Schema | `#7B5EF8` | 72px |
| ✍️ | Prompt Eng | `#10B981` | 70px |
| 💬 | Meta Ads | `#0082FB` | 66px |
| 🎨 | Canva | `#00C4CC` | 60px |
| 💡 | CRO | `#F59E0B` | 64px |
| 🎬 | CapCut | `#FF6B2C` | 62px |

**Bubble style:**
```css
border-radius   : 50%
background      : color + "12" (12% opacity)
border          : 2px solid color + "28" (28% opacity)
animation       : antigrav, duration: 4–10s random, delay: 0–4s random
cursor          : pointer

hover:
  transform     : scale(1.18) !important
  box-shadow    : 0 16px 40px rgba(255,107,44,.18)
  border-color  : #FF6B2C
  z-index       : 10
```

**Tooltip popup (fixed position):**
```css
position        : fixed
background      : #1a1a1a
border-radius   : 14px, padding: 16px 20px
max-width       : 250px
box-shadow      : 0 20px 60px rgba(0,0,0,.3)
pointer-events  : none
```

Tooltip content per bubble:
```
[Emoji + Name]  ← orange title, Syne 700

Platform  :  [value]    ← each row has separator
Type      :  [value]
Level     :  [value]
Use       :  [value]
```

**Tooltip popup data:**

| Bubble | Platform | Type | Level | Use |
|---|---|---|---|---|
| Google Ads | Google | Search/PMax/Display | Advanced | Lead Generation |
| Facebook Ads | Meta | Awareness + Retargeting | Intermediate | Brand + Sales |
| Instagram | Meta | Reels/Stories/Feed | Intermediate | Engagement |
| YouTube SEO | YouTube | Organic Growth | Advanced | Top-of-Funnel |
| Analytics | Google | GA4 + Looker Studio | Advanced | KPI Reporting |
| ChatGPT | OpenAI | AI Generation | Advanced | Content + Strategy |
| AEO/Schema | Web/Google | JSON-LD/FAQPage | Growing | AI Search Visibility |
| Prompt Eng | All AI | Structured Prompting | Advanced | 10x Output Speed |
| Meta Ads | Meta | Advantage+ Campaigns | Intermediate | Conversions |
| Canva | Canva | Design | Intermediate | Ad Creatives |
| CRO | Analytics | Conversion Rate Opt | Growing | CVR Uplift |
| CapCut | ByteDance | Video Editing | Intermediate | UGC Ads |

### Layer 2 — AI & Automation Stack

**3-column grid** (1px gap, `#ebebeb` bg = seamless)

Each card:
```css
background  : #fff
padding     : 30px
hover       : background #fffaf7
```

**3 Cards:**

```
🤖 AI Content Generation
   "Prompt-engineered copy 10x faster with consistent
    brand voice and measurable CTR improvements."
   Tools: [ChatGPT] [Claude] [Gemini] [Copilot]

⚡ Campaign Automation
   "AI-driven bidding, Advantage+, PMax — algorithms
    optimizing 24/7 while I focus on strategy."
   Tools: [Google PMax] [Meta Advantage+] [Smart Bidding]

📊 Analytics Automation
   "Looker Studio dashboards — no manual reporting,
    instant decisions, real-time budget reallocation."
   Tools: [GA4] [Looker Studio] [Search Console]
```

**Tool tags:**
```css
font-size: 10px, padding: 3px 9px, border-radius: 100px
background: #f5f5f5, color: #666, border: 1px solid #e8e8e8
```

### Layer 3 — Technical Skills Grid (4×3)

**12 cards:**
```css
background  : #fff
border      : 1px solid #ebebeb
padding     : 22px 16px
text-align  : center

hover:
  border-color  : #FF6B2C
  transform     : translateY(-3px)
  box-shadow    : 0 10px 28px rgba(255,107,44,.09)

::after (orange bottom border reveal):
  content   : ''
  position  : absolute, bottom: 0, left: 0
  width     : 100%, height: 3px
  background: #FF6B2C
  transform : scaleX(0) → scaleX(1) on hover
  transition: transform .3s, transform-origin: left
```

**12 Skills:**

| Icon | Name | Subtitle |
|---|---|---|
| 🎯 | Google Ads | Search, Display, PMax |
| 📘 | Facebook Ads | Funnels, Retargeting |
| 📸 | Instagram Ads | Reels, Stories, Feed |
| 📺 | YouTube SEO | Tags, Titles, AVD |
| 📊 | Google Analytics | GA4, Events, Funnels |
| 📈 | Looker Studio | Real-time Dashboards |
| 🔍 | AEO / Schema | FAQPage, JSON-LD |
| 🤖 | AI Automation | Workflows, Prompting |
| 🎬 | UGC Ads | Hooks, A/B Testing |
| 📱 | Meta Ads Manager | Advantage+, Audiences |
| 💻 | HTML / Replit | Schema, Landing Pages |
| 🎨 | Canva / CapCut | Creatives, Video Editing |

---

## 15. Experience Timeline

```css
.etl::before  — left border: 2px, gradient #FF6B2C → transparent (top to bottom)
padding-left  : 40px
```

**Timeline dot per item:**
```css
position      : absolute, left: -47px, top: 26px
width: 16px, height: 16px, border-radius: 50%
background    : #fff, border: 3px solid #FF6B2C
hover         : background #FF6B2C, transform scale(1.3)
```

**Each item behavior:**
- Click header → expands body (max-height: 0 → 500px, cubic-bezier)
- Only ONE open at a time
- Header turns solid `#FF6B2C` when open
- All text in header goes white when open
- `+` becomes `×` when open (click to close)

### 3 Experience Entries

**1. Digital Marketing Strategist**
```
Company : NMQ Digital India
Period  : Jun 2025 — Present
Badge   : Full-time
Tags    : [Google Ads] [Meta Ads] [AI Automation] [Analytics]
Points  :
  → Integrated AI automation to streamline workflows by 40%
  → Optimized marketing funnels across Google Ads and Meta
  → Applied prompt engineering for ad copy and automation
  → Built Looker Studio dashboards — CAC, LTV, ROAS, 4+ channels
```

**2. Digital Marketing Intern**
```
Company : Self-Initiated Projects
Period  : Jan 2025 — May 2025
Badge   : Internship
Tags    : [YouTube SEO] [AEO Schema] [Google Ads]
Points  :
  → YouTube SEO strategy — 800+ projected views, 7%+ CTR, 45%+ AVD
  → Implemented FAQPage JSON-LD validated via Google Rich Results Test
  → Google Ads for coaching — 4-6% CTR, ₹150+ CPL, 40-60 leads/mo
  → Mattr AI campaign across 5 channels — ₹50K budget, 80+ trials
```

**3. HR Assistant**
```
Company : Cook N Klean
Period  : Jul 2024 — Oct 2024
Badge   : Full-time · Varanasi
Tags    : [Recruitment] [HR Communication] [Team Management]
Points  :
  → Streamlined talent acquisition via structured frameworks
  → Coordinated end-to-end interview processes
  → Developed internal communication strategies
```

---

## 16. Projects / Case Studies

**Background:** `#f9f9f9`

**Grid:** 2-column, 1px gap, `#ebebeb` background

**Each project card:**
```css
background      : #fff, padding: 32px
hover           : background #fffaf7
border-bottom   : 3px solid transparent → color on hover
```

**Card anatomy:**
```
[Big faded number — 56px, #f0f0f0, transitions to color on card hover]
[Tags — colored pills]
[Project title — Syne 700, 17px]
[Client name — 11px, muted]
[4 metric tiles — dark bg #1a1a1a, orange value, muted label]
[Expand button — "＋ Expand details" → "− Collapse"]
[Detail area — max-height 0 → 600px, smooth transition]
```

### 4 Projects

**01 — Google Ads, Kush Academy** `#FF6B2C`
```
Tags    : Google Ads | Lead Gen | Local
Metrics : CTR 4-6% | CVR 8-12% | CPL ₹150+ | 40-60 Leads/Mo
Detail  : High-intent keyword targeting for IIT JEE, NEET, UPSC & CAT coaching.
          Geo-targeted Gurgaon. Target CPA bidding.
          Separate ad groups per exam vertical.
          AI-generated copy variants for A/B testing.
```

**02 — YouTube SEO, AI Agentic Workflows** `#7B5EF8`
```
Tags    : YouTube SEO | AI | Growth
Metrics : 800+ Views | 7%+ CTR | 45%+ AVD | 40%+ YT Search
Detail  : 30-tag architecture, curiosity-gap titles,
          chapter markers for dual indexing.
          Targeting financial advisors interested in AI automation.
          Thumbnail psychology + CTR optimization applied.
```

**03 — Mattr AI App Builder** `#0EA5E9`
```
Tags    : Campaign | AI Product | Multi-channel
Metrics : ₹50K Budget | 1,500+ Visits | 80+ Trials | 15% CVR Uplift
Detail  : 30-day campaign — Google Search + LinkedIn +
          Meta + Content SEO + PLG.
          Persona-based: founders, students, freelancers.
```

**04 — Analytics Dashboard** `#10B981`
```
Tags    : Looker Studio | Analytics | Real-time
Metrics : 4+ Channels | Live Data | CAC Optimized | MRR Tracked
Detail  : Centralized Looker Studio dashboard.
          Tracks CTR, CAC, LTV, ROAS across all channels.
          Connected GA4 + Search Console + Social.
          Real-time budget reallocation capability.
```

> 📌 **Note:** Screenshots (YouTube analytics, Looker Studio GA4 dashboard) will be injected separately as base64 images after Antigravity build.

---

## 17. Personal Project — AEO Engine

**Layout:** Full-width 2-column, 1px gap
```
LEFT  : dark card #1a1a1a (order 1)
RIGHT : light card #f9f9f9 (order 2)
```

> 📌 **Note:** No screenshots in Antigravity build. Text + styled boxes only. Screenshots injected separately.

### Left Dark Card

```
[Top badges row]
  "🔬 Personal Project" — orange badge pill
  "Self-Initiated"       — subtle white/transparent tag

[Title]
  "AEO Content Engine"
  "CAC Article + Schema Markup"  ← orange

[Description]
  "Built a snippet-friendly AEO article on Customer Acquisition Cost
   with FAQPage JSON-LD schema — validated via Google Rich Results Test.
   Structured for Perplexity, ChatGPT & Google AI Overviews."

[Tech tags]
  [AEO] [FAQPage JSON-LD] [Schema Markup] [Replit/HTML]
  Style: white/transparent, small pills

[Validation result box — GREEN TINTED]
  Background: rgba(16,185,129,.12)
  Border: 1px solid rgba(16,185,129,.3)
  Large "✓" + "1 Valid Item Detected"
  "Validated by Google Rich Results Test"

[What it proves box — ORANGE TINTED]
  Background: rgba(255,107,44,.08)
  Border: 1px solid rgba(255,107,44,.18)
  "This proves I can implement the very AEO techniques
   I recommend to clients — with validated proof."
```

**Decorative:** large semi-transparent circle top-right corner

### Right Light Card

**Label:** "HOW I BUILT IT" — orange, uppercase

**4 steps** (each with separator line):

```
01 — Identified the Gap
     No machine-readable answers for top CAC questions.
     AI search engines couldn't surface direct answers.
     This was a clear AEO opportunity.

02 — Wrote AEO-Optimized Content
     Created 40-60 word direct answers, clear headings,
     CAC example calculations, LTV:CAC guidance.
     Every answer designed to be snippet-ready.

03 — Implemented FAQPage JSON-LD
     Structured data matching on-page content exactly.
     Makes page eligible for Google rich results
     and AI knowledge panels.

04 — Validated with Rich Results Test
     Google confirmed: "1 valid item detected."
     FAQ schema confirmed eligible for rich results.
```

**Next Steps (orange callout box):**
```
Label: "NEXT STEPS" — orange uppercase

→ Add 2 more pages: Conversion Quick Wins + LTV
→ Combine into full case study + publish live link
→ Build targeted AEO outreach offer for clients

Style: background #fff5f0, border rgba(255,107,44,.2), border-radius 10px
```

---

## 18. Certifications

```css
grid            : 3-column (desktop) / 2-column (mobile)
card height     : 200px
cursor          : pointer
```

**Flip mechanism:**
```css
.ccard          { perspective: 800px }
.cin            { transform-style: preserve-3d, transition: transform .65s }
.ccard:hover .cin,
.ccard.flip .cin { transform: rotateY(180deg) }
```

**Card front (.cf):**
```
emoji icon (28px)
name (Syne 700, 12px, #1a1a1a)
provider (10px, #888)
date (10px, #FF6B2C bold)
verify link (if available) — orange, stops propagation
```

**Card back (.cb):**
- Real certs: `background #1a1a1a`, image `object-fit: cover`
- Placeholders: brand-colored bg with "Coming Soon" text

**Behavior:** Hover flips, click locks (toggles `.flip` class)

### 9 Certificates

**3 Real:**

| # | Emoji | Name | Provider | Date | Verify |
|---|---|---|---|---|---|
| 1 | 🔵 | Google Prompting Essentials | Google (Coursera) | Jun 2025 | coursera.org/verify/SHUTXPRU3SX9 |
| 2 | 🟢 | Prompt Engineering — GitHub Copilot | Microsoft + Simplilearn | Nov 2025 | — |
| 3 | 🟠 | Complete Digital Marketing (Hindi) | SkillSiya e-Learning | Jun 2025 | — |

**6 Upcoming (dashed border, greyed out):**

| # | Emoji | Name | Provider |
|---|---|---|---|
| 4 | 📱 | Generative AI for Business | Coursera |
| 5 | 📊 | Google Ads Certification | Google Skillshop |
| 6 | 📘 | Meta Blueprint | Meta |
| 7 | 🔬 | GA4 Certification | Analytics Academy |
| 8 | 🤖 | AI for Digital Marketing | LinkedIn Learning |
| 9 | 🎯 | Performance Marketing Pro | LinkedIn Learning |

**Below grid — info bar:**
```
Left  : "More incoming 🏆" + "Google Ads, Meta Blueprint, GA4 in progress"
Right : "💼 View on LinkedIn →" — blue button (#0A66C2)
```

---

## 19. Contact Section

```css
background  : #fff
padding     : 100px 80px
text-align  : center
overflow    : hidden
```

**Background decoration:** Large orange radial glow (center, 700×350px, opacity .05)

**Content:**

```
Label    : "READY TO SCALE?" — orange, uppercase

Headline :
  "Let's Build"
  "Growth Systems."    ← "Growth Systems." in orange
  Font: Syne 800, clamp(38px,6.5vw,64px), -2.5px spacing

Subtext  :
  "Google Ads + Meta + YouTube SEO + AEO + AI Automation
   — measurable results that compound every month."

3 CTAs :
  [📅 Let's Build Together →]   ← orange fill .btnp
  [💼 LinkedIn]                  ← dark border .btno
  [✉️ Email Me]                  ← dark border .btno
```

**Thank you card:**
```css
background    : #f9f9f9
border        : 1px solid #ebebeb
border-radius : 24px, padding: 40px
```
```
🤖 (64px emoji)
"thankyou!" (Syne 800, 28px)
"looking forward to building growth with you." (muted)
Meme quote: "Me explaining why CTR matters at 2am 📊"
  → inline card, white bg, border
📍 Gurgaon, Haryana, India (tiny, muted)
```

---

## 20. Footer

```css
background    : #f9f9f9
border-top    : 1px solid #ebebeb
padding       : 20px 80px
display       : flex, justify-content: space-between
```

```
Left  : © 2026 Anshuman Kushwaha  ← 11px, #ccc
Right : AI-DRIVEN GROWTH STRATEGIST · GURGAON  ← 11px, #FF6B2C, Syne 700, letter-spacing 1.5px
```

---

## 21. Animations Master List

| Name | Definition | Used On |
|---|---|---|
| `floatR` | `0%,100%: translateY(0)` `50%: translateY(-16px)` 3.5s ease-in-out | Robot, orbit icons, pills, stat card |
| `glowPulse` | `0%,100%: scale(1) opacity(1)` `50%: scale(1.09) opacity(.65)` 4s | Hero orange glow circles |
| `spinC` | `0deg → 360deg` linear | Ring1: 24s, Ring2: 36s reverse, Ring3: 48s |
| `fbgF` | `translateY(0) rotate(-2deg) opacity(.055)` → `translateY(-24px) rotate(2deg) opacity(.09)` 12s staggered | Background metric labels |
| `antigrav` | `0%: (0,0)` `30%: translateY(-20px) rotate(2deg)` `60%: translateY(-7px) rotate(-1deg)` `100%: (0,0)` 4–10s random | Skill bubbles |
| `marq` | `translateX(0) → translateX(-50%)` 22s linear | Marquee strip |
| `pulse` | `scale(1) opacity(1) → scale(.85) opacity(.5)` 2s | AI badge dots, availability dot |
| `fadeUp` | `opacity(0) translateY(30px) → opacity(1) translateY(0)` .65s ease | Philosophy slides, scroll reveals |
| `robotPop` | `scale(1)` `→ scale(1.13) rotate(-7deg)` `→ scale(1.05) rotate(3deg)` `→ scale(1)` .6s | Robot on click |
| `robotWave` ⭐ | `rotate(-3deg) → rotate(3deg) → rotate(0)` .8s | Robot auto-wave every 8s |
| `loadingBar` ⭐ | `width: 0% → 100%` 2s linear | Loading screen progress bar |
| `blink` | `opacity 1 → 0` step-end 1s | Typewriter cursor |
| `countUp` | JS setInterval 26ms, 44 steps | Stats bar numbers |

---

## 22. JS Interactions Master List

| Interaction | Trigger | Behavior |
|---|---|---|
| Loading screen | `window.load` | setTimeout 2200ms → opacity 0 → display none |
| Custom cursor | `mousemove` | Dot follows instantly, ring lags 80ms |
| Cursor grow | `mouseenter` on interactive | `#cur2.big` class → 70px ring |
| Robot click | `onclick` | Speech bubble cycles 7 messages, robotPop plays |
| Robot auto-wave ⭐ | `setInterval 8000ms` | Wave class adds/removes (.8s) |
| Nav shadow | `window.scroll > 60px` | `.sc` class adds shadow + bg |
| Stats count-up | Page load | setInterval 26ms, 44 steps each |
| Philosophy slides | Button click (01-05) | Toggle `.on` class on slide + button |
| Experience expand | Header click | One open at a time, orange header, + → × |
| Project expand | "+ Expand" click | max-height 0 → 600px, button text toggles |
| Certificate flip | Card click | Toggle `.flip` class → rotateY(180deg) |
| Bubble tooltip | `mouseenter/leave` | Fixed position popup, getBoundingClientRect |
| Magnetic buttons ⭐ | `mousemove` on button | transform translate(x*.3, y*.3) |
| Magnetic reset ⭐ | `mouseleave` on button | transform translate(0,0) |
| Scroll reveals ⭐ | IntersectionObserver | opacity 0→1, translateY 30px→0, staggered 50ms |
| Smooth scroll | `a[href^="#"]` click | `scrollIntoView({behavior:'smooth'})` |
| Mobile menu | Hamburger click | Toggle display block/none with slide animation |
| Mobile menu close | Nav link click | Set display none |

---

## 23. Scroll Reveals ⭐ NEW

**Implementation:** IntersectionObserver (no libraries required)

**Initial state for all reveal targets:**
```css
.reveal {
  opacity: 0;
  transform: translateY(30px);
  transition: opacity .65s ease, transform .65s ease;
}
.reveal.visible {
  opacity: 1;
  transform: translateY(0);
}
```

**Observer config:**
```js
const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('visible');
      observer.unobserve(entry.target); // fires once
    }
  });
}, { threshold: 0.15 });
```

**Staggered delay for children:**
```js
// Cards in a grid get increasing delay
cards.forEach((card, i) => {
  card.style.transitionDelay = (i * 50) + 'ms';
  observer.observe(card);
});
```

**Apply reveals to:**
- Section headings (h2.sh)
- About grid both columns
- Why-me value cards (staggered)
- Skill cards and tech grid (staggered)
- Experience items (staggered)
- Project cards (staggered)
- Certificate cards (staggered)
- Contact section content

---

## 24. Magnetic Buttons ⭐ NEW

**Apply to all `.btnp` and `.btno` buttons:**

```js
document.querySelectorAll('.btnp, .btno').forEach(btn => {
  btn.addEventListener('mousemove', e => {
    const rect = btn.getBoundingClientRect();
    const x = e.clientX - rect.left - rect.width / 2;
    const y = e.clientY - rect.top - rect.height / 2;
    btn.style.transform = `translate(${x * 0.3}px, ${y * 0.3}px)`;
  });
  btn.addEventListener('mouseleave', () => {
    btn.style.transform = 'translate(0, 0)';
    btn.style.transition = 'transform 0.5s ease';
  });
  btn.addEventListener('mouseenter', () => {
    btn.style.transition = 'transform 0.1s ease';
  });
});
```

**Feel:** Subtle pull toward cursor (0.3 multiplier = gentle, not aggressive)

---

## 25. Mobile Responsive

| Breakpoint | Changes |
|---|---|
| `1140px` | AI badge + stat card hide |
| `900px` | Nav links hide, hamburger shows, email center hides, social bar hides |
| `768px` | Hero padding reduces, section padding reduces, hero bottom stacks |
| `700px` | 2-col grids → 1-col (about, why-me, projects, aeo project) |
| `600px` | Skills tech grid → 2-col, certs → 2-col |

**Mobile menu improvements:** ⭐
```css
Slide-down animation: max-height 0 → 500px, transition .35s ease
Each link: display block, padding 11px 0, border-bottom
Click any link → menu closes (JS onclick)
CTA: orange full-width, padding 12px, font-weight 700
```

---

## 26. AEO / Schema Markup

Add in `<head>` as `<script type="application/ld+json">`:

### Person Schema
```json
{
  "@context": "https://schema.org",
  "@type": "Person",
  "name": "Anshuman Kushwaha",
  "jobTitle": "AI-Driven Digital Growth Strategist",
  "email": "anshkush9292@gmail.com",
  "address": {
    "@type": "PostalAddress",
    "addressLocality": "Gurgaon",
    "addressCountry": "IN"
  },
  "sameAs": [
    "https://linkedin.com/in/anshuman-kushwaha-31bb95237"
  ],
  "knowsAbout": [
    "Google Ads", "Meta Ads", "YouTube SEO",
    "AEO", "AI Automation", "Analytics",
    "Prompt Engineering", "Looker Studio"
  ]
}
```

### FAQPage Schema
```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "What is AEO and why does it matter?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "AEO (Answer Engine Optimization) structures content for AI search engines like Perplexity, ChatGPT, and Google AI Overviews using schema markup so brands appear as direct answers."
      }
    },
    {
      "@type": "Question",
      "name": "How does Anshuman use AI in marketing campaigns?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "He uses AI for prompt-engineered ad copy, automated bidding via Google PMax and Meta Advantage+, and Looker Studio dashboards for real-time decision making."
      }
    },
    {
      "@type": "Question",
      "name": "What results has Anshuman achieved?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "4-6% CTR on Google Ads, 800+ projected YouTube views with 7%+ CTR, ₹50K multi-channel campaign with 15% CVR uplift, and validated AEO schema achieving Google Rich Results eligibility."
      }
    },
    {
      "@type": "Question",
      "name": "How can I hire Anshuman Kushwaha?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Email anshkush9292@gmail.com or connect on LinkedIn at linkedin.com/in/anshuman-kushwaha-31bb95237"
      }
    },
    {
      "@type": "Question",
      "name": "What makes Anshuman different from other digital marketers?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "He combines full-funnel performance marketing with AI automation and AEO content strategy — building compounding growth systems rather than running isolated campaigns."
      }
    }
  ]
}
```

---

## 27. Meta Tags

```html
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Anshuman Kushwaha | AI-Driven Digital Growth Strategist — Gurgaon</title>
<meta name="description" content="I build AI-powered growth engines — Google Ads, YouTube SEO, AEO content, and automation for measurable, compounding results. Based in Gurgaon, India.">

<!-- Open Graph -->
<meta property="og:title" content="Anshuman Kushwaha — AI Growth Strategist">
<meta property="og:description" content="I build AI-powered growth engines — Google Ads, YouTube SEO, AEO content, and automation for measurable, compounding results.">
<meta property="og:type" content="website">

<!-- Twitter -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Anshuman Kushwaha — AI Growth Strategist">
<meta name="twitter:description" content="AI-powered growth engines — Google Ads, YouTube SEO, AEO, Automation.">

<!-- Canonical (update when live) -->
<link rel="canonical" href="https://anshumanportfolio-vert.vercel.app/">
```

---

## 28. Asset Inventory

### Images (Ready — to be injected after Antigravity build)

> All stored in `/tmp/img_b64.json` as base64 data URIs.
> To be injected by Claude after Antigravity output received.

| Key | File | Content | Inject Into |
|---|---|---|---|
| `google_cert2` | 1773401631856.jpg | Google Prompting Essentials cert | Certificate flip card back |
| `ms_cert2` | 9502281_...png | Microsoft + Simplilearn (GitHub Copilot) cert | Certificate flip card back |
| `sk_cert2` | 1750324606741-certificate.png | SkillSiya Digital Marketing cert | Certificate flip card back |
| `youtube` | youtube-analytics.jpg | YouTube analytics screenshot | Project 02 expand |
| `looker` | looker-studio-dashboard.jpg | Looker Studio dashboard | Project 04 expand |
| `looker_ga4_1` | IMG_20260312_223529.jpg | Real GA4 Looker dashboard (laptop) | Project 04 expand |
| `looker_ga4_2` | IMG_20260312_223539.jpg | GA4 Trends chart | Project 04 expand |
| `yt_looker` | Screenshot_20260312-224007.jpg | YouTube Looker report | Project 02 expand |
| `aeo_schema` | Screenshot_20260126-124909.jpg | FAQPage JSON-LD code | AEO Personal Project LEFT |
| `aeo_valid` | Screenshot_20260126-124032.jpg | Rich Results "1 valid item" | AEO Personal Project LEFT |

### PDFs (Source Material)

| File | Used For |
|---|---|
| Mattr_AI_App_Builder_Assignment.pdf | Project 03 detail content |
| YouTube_SEO_Case_Study.pdf | Project 02 detail content |
| Business_Types_Coaching_Centers.pdf | Project 01 market context |
| Simple_Hipster_CV.pdf | Resume download link (contact section) |

---

## 29. Design Reference — Rajesh Portfolio

**Repo:** `https://github.com/raxx21/rajesh-portfolio`
**Stars:** 63 | **Forks:** 35
**Stack:** React + TypeScript + GSAP + Three.js

### What We're Adapting (CSS only, no Three.js)

| Rajesh Element | Our Adaptation |
|---|---|
| 3D character center | 🤖 emoji, clamp(130px,17vw,190px), CSS glow |
| Teal radial glow | Orange radial glow rgba(255,107,44) |
| Name LEFT bottom massive | ANSHUMAN KUSHWAHA uppercase Syne 800 |
| Role RIGHT bottom | AI-DRIVEN GROWTH. split |
| Ghost outline word | `STRATEGIST` -webkit-text-stroke |
| Fixed left social icons | Our 4 icon links |
| Fixed bottom-right RESUME | Same position, our style |
| Email center of nav | anshkush9292@gmail.com |
| Custom cursor | Orange dot + lagging ring |
| Minimal dark nav | White nav, same minimal style |
| Dark theme | **White + Orange** (our brand) |

### What We're NOT Using

- Three.js / WebGL (too complex, single file incompatible)
- GSAP Club plugins (cannot host with trial version per their README)
- React + TypeScript build process
- Dark background theme

---

## 30. Build Checklist

### Phase 1 — Antigravity Build
- [ ] Paste full prompt into Antigravity
- [ ] Get HTML output
- [ ] Verify: loading screen works
- [ ] Verify: robot click speech bubbles
- [ ] Verify: robot auto-wave every 8s
- [ ] Verify: antigravity bubbles arena + tooltips
- [ ] Verify: scroll reveals working
- [ ] Verify: magnetic buttons effect
- [ ] Verify: experience click-expand
- [ ] Verify: project expand/collapse
- [ ] Verify: certificate flip hover + click
- [ ] Verify: philosophy slide switcher
- [ ] Verify: mobile menu improved
- [ ] Verify: custom cursor
- [ ] Verify: fixed social bar + resume button

### Phase 2 — Claude Injection (After Antigravity)
- [ ] Load `/tmp/img_b64.json` with all base64 images
- [ ] Inject 3 certificate images into flip card backs
- [ ] Inject YouTube analytics screenshot into Project 02
- [ ] Inject Looker GA4 dashboard + trends into Project 04
- [ ] Inject YouTube Looker report into Project 02
- [ ] Inject AEO validation screenshot into Personal Project
- [ ] Inject AEO schema code screenshot into Personal Project
- [ ] Add resume download link (Simple_Hipster_CV.pdf)

### Phase 3 — QA
- [ ] Test Chrome, Firefox, Safari
- [ ] Test mobile 900px, 700px, 600px
- [ ] Validate JSON-LD at search.google.com/test/rich-results
- [ ] Check all links work
- [ ] Run Lighthouse — target 85+ (single file with images will be large)

### Phase 4 — Deploy
- [ ] Upload to Vercel
- [ ] Test live URL
- [ ] Update LinkedIn profile with new portfolio URL
- [ ] Share on LinkedIn post

---

## Changelog

| Version | Date | Changes |
|---|---|---|
| V1 | Mar 11 2026 | First single HTML file with base features |
| V2 | Mar 12 2026 | Antigravity skills, flip certs, AEO project, AI badge |
| V3 | Mar 13 2026 | Why You Need Me section, robot interactions, philosophy slides, new assets |
| V4 (this) | Mar 14 2026 | Rajesh design reference, loading screen, custom cursor, fixed socials, magnetic buttons, scroll reveals, robot auto-wave, 3rd orbit ring, dot grid pattern, mobile menu improved |

---

*Document prepared for Antigravity build session — March 2026*
*All images to be injected by Claude after Antigravity output received*
