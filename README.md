# Temperature Script
Shows the temperature in the Ubuntu Linux environment


```
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
```
