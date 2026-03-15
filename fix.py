import re

try:
    with open('index.html', 'r', encoding='utf-8') as f:
        text = f.read()

    # Dictionary of corrupted characters and their correct Utf-8 counterparts
    # Including general character garbling and broken emojis
    replacements = {
        'â†\'': '→',
        'â€"': '—',
        'â€”': '—',
        'â‚¹': '₹',
        'Â·': '·',
        'âœ"': '✓',
        'ðŸŽ¯': '🎯',
        'ðŸ“ˆ': '📈',
        'ðŸ”': '🔍',
        'ðŸ“Š': '📊',
        'ðŸ“˜': '📘',
        'â˜ ï¸': '☁️',
        'âš¡': '⚡',
        'ðŸ“±': '📱',
        'ðŸ¤–': '🤖',
        'ðŸ’¡': '💡',
        'ðŸŽ¨': '🎨',
        'ðŸŽ¬': '🎬',
        'ðŸ–‹ï¸': '✍️',
        'ðŸ’¬': '💬',
        'ðŸ“ ': '📸',
        'ðŸ“º': '📺'
    }

    for bad, good in replacements.items():
        text = text.replace(bad, good)

    # Ensure <meta charset="UTF-8"> exists at the top of <head>
    if '<meta charset="UTF-8">' not in text:
        text = text.replace('<head>', '<head>\n  <meta charset="UTF-8">', 1)

    with open('index.html', 'w', encoding='utf-8') as f:
        f.write(text)
    print("Encoding fixed successfully!")

except Exception as e:
    print("Error:", str(e))
