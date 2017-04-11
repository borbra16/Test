declare -a size=("8" "16" "25" "28" "30" "31" "32" "33")

now=$(date +%T)

echo "started wih testing of NQueen-Problem on local-system"
echo "start time : $now"
for n in ${size[@]}
do
curl -s http://localhost:8080/n-damen/startProcess/setField/${n} > /dev/null
time curl -s http://localhost:8080/n-damen/startProcess/startGame > /dev/null
sleep 8
done 2>&1 

echo "done with execution"
