#!/bin/bash

MESSAGE=$1
COMMITFORMAT="^(feat|fix|docs|style|refactor|test|chore|perf|other)(\((.*)\))?: (.*)$"

if ! [[ "$MESSAGE" =~ $COMMITFORMAT ]]; then
  echo "Your commit message \"$MESSAGE\" has invalid format."
  echo ""
  echo "Please use the following format:"
  echo "feat: feature example comment"
  echo "feat: [DEV-12345] feature example comment"
  echo "fix(ui): [DEV-54321] bugfix example comment"
  exit 1
else
  echo "Your commit \"$MESSAGE\" was accepted"
  exit 0
fi
