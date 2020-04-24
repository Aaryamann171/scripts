device_id=$(xinput list --id-only 'SynPS/2 Synaptics TouchPad')
#alternatively using grep and awk
#device_id=$(xinput list | grep -i "SynPS/2" | awk '{print $6}' | grep -o '[0-1][0-9]')
current_status=$(xinput -list-props 'SynPS/2 Synaptics TouchPad' | grep "Device Enabled" | awk '{print $4}')
if [ $current_status = 1 ]
then
   xinput set-prop $device_id "Device Enabled" 0
else
   xinput set-prop $device_id "Device Enabled" 1
fi
