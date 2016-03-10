#!/usr/bin/sh
ftp -ivn <<EOJ >> /tmp/some_log_file
open 192.168.42.1
#user in .nrtc
asc
dir /tmp/fuse_d/DCIM/100MEDIA/ /tmp/A0.lst
quit
EOJ
## at this point, we have the list of A0* files with us

echo "open 192.168.42.1" >> /tmp/batch.out
echo "lcd images/" >> /tmp/batch.out
awk '{print $NF}' /tmp/A0.lst | while read file; do
echo "get $file" >> /tmp/batch.out   #we construct a ftp batchfile that will
echo "del $file" >> /tmp/batch.out   #delete a file after it transfers it to
done                                          #our end
echo "bye" >> /tmp/batch.out
rm /tmp/A0.lst
ftp -ivn < /tmp/batch.out >> /tmp/some_log_file
