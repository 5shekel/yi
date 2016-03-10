# yi
time capsule - time lapse, wireless, sun based


##dependnices
xiomi yi sport cam  
lftp - http://lftp.yar.ru/


##connect
in app settings >  "wifi is on on startup"<br>  
(or with [scripts](http://www.tami.org.il/index.php/Ipcam#scripts))  

connect to the yicam wifi 

##run
<pre><code>
#clone this to your machine
git clone git@github.com:5shekel/yi.git
#go to folder
cd yi
#run lftp script
lftp -f getyi.lftp
</code></pre>
