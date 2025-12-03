#!/bin/bash

# Script to generate README.md with all images in the folder

cd "$(dirname "$0")"

# Start the README
cat > README.md << 'EOF'
# Wallpaper Collection

EOF

# Find all image files and add them to README
for img in *.{jpg,jpeg,png,gif,webp,bmp}; do
    # Check if the file exists (handles case where no files match a pattern)
    [ -e "$img" ] || continue
    
    # Skip if it's not a file
    [ -f "$img" ] || continue
    
    echo "<a href=\"$img\"><img alt=\"$img\" src=\"$img\"></a>" >> README.md
    echo "" >> README.md
done

echo "README.md generated successfully!"

