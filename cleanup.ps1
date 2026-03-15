$content = Get-Content index.html -Raw
# Fix Social Icons
$content = $content -replace 'mailto:anshkush9292@gmail.com" class="social-icon">.*?</a>', 'mailto:anshkush9292@gmail.com" class="social-icon"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg></a>'
$content = $content -replace '#certs" class="social-icon">.*?</a>', '#certs" class="social-icon"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="8" r="7"/><polyline points="8.21 13.89 7 23 12 20 17 23 15.79 13.88"/></svg></a>'

# Fix Bubbles Data Array
$newBubbles = 'const bubblesData = [
      { emoji: "🎯", label: "Google Ads", color: "#FF6B2C", size: 90, p: "Google", t: "Search/PMax", l: "Advanced", u: "Lead Generation" },
      { emoji: "📘", label: "Facebook Ads", color: "#1877F2", size: 84, p: "Meta", t: "Awareness", l: "Intermediate", u: "Brand + Sales" },
      { emoji: "📷", label: "Instagram", color: "#E1306C", size: 78, p: "Meta", t: "Reels/Stories", l: "Intermediate", u: "Engagement" },
      { emoji: "📺", label: "YouTube SEO", color: "#FF0000", size: 88, p: "YouTube", t: "Organic", l: "Advanced", u: "Top-of-Funnel" },
      { emoji: "📊", label: "Analytics", color: "#F4B400", size: 80, p: "Google", t: "GA4 + Looker", l: "Advanced", u: "KPI Reporting" },
      { emoji: "🤖", label: "ChatGPT", color: "#10A37F", size: 86, p: "OpenAI", t: "Generation", l: "Advanced", u: "Content/Strategy" },
      { emoji: "🔍", label: "AEO/Schema", color: "#7B5EF8", size: 82, p: "Web/Google", t: "JSON-LD", l: "Growing", u: "AI Visibility" },
      { emoji: "✍️", label: "Prompt Eng", color: "#10B981", size: 80, p: "All AI", t: "Structured", l: "Advanced", u: "10x Speed" },
      { emoji: "💬", label: "Meta Ads", color: "#0082FB", size: 76, p: "Meta", t: "Advantage+", l: 'Intermediate', u: "Conversions" },
      { emoji: "🎨", label: "Canva", color: "#00C4CC", size: 70, p: "Canva", t: "Design", l: "Intermediate", u: "Ad Creatives" },
      { emoji: "💡", label: "CRO", color: "#F59E0B", size: 74, p: "Analytics", t: "Optimization", l: "Growing", u: "CVR Uplift" },
      { emoji: "🎬", label: "CapCut", color: "#FF6B2C", size: 62, p: "ByteDance", t: "Video Edit", l: "Intermediate", u: "UGC Ads" }
    ];'

$content = $content -replace '(?s)const bubblesData = \[.*?\];', $newBubbles

# Ensure UTF-8 with BOM for Windows compatibility if needed, or just plain UTF-8
[System.IO.File]::WriteAllText("index.html", $content, [System.Text.Encoding]::UTF8)
