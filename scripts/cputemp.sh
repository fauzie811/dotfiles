echo "$HOME/scripts/icons/cpu.svg"
echo $(sensors | grep -A 1 -m 1 'temp1' | cut -c16-17 | sed '/^$/d')°C
