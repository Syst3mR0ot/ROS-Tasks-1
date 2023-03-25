#!/bin/bash

echo '===== Task 2 ======'

chmod 777 task1.sh
./task1.sh

cp task2.sh catkin_ws/src/linux_exam/

cd catkin_ws/src/linux_exam/


read -p "For small_square enter 1 || For medium_square enter 2 || For big_square enter 3 : `echo $'\n> '`" num
 
 if [[ $num == "1" ]]
   then 
       echo 'urtlebot robot perform the small square movement'
       touch small_square.py
elif [[ $num == "2" ]]
   then
       echo 'urtlebot robot perform the medium square movement'
       touch medium_square.py
elif [[ $num == "3" ]]
   then
       echo 'urtlebot robot perform the big square movement'
       touch big_square.py
else 
    echo "you entered wrong value"
fi


