E=$(getprop org.evolution.version 2>/dev/null)
X=$(getprop org.evolution.version.prop 2>/dev/null)
EX=10
EX=11
case "$EX" in
 "$E"|"$X")
  ROM=Evolution
 ;;
esac
if ([ "$ROM" == "Evolution" ]); then
    echo ""
    echo "------------------------------------------------------"
    echo "     _______    ______  __    __  ________________  _   __   _  __ "
    echo "    / ____/ |  / / __ \/ /   / / / /_  __/  _/ __ \/ | / /  | |/ / "
    echo "   / __/  | | / / / / / /   / / / / / /  / // / / /  |/ /   |   /  "
    echo "  / /___  | |/ / /_/ / /___/ /_/ / / / _/ // /_/ / /|  /   /   |   "
    echo " /_____/  |___/\____/_____/\____/ /_/ /___/\____/_/ |_/   /_/|_|   "
    echo "                                                                   "
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
    sed -i '/<boolean name="keyboard_redesign_roboto" value="false" />/s/.*/<boolean name="keyboard_redesign_roboto" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="enable_keyboard_redesign" value="false" />/s/.*/<boolean name="enable_keyboard_redesign" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="use_keyboard_redesign_theme_by_default" value="false" />/s/.*/<boolean name="use_keyboard_redesign_theme_by_default" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="use_keyboard_redesign_on_existing_theme_on_all_users" value="false" />/s/.*/<boolean name="use_keyboard_redesign_on_existing_theme_on_all_users" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="keyboard_redesign_higher_contrast" value="false" />/s/.*/<boolean name="keyboard_redesign_higher_contrast" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="keyboard_redesign_google_sans" value="false" />/s/.*/<boolean name="keyboard_redesign_google_sans" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="keyboard_redesign_keep_key_padding" value="false" />/s/.*/<boolean name="keyboard_redesign_keep_key_padding" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="keyboard_redesign_dark_comma" value="false" />/s/.*/<boolean name="keyboard_redesign_dark_comma" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<long name="use_keyboard_redesign_theme_by_default_new_user_timestamp" value="0" />/s/.*/<long name="use_keyboard_redesign_theme_by_default_new_user_timestamp" value="1" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="keyboard_redesign_forbid_key_shadows" value="false" />/s/.*/<boolean name="keyboard_redesign_forbid_key_shadows" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<long name="enable_keyboard_redesign_theme_new_user_timestamp" value="0" />/s/.*/<long name="enable_keyboard_redesign_theme_new_user_timestamp" value="1" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="keyboard_redesign_force_key_shadows" value="false" />/s/.*/<boolean name="keyboard_redesign_force_key_shadows" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<long name="use_keyboard_redesign_on_existing_theme_new_user_timestamp" value="0" />/s/.*/<long name="use_keyboard_redesign_on_existing_theme_new_user_timestamp" value="1" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="enable_keyboard_redesign_theme" value="false" />/s/.*/<boolean name="enable_keyboard_redesign_theme" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="use_keyboard_redesign_on_existing_theme" value="false" />/s/.*/<boolean name="use_keyboard_redesign_on_existing_theme" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
else
    echo ""
    echo "------------------------------------------------------"
    echo "     ____  _____  __ ________  "
    echo "    / __ \/  _/ |/ // ____/ /  "
    echo "   / /_/ // / |   // __/ / /   "
    echo "  / ____// / /   |/ /___/ /___ "
    echo " /_/   /___//_/|_/_____/_____/ "
    echo "                                "
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
    sed -i '/<boolean name="keyboard_redesign_roboto" value="false" />/s/.*/<boolean name="keyboard_redesign_roboto" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="enable_keyboard_redesign" value="false" />/s/.*/<boolean name="enable_keyboard_redesign" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="use_keyboard_redesign_theme_by_default" value="false" />/s/.*/<boolean name="use_keyboard_redesign_theme_by_default" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="use_keyboard_redesign_on_existing_theme_on_all_users" value="false" />/s/.*/<boolean name="use_keyboard_redesign_on_existing_theme_on_all_users" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="keyboard_redesign_higher_contrast" value="false" />/s/.*/<boolean name="keyboard_redesign_higher_contrast" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="keyboard_redesign_google_sans" value="false" />/s/.*/<boolean name="keyboard_redesign_google_sans" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="keyboard_redesign_keep_key_padding" value="false" />/s/.*/<boolean name="keyboard_redesign_keep_key_padding" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="keyboard_redesign_dark_comma" value="false" />/s/.*/<boolean name="keyboard_redesign_dark_comma" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<long name="use_keyboard_redesign_theme_by_default_new_user_timestamp" value="0" />/s/.*/<long name="use_keyboard_redesign_theme_by_default_new_user_timestamp" value="1" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="keyboard_redesign_forbid_key_shadows" value="false" />/s/.*/<boolean name="keyboard_redesign_forbid_key_shadows" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<long name="enable_keyboard_redesign_theme_new_user_timestamp" value="0" />/s/.*/<long name="enable_keyboard_redesign_theme_new_user_timestamp" value="1" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="keyboard_redesign_force_key_shadows" value="false" />/s/.*/<boolean name="keyboard_redesign_force_key_shadows" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<long name="use_keyboard_redesign_on_existing_theme_new_user_timestamp" value="0" />/s/.*/<long name="use_keyboard_redesign_on_existing_theme_new_user_timestamp" value="1" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="enable_keyboard_redesign_theme" value="false" />/s/.*/<boolean name="enable_keyboard_redesign_theme" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
    sed -i '/<boolean name="use_keyboard_redesign_on_existing_theme" value="false" />/s/.*/<boolean name="use_keyboard_redesign_on_existing_theme" value="true" />/' /data/data/com.google.android.inputmethod.latin/shared_prefs/flag_value.xml;
fi
HAL=$(getprop persist.vendor.camera.HAL3.enabled 2>/dev/null)
if ([ "$HAL" == "0" ]); then
    sed -i '/persist.vendor.camera.HAL3.enabled=1/s/.*/persist.vendor.camera.HAL3.enabled=1/' $MODPATH/system.prop;
elif ([ "$HAL" == "1" ]); then
    sed -i '/persist.vendor.camera.HAL3.enabled=1/s/.*/persist.vendor.camera.HAL3.enabled=1/' $MODPATH/system.prop;
else
    sed -i '/persist.vendor.camera.HAL3.enabled=1/s/.*//' $MODPATH/system.prop;
fi