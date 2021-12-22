if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

starship init fish | source

fundle plugin 'edc/bass'
fundle init

if test -e ~/.profile
  bass source ~/.profile
end

if test -e ~/.fzf.bash
  bass source ~/.fzf.bash
end

alias ls 'lsd'
alias artisan 'php artisan'
alias art 'php artisan'

