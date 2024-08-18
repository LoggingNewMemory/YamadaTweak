LATESTARTSERVICE=true

ui_print "💾--------------------------------💾"
ui_print "            YAMADA TWEAKS           "
ui_print "💾--------------------------------💾"
ui_print "         By: Kanagawa Yamada        "
ui_print "------------------------------------"
ui_print "      READ THE TELEGRAM MESSAGE     "
ui_print "------------------------------------"
ui_print " "
sleep 1.5

ui_print "-----------------⚠️-----------------"
ui_print "      DO NOT COMBINE WITH OTHER     "
ui_print "         PERFORMANCE MODULES        "
ui_print "-----------------⚠️-----------------"
ui_print " "
sleep 1.5

ui_print "-----------------📱-----------------"
ui_print "            DEVICE INFO             "
ui_print "-----------------📱-----------------"
ui_print "DEVICE : $(getprop ro.build.product) "
ui_print "MODEL : $(getprop ro.product.model) "
ui_print "MANUFACTURE : $(getprop ro.product.system.manufacturer) "
ui_print "PROC : $(getprop ro.product.board) "
ui_print "CPU : $(getprop ro.hardware) "
ui_print "ANDROID VER : $(getprop ro.build.version.release) "
ui_print "KERNEL : $(uname -r) "
ui_print "RAM : $(free | grep Mem |  awk '{print $2}') "
ui_print " "
sleep 1.5

ui_print "-----------------🐱-----------------"
ui_print "            MODULE INFO             "
ui_print "-----------------🐱-----------------"
ui_print "Name : Yamada Tweak"
ui_print "Version : 1.0 "
ui_print "Support Device : MT 6833 / D 6080"
ui_print "Support Root : Magisk / KernelSU"
ui_print " "
sleep 1.5

ui_print "💾--------------------------------💾"
ui_print "         INSTALLING MODULES         "
ui_print "💾--------------------------------💾"
ui_print " "
sleep 1.5

unzip -o "$ZIPFILE" 'yamada/*' -d $MODPATH >&2

set_perm_recursive $MODPATH 0 0 0755 0644
set_perm_recursive $MODPATH/vendor 0 0 0755 0755
set_perm_recursive $MODPATH/yamada 0 0 0777 0755

ui_print "💾--------------------------------💾"
ui_print "        INSTALLING MODULES OK       "
ui_print "💾--------------------------------💾"
sleep 1.5

# am start -a android.intent.action.VIEW -d https://t.me/yamadacookingcenter/92 >/dev/null 2>&1