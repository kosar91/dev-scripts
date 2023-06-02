#!/bin/bash

MESSAGE=$(cat "$1")

/bin/bash check-commit-name.sh "$MESSAGE"
