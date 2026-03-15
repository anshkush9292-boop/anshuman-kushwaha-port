$path = "c:\Users\Acer\Downloads\project\index.html"
$txt = [System.IO.File]::ReadAllText($path)

$replacements = @{
    "Ã¢â‚¬â€" = "—"
    "Ã¢â€šÂ¹" = "₹"
    "ÃƒÂ¢Ã…â€œÃ¢â‚¬Â°ÃƒÂ¯Ã‚Â¸Ã‚Â" = "✓"
    "ÃƒÂ°Ã…Â¸Ã¢â‚¬Å“Ã‹â€ " = "📈"
    "ÃƒÂ¢Ã…Â¡Ã¢â€žÂ¢ÃƒÂ¯Ã‚Â¸Ã‚Â" = "⚙️"
    "ÃƒÂ¢Ã…Â¡Ã‚Â¡" = "⚡"
    "ÃƒÂ°Ã…Â¸Ã¢â‚¬Å“Ã…Â" = "📊"
    "ÃƒÂ°Ã…Â¸Ã‚Â¤Ã¢â‚¬â€" = "🤔"
    "ÃƒÂ°Ã…Â¸Ã¢â‚¬Â Ã‚Â" = "🚀"
    "ÃƒÂ¢Ã…â€œÃ‚Â ÃƒÂ¯Ã‚Â¸Ã‚Â" = "✍️"
    "ÃƒÂ¢Ã¢â‚¬Â Ã¢â‚¬â„¢" = "→"
    "â‚¹" = "₹"
    "ðŸ¤–" = "🤖"
    "âœ\"" = "✓"
    "ðŸš€" = "🚀"
    "â†'" = "→"
    "Ã¢â€šÂ¹" = "₹"
}

foreach ($key in $replacements.Keys) {
    $txt = $txt.Replace($key, $replacements[$key])
}

[System.IO.File]::WriteAllText($path, $txt, [System.Text.Encoding]::UTF8)
Write-Host "Encoding fix complete."
