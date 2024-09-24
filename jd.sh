#!/bin/bash  

#!/bin/bash  
export TZ='Asia/Shanghai' 

 cd /app
 
echo 启动 cron服务状态：
sudo service cron start

echo 检查cron服务状态：
sudo service cron status
sleep 2


    # 获取当前时间，并格式化为指定格式
    current_time=$(date +"%Y-%m-%d %H:%M:%S")

 
   # 直接通过进程名称终止所有Python 3.11进程
   pkill python3.11
   pkill python

   # 强制终止所有Python 3.11进程
   pkill -9 python3.11
   pkill -9 python

   pkill chrome
  


# 获取当前时区
current_timezone=$(date +"%Z")




#!/bin/bash

    # 定时多少分钟
 min_=20
while true
do
    python main.py  # 运行 Python 脚本

    

  
   echo "等待$min_分钟后再运行"
    # 等待300秒（20分钟），然后继续循环
   #sleep 1200

 # 显示倒计时
    for ((i=$min_; i>0; i--)); do
        if [ $i -eq 1 ]; then
           # echo "最后一分钟，开始倒数："
            for ((j=60; j>0; j-=10)); do
                echo "倒数 $j 秒后再运行检测京东CK..."
                sleep 10  # 每次等待10秒
            done
        else
            echo "等待 $i 分钟后再运行检测京东CK..."
            sleep 60  # 每次等待60秒（1分钟）
        fi
    done

    
    
   # 直接通过进程名称终止所有Python 3.11进程
   pkill python3.11
   pkill python

   # 强制终止所有Python 3.11进程
   pkill -9 python3.11
   pkill -9 python

   pkill chrome
   
   
   



    # 判断当前时间是否在指定的删除时间范围内（22点24分到3点42分）
    current_hour=$(date +"%H")
    current_minute=$(date +"%M")
    if [ "$current_hour" -eq 22 ] && [ "$current_minute" -ge 24 ] && [ "$current_minute" -le 42 ]; then
        # 删除指定文件
        echo "Deleting /home/kasm-user/Desktop/dslz666/jdck.log at $(date)" >> $PWD/jdck_dslz.log
        rm -f $PWD/jdck.log
        
       
    fi




    # 切换到脚本所在目录
    #cd /home/kasm-user/Desktop/dslz666
    cd /app

    # 运行 Python 脚本
    python main.py
    
    
    echo "*******************************************************"
    echo "删除 /app/jd.log 的时间是$current_hour:$current_minute"
    echo "删除 /app/jd.log 的时间是$current_hour:$current_minute" >> $PWD/jdck_dslz.log
     rm -f  $PWD/jd.log
    
    echo "----------------------------------------------"
    echo "不在删除日记文件  的时间段  （22点24分到3点42分）"
    echo "----------------------------------------------"
    
   
   
   
   # 判断当前时区是否为 Asia/Shanghai
if [ "$current_timezone" != "Asia/Shanghai" ]; then
    # 获取当前时间，并加上8小时
     current_time=$(date -d "+8 hours" +"%Y-%m-%d %H:%M:%S")

      current_time=$(date +"%Y-%m-%d %H:%M:%S")
    echo "jd.sh   jd.sh 获取当前时间，并加上8小时   加上8小时"  >> $PWD/jdck_dslz.log

       # 将当前时间写入文件
    echo "jd.sh   jd.sh 运行的时间Current time: $current_time" >> $PWD/jdck_dslz.log
    echo "" >>  "$PWD/jdck_dslz.log"  # 加入空行
    echo "jd.sh   jd.sh 运行的时间 ($current_time) written to jdck.log"
  
    
else
    # 直接获取当前时间，不需要加8小时
    echo "jd.sh   jd.sh 直接获取当前时间，不需要加8小时"  >> $PWD/jdck_dslz.log
    current_time=$(date +"%Y-%m-%d %H:%M:%S")
    
        echo "jd.sh   jd.sh 运行的时间Current time: $current_time" >> $PWD/jdck_dslz.log
         echo "" >>  "$PWD/jdck_dslz.log"  # 加入空行
    echo "jd.sh   jd.sh 运行的时间 ($current_time) written to jdck.log"
fi

echo "当前时间：$current_time"

    
done




























