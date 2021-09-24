function fish_prompt
  set -l stat $status

  # User and host
  set_color normal
  set_color -b 284D91 FCAAF5
  printf ' [%s@%s] ' (whoami) (uname -n)

  # Current directory
  set_color normal
  set_color -o -b BCE0A1 3D701A
  printf ' %s ' (prompt_pwd)

  # Return code
  set_color normal
  if [ "$stat" = 0 ]
    set_color -b FFE0C4 7654FF
  else
    set_color -o -b 513959 FF51CA
  end
  printf ' @ %s ' $stat

  # >
  set_color normal
  printf '\n$ '
end
