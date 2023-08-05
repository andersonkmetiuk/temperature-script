# paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'
echo '--------'
echo 'CPU Info'
echo '--------'

echo 'Temperature:'
echo '--------'
for i in 0 1 2 3
do
	echo $(cat /sys/class/thermal/thermal_zone$i/type)
	echo $(cat /sys/class/thermal/thermal_zone$i/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'
	echo '--------'
done
