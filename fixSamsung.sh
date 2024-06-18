echo "Preparing..."
unzip twrp.zip
wget "https://github.com/Jacoblightning/Restore-Stupud-Samsung/releases/download/Lineage/lineage-17.1-20220206-nightly-s5neolte-signed.zip"
echo "Fixing the samsung..."
echo "Please put it into download mode (Press and hold Vol- and Power till its black, then hold VOl-, Power, and Home.)"
read -p "Press Enter to continue"
echo "Keep holding Vol-, Power, and Home until I say stop."
heimdall flash --RECOVERY recovery.img
echo "Press continue again."
read -p "Press Enter to continue"
echo "Keep holding Vol-, Power, and Home until I say stop."
heimdall flash --BOOT boot.img
echo "Press continue again."
read -p "Press Enter to continue"
heimdall flash --RECOVERY twrp-3.5.2*.img --no-reboot
rm twrp-3.5.2*.img
echo "Press and hold Power and Vol-."
echo "Then Try to enter recovery mode woth Vol+, Home, Power but change to Vol- in the middle of the Samsung logo"
echo "Repeat until you are in recovery mode"
read -p "Press Enter to continue"
echo "Advanced/ADB Sideload"
read -p "Press Enter to continue"
adb sideload lineage*.zip
rm lineage*.zip
echo "Reboot/System/OK"
read -p "Press Enter to continue"
echo "DONE!"
