#!/bin/bash

MESSAGE=$(cat "$1")

bash check-commit-name.sh "$MESSAGE"
