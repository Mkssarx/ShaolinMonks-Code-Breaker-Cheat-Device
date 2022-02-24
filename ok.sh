#! /bin/bash
# Make Instance Ready for Remote Desktop or RDP
apt-get update
rm -rf 10.ENT.x64.EVAL.US-English 10.ENT.x64.EVAL.US-English.img 10.ENT.x64.EVAL.US-English.gz ngrok ngrok.zip ng.sh > /dev/null 2>&1
echo "Download windows files"
wget -O 10.ENT.x64.EVAL.US-English.gz https://archive.org/download/10.ENT.x64.EVAL.USEnglish_201902/10.ENT.x64.EVAL.US-English.gz
gunzip 10.ENT.x64.EVAL.US-English.gz
echo "Wait..."
echo "I m Working Now.."
mv 10.ENT.x64.EVAL.US-English 10.ENT.x64.EVAL.US-English.img
wget -O ng.sh https://raw.githubusercontent.com/jarkomp3/fix/main/ngrok.sh > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
clear
apt-get install qemu-system-x86 -y
echo "Wait..."
echo "Starting Windows"
qemu-system-x86_64 -hda 10.ENT.x64.EVAL.US-English.img -m 8G -smp cores=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Username: WhatUpTime.com"
echo "Password: P@ssword64"
echo "===================================="
echo "===================================="
echo "Don't closse this Tab"
echo "Wait 1 - 3 minut for finishing bot"
echo "visit geol.my.id"
echo "Support YT Channel-> Berbagi Cara Setting, thankyou"
echo "Link-> https://www.youtube.com/channel/UCrsNAJohPSnW7ceBAp8Yd7A"
echo "===================================="
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
# Branding

printf """$c$b

thanks for watching

    $r  Support YT Channel-> Berbagi Cara Setting © 2022 $c https://www.youtube.com/channel/UCrsNAJohPSnW7ceBAp8Yd7A 
          
$endc$enda""";
sleep 43200
