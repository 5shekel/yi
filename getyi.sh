#github.com/5shekel/panyi
# lftp script to d/l al media from xiomi and delete after transfer
open 192.168.42.1
cd /tmp/fuse_d/DCIM/
ls
#mirror with resume
mirror --continue --only-missing  --loop --Remove-source-files --verbose /tmp/fuse_d/DCIM 
images/
quit
