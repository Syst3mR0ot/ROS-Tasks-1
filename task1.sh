#!/bin/bash

echo '===== Task 1 ======'

chmod 777 task0.sh
./task0.sh

cp task1.sh catkin_ws/src/linux_exam/

cd catkin_ws/src/linux_exam/

mkdir -p this/is/my/linux/exam
cd this/is/my/linux/exam
touch my_file.py



echo 'This bash script has finished!'




