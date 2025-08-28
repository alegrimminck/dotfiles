function help {
  echo -e "Help"

  if [ -f $DOTZSH/aliases.sh ]; then
    echo -e "\n[*] Aliases"
    cat $DOTZSH/aliases.sh | grep -E '^alias ' | awk -F'alias |=' '{printf "  %s = %s\n", $2, $3}'
    echo
    cat $DOTZSH/aliases-pulso.sh | grep -E '^alias ' | awk -F'alias |=' '{printf "  %s = %s\n", $2, $3}'
  fi
}