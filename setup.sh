BOLDGREEN='\e[1;32m'
BOLDRED='\e[1;31m'
NOCOLOR='\e[0m' # No Color

echo -n 'Installing fish config... '
if [ -e ${HOME}/.config/fish ]; then
  echo -e "${BOLDRED}skipped${NOCOLOR}"
else
  ln -s $PWD/.config/fish ${HOME}/.config/fish
  echo -e "${BOLDGREEN}ok${NOCOLOR}"
fi

echo -n 'Installing lsd config... '
if [ -e ${HOME}/.config/lsd ]; then
  echo -e "${BOLDRED}skipped${NOCOLOR}"
else
  ln -s $PWD/.config/lsd ${HOME}/.config/lsd
  echo -e "${BOLDGREEN}ok${NOCOLOR}"
fi

echo -n 'Installing neovim config... '
if [ -e ${HOME}/.config/nvim ]; then
  echo -e "${BOLDRED}skipped${NOCOLOR}"
else
  ln -s $PWD/.config/nvim ${HOME}/.config/nvim
  echo -e "${BOLDGREEN}ok${NOCOLOR}"
fi

echo -n 'Installing starship config... '
if [ -e ${HOME}/.config/starship.toml ]; then
  echo -e "${BOLDRED}skipped${NOCOLOR}"
else
  ln -s $PWD/.config/starship.toml ${HOME}/.config/starship.toml
  echo -e "${BOLDGREEN}ok${NOCOLOR}"
fi

if [ -d ${HOME}/.termux ]; then
  echo -n 'Installing termux font... '
  if [ -L ${HOME}/.termux/font.ttf ]; then
    echo -e "${BOLDRED}skipped${NOCOLOR}"
  else
    rm ${HOME}/.termux/font.ttf
    ln -s $PWD/.termux/font.ttf ${HOME}/.termux/font.ttf
    echo -e "${BOLDGREEN}ok${NOCOLOR}"
  fi

  echo -n 'Installing termux colors... '
  if [ -L ${HOME}/.termux/colors.properties ]; then
    echo -e "${BOLDRED}skipped${NOCOLOR}"
  else
    rm ${HOME}/.termux/colors.properties
    ln -s $PWD/.termux/colors.properties ${HOME}/.termux/colors.properties
    echo -e "${BOLDGREEN}ok${NOCOLOR}"
  fi
fi

echo -n 'Installing fancyshot... '
if [ -e ${HOME}/.local/bin/fancyshot ]; then
  echo -e "${BOLDRED}skipped${NOCOLOR}"
else
  ln -s $PWD/.local/bin/fancyshot ${HOME}/.local/bin/fancyshot
  echo -e "${BOLDGREEN}ok${NOCOLOR}"
fi
echo -n 'Installing fancyshot config... '
if [ -f ${HOME}/.config/fancyshot.sh ]; then
  echo -e "${BOLDRED}skipped${NOCOLOR}"
else
  cp -r $PWD/.config/fancyshot.sh ${HOME}/.config/fancyshot.sh
  echo -e "${BOLDGREEN}ok${NOCOLOR}"
fi
