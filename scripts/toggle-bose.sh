
if pactl list cards | rg "Active Profile: headset_head_unit"
then
    pactl set-card-profile  bluez_card.2C_41_A1_C7_24_75 a2dp_sink
else
    pactl set-card-profile  bluez_card.2C_41_A1_C7_24_75 headset_head_unit
fi
