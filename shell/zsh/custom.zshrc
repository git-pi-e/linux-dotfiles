# Copy C++ code to clipboard
copy_cpp_code_to_clipboard() {
    find ./include ./src -type f \( -name "*.h" -o -name "*.hpp" -o -name "*.cpp" -o -name "*.c" \) 2>/dev/null | while read -r file; do
        echo "=== $file ==="
        cat "$file"
        echo ""  # Add a newline between files
    done | xclip -selection clipboard
}

alias copy-code="copy_cpp_code_to_clipboard"
