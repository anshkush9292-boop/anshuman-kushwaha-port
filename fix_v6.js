const fs = require('fs');
const path = 'c:/Users/Acer/Downloads/project/index.html';

let content = fs.readFileSync(path, 'utf8');

const replacements = {
    "â€”": "—",
    "â‚¹": "₹",
    "Â·": "·",
    "âœ“": "✓",
    "âœ‰ï¸ ": "✉️",
    "ðŸ †": "🏆",
    "â†—": "↗",
    "â†’": "→",
    "â˜°": "☰",
    "âœ•": "✕",
    "ðŸŽ¯": "🎯",
    "ðŸ“˜": "📘",
    "ðŸ“¸": "📷",
    "ðŸ“º": "📺",
    "ðŸ” ": "🔍",
    "âœ ï¸ ": "✍️",
    "ðŸ“Š": "📊",
    "âš¡": "⚡",
    "ðŸ¤–": "🤖",
    "ðŸŽ¨": "🎨",
    "ðŸ’¡": "💡",
    "ðŸŽ¬": "🎬",
    "ðŸš€": "🚀",
    "ðŸ“ ": "📍",
    "ðŸŽ“": "🎓",
    "âš™ï¸ ": "⚙️",
    "ðŸ“ˆ": "📈",
    "âœ¦": "✦"
};

for (const [old, curr] of Object.entries(replacements)) {
    content = content.split(old).join(curr);
}

// Ensure the Social Bar uses SVGs for LinkedIn, Work and Certs as requested
content = content.replace('<a href="mailto:anshkush9292@gmail.com" class="social-icon">✉️</a>', 
                          '<a href="mailto:anshkush9292@gmail.com" class="social-icon"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1-2 .9-2 2v12c0 1.1.9 2 2 2H4c-1.1 0-2-.9-2-2V6c0-1.1-.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg></a>');

content = content.replace('<a href="#certs" class="social-icon">🏆</a>', 
                          '<a href="#certs" class="social-icon"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="8" r="7"/><polyline points="8.21 13.89 7 23 12 20 17 23 15.79 13.88"/></svg></a>');

fs.writeFileSync(path, content, 'utf8');
console.log("Replacements complete.");
