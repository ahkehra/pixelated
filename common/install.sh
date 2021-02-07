E=$(getprop org.evolution.version 2>/dev/null)
X=$(getprop org.evolution.version.prop 2>/dev/null)
EX=11
case "$EX" in
 "$E"|"$X")
  ROM=Evolution
 ;;
esac
if ([ "$ROM" == "Evolution" ]); then
    echo ""
    echo "------------------------------------------------------"
    echo "     ______            __      __  _            _  __  "
    echo "    / ____/   ______  / /_  __/ /_(_)___  ____ | |/ /   "
    echo "   / __/ | | / / __ \/ / / / / __/ / __ \/ __ \|   /     "
    echo "  / /___ | |/ / /_/ / / /_/ / /_/ / /_/ / / / /   |      "
    echo " /_____/ |___/\____/_/\__,_/\__/_/\____/_/ /_/_/|_|      "
    echo "                                                        "
    echo "------------------------------------------------------"
    echo "• Device : $(getprop ro.product.system.device) "
    echo "• Model : $(getprop ro.product.system.model) "
    echo "• Fingerprint : $(getprop ro.system.build.fingerprint) "
    echo "• Manufacturer : $(getprop ro.product.system.manufacturer) "
    echo "• Android Version : $(getprop ro.system.build.version.release) "
    echo ""
    echo "- Installing, Google Sans FONT For Evolution X -"
    echo ""
    echo "- Installing, Pixel 5 (REDFIN) Props For Evolution X -"
    echo ""
    cp -af $MODPATH/flag_value.xml /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml
else
    echo ""
    echo "------------------------------------------------------"
    echo " ╭━━━┳━━┳━╮╭━┳━━━┳╮"
    echo " ┃╭━╮┣┫┣┻╮╰╯╭┫╭━━┫┃"
    echo " ┃╰━╯┃┃┃╱╰╮╭╯┃╰━━┫┃"
    echo " ┃╭━━╯┃┃╱╭╯╰╮┃╭━━┫┃╱╭╮"
    echo " ┃┃╱╱╭┫┣┳╯╭╮╰┫╰━━┫╰━╯┃"
    echo " ╰╯╱╱╰━━┻━╯╰━┻━━━┻━━━╯"
    echo "------------------------------------------------------"
    echo "• Device : $(getprop ro.product.system.device) "
    echo "• Model : $(getprop ro.product.system.model) "
    echo "• Fingerprint : $(getprop ro.system.build.fingerprint) "
    echo "• Manufacturer : $(getprop ro.product.system.manufacturer) "
    echo "• Android Version : $(getprop ro.system.build.version.release) "
    echo ""
    echo "- Installation, Google Sans FONT -"
    echo ""
    echo "- Installation, Pixel 5 (REDFIN) Props -"
    echo ""
    sed -i '/org.evolution.device=redfin/s/.*//' $MODPATH/system.prop;
    cp -af $MODPATH/flag_value.xml /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml
fi
HAL=$(getprop persist.vendor.camera.HAL3.enabled 2>/dev/null)
if ([ "$HAL" == "0" ]); then
    sed -i '/persist.vendor.camera.HAL3.enabled=1/s/.*/persist.vendor.camera.HAL3.enabled=1/' $MODPATH/system.prop;
elif ([ "$HAL" == "1" ]); then
    sed -i '/persist.vendor.camera.HAL3.enabled=1/s/.*/persist.vendor.camera.HAL3.enabled=1/' $MODPATH/system.prop;
else
    sed -i '/persist.vendor.camera.HAL3.enabled=1/s/.*//' $MODPATH/system.prop;
fi