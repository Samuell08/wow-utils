#! /bin/bash

d="${WOW_UTILS_PREFIX}/Interface/AddOns"
u=""

for a in "$d"/*; do
  an="${a##*/}"

  echo ""
  echo "------------------------------------------------------------"
  echo "$an"
  echo ""

  cd "$a" || exit
  if [ ! -d ".git" ]; then
    echo "  - Not a Git repository"
    continue
  fi

  git fetch
  if [ "$(git rev-parse @)" = "$(git rev-parse @{u})" ]; then
    echo "  - Up-to-date"
  else
    echo "  - Needs update"
    l=$(git reset --hard @{u})
    echo "    $l"
    u="$u$an "
  fi
done

echo ""
echo "Updated: $u"
echo ""