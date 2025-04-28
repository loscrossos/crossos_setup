#!/bin/bash

# Define the commands you want to check (edit this list)
commands_to_check=(
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
  "gh --version"
  "ffmpeg -version"
  "espeak-ng --version"
  "code --version"
  "codium --version"
  "ag --version"

)

# Counters
success_count=0
fail_count=0

echo "Checking dev Setup "

for cmd in "${commands_to_check[@]}"; do
  echo -n "Check: '$cmd' ... "

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
echo "  ✅: $success_count,  ❌: $fail_count"

exit 0