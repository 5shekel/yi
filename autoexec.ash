# XIAOMI YI
# https://github.com/5shekel/yi

#runs ftp server ftp://192.168.42.1/
#author: nutsey & nikulin
sleep 2
lu_util exec 'nohup tcpsvd -u root -vE 0.0.0.0 21 ftpd -w / >> /dev/null 2>&1 &'



# by Halvaborsch <dsequence@gmail.com>
# HDR script with autoknee
# https://github.com/PJanisio/Xiaomi_Yi_autoexec/
# autostart_hdr_timelapse

sleep 5
# Fix ISO to 200
t ia2 -ae exp 200 0 0

# some time for timelapse preparation
sleep 20

while true
do
   t ia2 -adj autoknee 0
   sleep 1
   t app key shutter
   t app key shutter_rel
   lu_util exec 'sleep 0.5'

   t ia2 -adj autoknee 120
   sleep 1
   t app key shutter
   t app key shutter_rel
   lu_util exec 'sleep 0.5'

   t ia2 -adj autoknee 255
   sleep 1
   t app key shutter
   t app key shutter_rel
   lu_util exec 'sleep 0.5'

   # some sleep between shots
   sleep 20
done

