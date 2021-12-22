if status is-interactive
  if not functions -q fundle
    # eval (curl -sfL https://git.io/fundle-install)
    eval (curl -sfL https://raw.githubusercontent.com/danhper/fundle/master/install-fundle.fish)
  end

  starship init fish | source
end

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

