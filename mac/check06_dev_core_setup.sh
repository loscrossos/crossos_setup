#!/bin/bash

# Define the commands you want to check (edit this list)
commands_to_check=(
  "gcc --version        #Critical"
  "g++ --version        #Critical"
  "cmake --version      #Critical"


  "python3.9 --version  #Critical"
  "python3.10 --version #Critical"
  "python3.11 --version #Critical"
  "python3.12 --version #Critical"
  "python3.13 --version #Critical"
  "wget --version       #Critical"
  "curl --version       #Critical"
  "git --version        #Critical"
  "gh --version         #Optional"
  "ffmpeg -version      #Optional"
  "espeak-ng --version  #Optional"
  "code --version       #Advised "
  "codium --version     #Advised "
  "ag --version         #Advised "
)

# Counters
success_count=0
fail_count=0

echo "Checking dev Setup "

for cmd in "${commands_to_check[@]}"; do
  echo -n "Check: '$cmd': "

  # Run the command but suppress output (just check exit code)
  if eval "$cmd" &> /dev/null; then
    echo "✅ (installed)"
    ((success_count++))
  else
    echo "❌ (missing-broken)"
    ((fail_count++))
  fi
done

# Print summary
echo ""
echo "Summary:  ✅: $success_count,  ❌: $fail_count"

exit 0