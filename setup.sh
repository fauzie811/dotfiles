GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -n 'Installing fish config... '
if [ -e ~/.config/fish ]; then
  echo -e "${RED}skipped${NC}"
else
  ln -s $PWD/.config/fish ~/.config/fish
  echo -e "${GREEN}ok${NC}"
fi

echo -n 'Installing lsd config... '
if [ -e ~/.config/lsd ]; then
  echo -e "${RED}skipped${NC}"
else
  ln -s $PWD/.config/lsd ~/.config/lsd
  echo -e "${GREEN}ok${NC}"
fi

echo -n 'Installing neovim config... '
if [ -e ~/.config/nvim ]; then
  echo -e "${RED}skipped${NC}"
else
  ln -s $PWD/.config/nvim ~/.config/nvim
  echo -e "${GREEN}ok${NC}"
fi

echo -n 'Installing starship config... '
if [ -e ~/.config/starship.toml ]; then
  echo -e "${RED}skipped${NC}"
else
  ln -s $PWD/.config/starship.toml ~/.config/starship.toml
  echo -e "${GREEN}ok${NC}"
fi

if [ -d ~/.termux ]; then
  echo -n 'Installing termux font... '
  if [ -L ~/.termux/font.ttf ]; then
    echo -e "${RED}skipped${NC}"
  else
    rm ~/.termux/font.ttf
    ln -s $PWD/.termux/font.ttf ~/.termux/font.ttf
    echo -e "${GREEN}ok${NC}"
  fi

  echo -n 'Installing termux colors... '
  if [ -L ~/.termux/colors.properties ]; then
    echo -e "${RED}skipped${NC}"
  else
    rm ~/.termux/colors.properties
    ln -s $PWD/.termux/colors.properties ~/.termux/colors.properties
    echo -e "${GREEN}ok${NC}"
  fi
fi