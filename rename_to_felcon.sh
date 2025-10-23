#!/bin/bash
# rename_to_felcon.sh
# Script to rename felcon project to Felcon
# Modified by Felcon Security Team

echo "🚀 Starting felcon → Felcon rename process..."

# Step 1: Rename project folder if needed
if [ "$(basename "$PWD")" = "felcon" ]; then
    cd ..
    mv felcon felcon
    cd felcon
    echo "✅ Project folder renamed to felcon"
fi

# Step 2: Rename main executable
if [ -f "felcon" ]; then
    mv felcon felcon
    chmod +x felcon
    echo "✅ Main script renamed to felcon"
fi

# Step 3: Replace text inside all files
echo "🔍 Replacing all occurrences of 'felcon' → 'felcon'..."
grep -rl "felcon" . | while read -r file; do
    sed -i 's/\blynis\b/felcon/gI' "$file"
done
echo "✅ Text replacement done."

# Step 4: Update tool metadata if found
if grep -q "TOOL_NAME" include/* 2>/dev/null; then
    sed -i 's/TOOL_NAME=.*/TOOL_NAME="Felcon"/' include/*
    echo "✅ TOOL_NAME updated to Felcon"
fi

# Step 5: Add credit note in LICENSE
if [ -f "LICENSE" ]; then
    echo -e "\n---\nModified version of felcon renamed to Felcon by Felcon Security Team.\nOriginal project: https://github.com/CISOfy/felcon\n---" >> LICENSE
    echo "✅ License attribution updated (Felcon Security Team)"
fi

# Step 6: Confirm success
echo ""
echo "🎉 All done! felcon is now renamed to Felcon."
echo "👉 Try running:"
echo "   sudo ./felcon audit system"
echo ""
echo "🛡️  Modified by Felcon Security Team"
