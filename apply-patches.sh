#!/usr/bin/env sh

for file in patches/*; do
  printf %s\\n '' "Applying '${file}'" "========"
  <"${file}" patch --forward --dry-run

  printf \\n%s 'Apply patch (or ignore if already applied)? (Y/n): '
  IFS== read -r option
  case "${option}"
    # --forward in case we ran this before, do not check reverse patch chase
    in ""|Y*|y*)  <"${file}" patch --forward
    ;; *)         printf %s\\n "Skipping '${file}'" >&2
  esac
done
