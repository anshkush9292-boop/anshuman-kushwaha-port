const fs = require('fs');
const path = require('path');

const targetFile = path.resolve('c:/Users/Acer/Downloads/project/index.html');
let lines = fs.readFileSync(targetFile, 'utf8').split('\n');

// Replace social bar (Lines 1481-1487 are indices 1480-1486)
const newSocials = `  <!-- FIXED SOCIAL BAR -->
  <div class="fixed-socials">
    <a href="https://linkedin.com/in/anshuman-kushwaha-31bb95237" target="_blank" class="social-icon">
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"/><rect x="2" y="9" width="4" height="12"/><circle cx="4" cy="4" r="2"/></svg>
    </a>
    <a href="mailto:anshkush9292@gmail.com" class="social-icon">
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg>
    </a>
    <a href="#work" class="social-icon">
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"/><line x1="12" y1="8" x2="12" y2="16"/><line x1="8" y1="12" x2="8" y2="16"/><line x1="16" y1="14" x2="16" y2="16"/></svg>
    </a>
    <a href="#certs" class="social-icon">
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="8" r="7"/><polyline points="8.21 13.89 7 23 12 20 17 23 15.79 13.88"/></svg>
    </a>
  </div>`.split('\n');

lines.splice(1480, 7, ...newSocials);

// Because we replaced 7 lines with 16 lines, the array length changed by +9.
// Original lines 2579-2592 are now at 2579 + 9 = 2588 to 2592 + 9 = 2601.
// Let's find the exact index dynamically to be safe.
const targetStart = lines.findIndex(l => l.includes('const bubblesData = ['));
const targetEnd = lines.findIndex((l, i) => i > targetStart && l.includes('];'));

const newBubbles = `    const bubblesData = [
      { emoji: '🎯', label: 'Google Ads', color: '#FF6B2C', size: 90, p: 'Google', t: 'Search/PMax', l: 'Advanced', u: 'Lead Generation' },
      { emoji: '📘', label: 'Facebook Ads', color: '#1877F2', size: 84, p: 'Meta', t: 'Awareness', l: 'Intermediate', u: 'Brand + Sales' },
      { emoji: '📷', label: 'Instagram', color: '#E1306C', size: 78, p: 'Meta', t: 'Reels/Stories', l: 'Intermediate', u: 'Engagement' },
      { emoji: '📺', label: 'YouTube SEO', color: '#FF0000', size: 88, p: 'YouTube', t: 'Organic', l: 'Advanced', u: 'Top-of-Funnel' },
      { emoji: '📊', label: 'Analytics', color: '#F4B400', size: 80, p: 'Google', t: 'GA4 + Looker', l: 'Advanced', u: 'KPI Reporting' },
      { emoji: '🤖', label: 'ChatGPT', color: '#10A37F', size: 86, p: 'OpenAI', t: 'Generation', l: 'Advanced', u: 'Content/Strategy' },
      { emoji: '🔍', label: 'AEO/Schema', color: '#7B5EF8', size: 82, p: 'Web/Google', t: 'JSON-LD', l: 'Growing', u: 'AI Visibility' },
      { emoji: '✍️', label: 'Prompt Eng', color: '#10B981', size: 80, p: 'All AI', t: 'Structured', l: 'Advanced', u: '10x Speed' },
      { emoji: '💬', label: 'Meta Ads', color: '#0082FB', size: 76, p: 'Meta', t: 'Advantage+', l: 'Intermediate', u: 'Conversions' },
      { emoji: '🎨', label: 'Canva', color: '#00C4CC', size: 70, p: 'Canva', t: 'Design', l: 'Intermediate', u: 'Ad Creatives' },
      { emoji: '💡', label: 'CRO', color: '#F59E0B', size: 74, p: 'Analytics', t: 'Optimization', l: 'Growing', u: 'CVR Uplift' },
      { emoji: '🎬', label: 'CapCut', color: '#FF6B2C', size: 72, p: 'ByteDance', t: 'Video Edit', l: 'Intermediate', u: 'UGC Ads' }
    ];`.split('\n');

if (targetStart !== -1 && targetEnd !== -1) {
    lines.splice(targetStart, targetEnd - targetStart + 1, ...newBubbles);
}

fs.writeFileSync(targetFile, lines.join('\n'));
console.log('Fixed gracefully.');
