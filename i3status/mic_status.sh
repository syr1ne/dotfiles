#!/bin/sh

# Specify your microphone name directly here
MIC_NAME="alsa_input.pci-0000_03_00.6.analog-stereo"  # Replace this with your actual mic name

# Function to check if the microphone is muted or unmuted
check_mic_status() {
  # Get the mute status of the microphone
  local mute_status=$(pactl list sources | grep -A 15 "$MIC_NAME" | grep 'Mute' | awk '{print $2}')

  # Determine if the microphone is muted or not
  if [ "$mute_status" == "yes" ]; then
    echo " Mic: Off "
  else
    echo " Mic: On "
  fi
}

# Integrate with i3status
i3status | (read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && while :
do
  read line
  # Print the microphone status in the i3status bar
  mic_status=$(check_mic_status)
  echo ",[{\"full_text\":\"$mic_status\" },${line#,\[}" || exit 1
done)

