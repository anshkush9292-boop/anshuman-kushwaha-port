
const fs = require('fs');
const path = 'c:/Users/Acer/Downloads/project/index.html';

let content = fs.readFileSync(path);

const replacements = [
  { old: 'ÃƒÂ¢Ã…â€œÃ¢â‚¬Â°ÃƒÂ¯Ã‚Â¸Ã‚Â ', new: '📧' },
  { old: 'ÃƒÂ°Ã…Â¸Ã‚Â Ã¢â‚¬Â ', new: '🏆' },
  { old: 'ÃƒÂ°Ã…Â¸Ã¢â‚¬Â Ã‚Â ', new: '🚀' },
  { old: 'ÃƒÂ¢Ã…â€œÃ‚Â ÃƒÂ¯Ã‚Â¸Ã‚Â ', new: '✍️' },
  { old: 'ÃƒÂ°Ã…Â¸Ã¢â‚¬Å“Ã‚Â ', new: '📍' },
  { old: 'ÃƒÂ°Ã…Â¸Ã…Â½Ã¢â‚¬Å“', new: '🎓' },
  { old: 'Ã¢â€ â€™', new: '→' },
  { old: 'Ãƒâ€š·', new: '·' },
  { old: 'ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Â', new: '—' },
  { old: 'ðŸ¤–', new: '🤖' },
  { old: 'ðŸŽ¯', new: '🎯' },
  { old: 'ðŸ“˜', new: '📘' },
  { old: 'ðŸ“º', new: '📺' },
  { old: 'ðŸ“Š', new: '📊' },
  { old: 'ðŸš€', new: '🚀' },
  { old: 'âš¡', new: '⚡' }
];

let utf8String = content.toString('utf8');

replacements.forEach(r => {
  // Use a global regex for the Literal string
  const escapedOld = r.old.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
  const re = new RegExp(escapedOld, 'g');
  utf8String = utf8String.replace(re, r.new);
});

fs.writeFileSync(path, utf8String, 'utf8');
console.log('Encoding fix complete via Node.js');
