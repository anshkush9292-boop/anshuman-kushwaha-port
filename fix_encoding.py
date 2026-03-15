
import io

path = "c:/Users/Acer/Downloads/project/index.html"

# Read as bytes to avoid any encoding interference
with open(path, "rb") as f:
    content = f.read()

# Replacements (using bytes for problematic ones)
# ÃƒÂ¢Ã…â€œÃ¢â‚¬Â°ÃƒÂ¯Ã‚Â¸Ã‚Â is the mail icon
# ÃƒÂ°Ã…Â¸Ã‚Â Ã¢â‚¬Â  is the trophy icon
# ÃƒÂ°Ã…Â¸Ã¢â‚¬Â Ã‚Â is the rocket
# ÃƒÂ¢Ã…â€œÃ‚Â ÃƒÂ¯Ã‚Â¸Ã‚Â is the writing hand

replacements = [
    (b"\xc3\x83\xc6\x92\xc3\xa2\xc3\x82\xc3\x85\xc3\xa2\xc3\x82\xc5\x93\xc3\x83\xc6\x92\xc3\xa2\xc3\x82\xc2\xa2\xc3\x83\xc6\x92\xc3\xa2\xc3\x82\xc2\xac\xc3\x83\xc6\x92\xc3\xa2\xc3\x82\xc2\xb0\xc3\x83\xc6\x92\xc3\x82\xc2\xaf\xc3\x83\xc2\x82\xc3\x82\xc2\xb8\xc3\x83\xc2\x82\xc3\x82\xc2\xad", "📧".encode("utf-8")),
    (b"\xc3\x83\xc6\x92\xc3\x82\xc2\xb0\xc3\x83\xc6\x92\xc3\x82\xc5\xb8\xc3\x83\xc2\x82\xc3\x82\xc2\xa0\xc3\x83\xc6\x92\xc3\xa2\xc3\x82\xc2\xac\xc3\x83\xc6\x92\xc3\xa2\xc3\x82\xc2\xa0", "🏆".encode("utf-8")),
    (b"ÃƒÂ°Ã…Â¸Ã¢â‚¬Â Ã‚Â ".encode("utf-8"), "🚀".encode("utf-8")),
    (b"ÃƒÂ¢Ã…â€œÃ‚Â ÃƒÂ¯Ã‚Â¸Ã‚Â ".encode("utf-8"), "✍️".encode("utf-8")),
    (b"ÃƒÂ°Ã…Â¸Ã¢â‚¬Å“Ã‚Â ".encode("utf-8"), "📍".encode("utf-8")),
    (b"ÃƒÂ°Ã…Â¸Ã…Â½Ã¢â‚¬Å“".encode("utf-8"), "🎓".encode("utf-8")),
    (b"Ã¢â€ â€™".encode("utf-8"), "→".encode("utf-8")),
    (b"Ãƒâ€š·".encode("utf-8"), "·".encode("utf-8")),
    (b"ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Â".encode("utf-8"), "—".encode("utf-8")),
]

for old, new in replacements:
    content = content.replace(old, new)

with open(path, "wb") as f:
    f.write(content)

print("Encoding fix complete.")
