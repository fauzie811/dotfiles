GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -n 'Installing fish config... '
if [ -e ${HOME}/.config/fish ]; then
  echo -e "${RED}skipped${NC}"
else
  ln -s $PWD/.config/fish ${HOME}/.config/fish
  echo -e "${GREEN}ok${NC}"
fi

echo -n 'Installing lsd config... '
if [ -e ${HOME}/.config/lsd ]; then
  echo -e "${RED}skipped${NC}"
else
  ln -s $PWD/.config/lsd ${HOME}/.config/lsd
  echo -e "${GREEN}ok${NC}"
fi

echo -n 'Installing neovim config... '
if [ -e ${HOME}/.config/nvim ]; then
  echo -e "${RED}skipped${NC}"
else
  ln -s $PWD/.config/nvim ${HOME}/.config/nvim
  echo -e "${GREEN}ok${NC}"
fi

echo -n 'Installing starship config... '
if [ -e ${HOME}/.config/starship.toml ]; then
  echo -e "${RED}skipped${NC}"
else
  ln -s $PWD/.config/starship.toml ${HOME}/.config/starship.toml
  echo -e "${GREEN}ok${NC}"
fi

if [ -d ${HOME}/.termux ]; then
  echo -n 'Installing termux font... '
  if [ -L ${HOME}/.termux/font.ttf ]; then
    echo -e "${RED}skipped${NC}"
  else
    rm ${HOME}/.termux/font.ttf
    ln -s $PWD/.termux/font.ttf ${HOME}/.termux/font.ttf
    echo -e "${GREEN}ok${NC}"
  fi

  echo -n 'Installing termux colors... '
  if [ -L ${HOME}/.termux/colors.properties ]; then
    echo -e "${RED}skipped${NC}"
  else
    rm ${HOME}/.termux/colors.properties
    ln -s $PWD/.termux/colors.properties ${HOME}/.termux/colors.properties
    echo -e "${GREEN}ok${NC}"
  fi
fi

echo -n 'Installing awesomeshot... '
if [ ! -d ${HOME}/.local/share/scripts/libs ]; then
  ln -s $PWD/.local/share/scripts/libs ${HOME}/.local/share/scripts/libs
fi
if [ -e ${HOME}/.local/bin/awesomeshot ]; then
  echo -e "${RED}skipped${NC}"
else
  ln -s $PWD/.local/bin/awesomeshot ${HOME}/.local/bin/awesomeshot
  echo -e "${GREEN}ok${NC}"
fi
