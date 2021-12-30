if test -e $HOME/.fnm
  set PATH $HOME/.fnm $PATH
  fnm env | source
end
