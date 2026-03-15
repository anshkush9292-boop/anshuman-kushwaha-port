$path = "c:\Users\Acer\Downloads\project\index.html"
$lines = Get-Content $path -Encoding UTF8

# Function to fix a line by replacing all garbled (non-ASCII) blocks with a clean string
function Fix-Line($idx, $replacement) {
    if ($idx -lt $lines.Count) {
        $lines[$idx] = $lines[$idx] -replace '[^\x00-\x7F]+', $replacement
    }
}

# Experience Dates (—)
Fix-Line 1869 " — "
Fix-Line 1896 " — "
Fix-Line 1923 " — "

# Experience Lists (— or -)
Fix-Line 1877 " — "
Fix-Line 1901 " — "

# Experience Badge (·)
Fix-Line 1924 " · "

# Currencies (₹)
Fix-Line 1903 " ₹"
Fix-Line 1904 " ₹"
Fix-Line 1947 " ₹"
Fix-Line 2045 " ₹"

# Arrows (↓)
Fix-Line 1963 " ↓"
Fix-Line 2010 " ↓"
Fix-Line 2057 " ↓"
Fix-Line 2104 " ↓"
Fix-Line 2137 " ↓"

# Skills Bubbles (🎯, 📘, etc.)
# L2585-2596
Fix-Line 2584 "🎯"
Fix-Line 2585 "📘"
Fix-Line 2586 "📷"
Fix-Line 2587 "📺"
Fix-Line 2588 "📊"
Fix-Line 2589 "🤖"
Fix-Line 2590 "🔍"
Fix-Line 2591 "✍️"
Fix-Line 2592 "💬"
Fix-Line 2593 "🎨"
Fix-Line 2594 "💡"
Fix-Line 2595 "🎬"

# Re-read and write back with fixed labels in Skills
$lines[2584] = "      { emoji: '🎯', label: 'Google Ads', color: '#FF6B2C', size: 82, p: 'Google', t: 'Search/PMax', l: 'Advanced', u: 'Lead Generation' },"
$lines[2585] = "      { emoji: '📘', label: 'Facebook Ads', color: '#1877F2', size: 74, p: 'Meta', t: 'Awareness', l: 'Intermediate', u: 'Brand + Sales' },"
$lines[2586] = "      { emoji: '📷', label: 'Instagram', color: '#E1306C', size: 68, p: 'Meta', t: 'Reels/Stories', l: 'Intermediate', u: 'Engagement' },"
$lines[2587] = "      { emoji: '📺', label: 'YouTube SEO', color: '#FF0000', size: 78, p: 'YouTube', t: 'Organic', l: 'Advanced', u: 'Top-of-Funnel' },"
$lines[2588] = "      { emoji: '📊', label: 'Analytics', color: '#F4B400', size: 70, p: 'Google', t: 'GA4 + Looker', l: 'Advanced', u: 'KPI Reporting' },"
$lines[2589] = "      { emoji: '🤖', label: 'ChatGPT', color: '#10A37F', size: 76, p: 'OpenAI', t: 'Generation', l: 'Advanced', u: 'Content/Strategy' },"
$lines[2590] = "      { emoji: '🔍', label: 'AEO/Schema', color: '#7B5EF8', size: 72, p: 'Web/Google', t: 'JSON-LD', l: 'Growing', u: 'AI Visibility' },"
$lines[2591] = "      { emoji: '✍️', label: 'Prompt Eng', color: '#10B981', size: 70, p: 'All AI', t: 'Structured', l: 'Advanced', u: '10x Speed' },"
$lines[2592] = "      { emoji: '💬', label: 'Meta Ads', color: '#0082FB', size: 66, p: 'Meta', t: 'Advantage+', l: 'Intermediate', u: 'Conversions' },"
$lines[2593] = "      { emoji: '🎨', label: 'Canva', color: '#00C4CC', size: 60, p: 'Canva', t: 'Design', l: 'Intermediate', u: 'Ad Creatives' },"
$lines[2594] = "      { emoji: '💡', label: 'CRO', color: '#F59E0B', size: 64, p: 'Analytics', t: 'Optimization', l: 'Growing', u: 'CVR Uplift' },"
$lines[2595] = "      { emoji: '🎬', label: 'CapCut', color: '#FF6B2C', size: 62, p: 'ByteDance', t: 'Video Edit', l: 'Intermediate', u: 'UGC Ads' }"

# Footer link fix
Fix-Line 2353 " — "

# Final save
$lines | Set-Content $path -Encoding UTF8
