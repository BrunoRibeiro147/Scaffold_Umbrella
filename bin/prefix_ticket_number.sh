#!/usr/bin/env bash
message=$(cat $1)
branch=$(git symbolic-ref --short HEAD 2>/dev/null)
project=$(echo "$branch" | cut -sd '-' -f1 | awk '{ print toupper($0) }')
ticket=$(echo "$branch" | cut -sd '-' -f2)

if [[ $project == "" || $ticket == "" || $message == "["* ]]; then
  exit 0;
fi

echo "$project-$ticket: $message" > $1
