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
