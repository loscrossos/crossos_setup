#!/bin/bash

# Define the commands you want to check (edit this list)
commands_to_check=(
  "brew"
  "gcc --version"
  "g++ --version"
  "cmake --version" 
  "python3.9 --version"
  "python3.10 --version"
  "python3.11 --version"
  "python3.12 --version"
  "python3.13 --version"
  "wget --version"
  "curl --version"
  "git --version"
  "ffmpeg -version"
  "espeak-ng --version"
)

# Counters
success_count=0
fail_count=0

echo "Checking command availability..."

for cmd in "${commands_to_check[@]}"; do
  echo -n "Checking: '$cmd' ... "

  # Run the command but suppress output (just check exit code)
  if eval "$cmd" &> /dev/null; then
    echo "✅ (Successfully installed)"
    ((success_count++))
  else
    echo "❌ (not installed or broken)"
    ((fail_count++))
  fi
done

# Print summary
echo ""
echo "Summary:"
echo "  ✅ Successful: $success_count"
echo "  ❌ Failed:     $fail_count"

exit 0