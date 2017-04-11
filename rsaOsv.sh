declare -a size=("6" "8" "12" "16" "20" "26" "28" "30" "32" "64")

now=$(date +%T)

echo "started wih testing of RSA-Encryption/Decryption on unikernel-system"
echo "start time : $now"

curl -s http://192.168.122.76:8080/encryption/startProcess/test2.jpg/usr/ > /dev/null

for n in ${size[@]}
do
curl -s http://192.168.122.76:8080/encryption/setBitRange/${n} > /dev/null
time curl -s http://192.168.122.76:8080/encryption/startEncrypt
sleep 1
time curl -s http://192.168.122.76:8080/encryption/startDecrypt/
sleep 8
done 2>&1 

echo "done with execution"

