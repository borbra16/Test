declare -a size=("8" "16" "25" "28" "30" "31" "32" "33")

now=$(date +%T)

echo "started wih testing of NQueen-Problem in docker-container"
echo "start time : $now"
for n in ${size[@]}
do
curl -s http://localhost:8090/startProcess/setField/${n} > /dev/null
time curl -s http://localhost:8090/startProcess/startGame > /dev/null
sleep 8
done 2>&1 

echo "done with execution"

