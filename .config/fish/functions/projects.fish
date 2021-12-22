function projects
  cd /media/fauzie/Data/Projects
  if count $argv > /dev/null
    switch $argv[(count $argv)]
      case '-*'
      case '*'
        cd $argv[(count $argv)]
        return
    end
  end
end
