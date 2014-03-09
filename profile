# Sometimes do other things
# ===========
PROFILE_DIR="${HOME}/git/profile/source"

# Run only in an interactive  shell.
[[ $- != *i* ]] && return

# Run only in a terminal (tty -s) and if it hasn't already been run.
if tty -s && [ -z "$profile_has_been_sourced" ]; then
  for file in "$HOME"/.prophyl-teh-awesum/source/*; do
    . "$file"
  done
  profile_has_been_sourced=true
fi

# Show the calendar
# ==========
pal -r 1
