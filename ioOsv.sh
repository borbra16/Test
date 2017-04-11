declare -a size=("test1.jpg" "TestFile2.pdf" "test1.mp4" "test2.mp4" "test3.mp4")

now=$(date +%T)

echo "started wih testing of IO-Reading/Writing byte by byte unikernel-system"
echo "start time : $now"


for n in ${size[@]}
do
time curl http://192.168.122.76:8080/performance/startReading/${n}/usr/
sleep 1
time curl http://192.168.122.76:8080/performance/startWriting/${n}/usr/
sleep 1
done 2>&1 

echo "done with execution"

