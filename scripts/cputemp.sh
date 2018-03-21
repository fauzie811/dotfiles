echo "$HOME/scripts/icons/memory.svg"
echo $(sensors | grep -A 1 -m 1 'temp1' | cut -c16-17 | sed '/^$/d')°C
