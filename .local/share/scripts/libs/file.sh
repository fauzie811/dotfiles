function openFile() {
  if [ -x "$(command -v termux-open)" ]; then
    termux-open ${1}
  # else
  #   xdg-open ${1}
  fi
}