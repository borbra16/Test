declare -a size=("test1.jpg" "TestFile2.pdf" "test1.mp4" "test2.mp4" "test3.mp4" "test4.mp4")

now=$(date +%T)

echo "started wih testing of IO-Reading/Writing byte by byte docker-container"
echo "start time : $now"


for n in ${size[@]}
do
time curl http://localhost:8090/performance/startReading/${n}/etc/
sleep 1
time curl http://localhost:8090/performance/startWriting/${n}/etc/
sleep 1
done 2>&1 

echo "done with execution"

