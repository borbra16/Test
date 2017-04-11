declare -a size=("6" "8" "12" "16" "20" "26" "28" "30" "32" "64")

now=$(date +%T)

echo "started wih testing of RSA-Encryption/Decryption in docker-container"
echo "start time : $now"
for n in ${size[@]}
do
curl -s http://localhost:8090/encryption/startProcess/test2.jpg/etc/ > /dev/null
curl -s http://localhost:8090/encryption/setBitRange/${n} > /dev/null
time curl -s http://localhost:8090/encryption/startEncrypt 
sleep 1
time curl -s http://localhost:8090/encryption/startDecrypt/etc/ 
sleep 8
done 2>&1 

echo "done with execution"

