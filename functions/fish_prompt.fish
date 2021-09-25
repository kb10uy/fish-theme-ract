function fish_prompt
  set -l stat $status
  set -q ract_host_fg || set ract_host_fg FCAAF5
  set -q ract_host_bg || set ract_host_bg 284D91

  # User and host
  set_color normal
  set_color -b $ract_host_bg $ract_host_fg
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
