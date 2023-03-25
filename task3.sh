#!/bin/bash

echo '===== Task 3 ======'

chmod 777 task1.sh
./task1.sh

cp task3.sh catkin_ws/src/linux_exam/

cd catkin_ws/src/linux_exam/this/is/my/linux/exam
rm *
touch exam{1,2,3}.py

chmod 754 exam1.py
chmod 501 exam2.py
chmod 421 exam3.py

