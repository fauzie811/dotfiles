TEMP=$(sensors | grep -A 1 -m 1 'temp1' | cut -c16-17 | sed '/^$/d')

echo "$HOME/scripts/icons/thermometer-$((($TEMP-40)*5/50)).svg"
echo $TEMP°C
