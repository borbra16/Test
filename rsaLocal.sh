declare -a size=("6" "8" "12" "16" "20" "26" "28" "30" "32" "64")

now=$(date +%T)

echo "started wih testing of RSA-Encryption/Decryption on local-system"
echo "start time : $now"
for n in ${size[@]}
do
curl -s http://localhost:8080/rsa/encryption/startProcess/test2.jpg/home/boris/Documents/TestData/ > /dev/null
curl -s http://localhost:8080/rsa/encryption/setBitRange/${n} > /dev/null
time curl -s http://localhost:8080/rsa/encryption/startEncrypt 
sleep 1
time curl -s http://localhost:8080/rsa/encryption/startDecrypt/home/boris/Documents/RSA_Files/ 
sleep 8
done 2>&1 

echo "done with execution"

