#!/bin/bash 

#!/bin/sh 

# clone hình từ git
git clone https://github.com/locth/OS_LAB2_IMG.git

#2.6.1a 

# kiểm tra có tồn tại thư mục PNG chưa?
# nếu chưa tồn tại thì tạo thư mục PNG
if [ ! -d PNG ]; then  
    mkdir PNG 
fi 

# kiểm tra có tồn tại thư mục JPG chưa?
# nếu chưa tồn tại thì tạo thư mục JPG
if [ ! -d JPG ]; then 
    mkdir JPG 
fi 

#2.6.1b 

# kiểm tra các file trong thư mục OS_LAB2_IMG
for file in $(ls OS_LAB2_IMG); do 
    # nếu đuôi file là .PNG thì di chuyển file đó sang thư mục PNG 
    if [[ $(file -b OS_LAB2_IMG/$file) == *"PNG"* ]]; then 
        sudo mv OS_LAB2_IMG/$file PNG 
    fi 
done  

#2.6.1c 

# kiểm tra các file trong thư mục OS_LAB2_IMG
for file in $(ls OS_LAB2_IMG); do 
    # nếu đuôi file là .JPEG thì di chuyển file đó sang thư mục JPG
    if [[ $(file -b OS_LAB2_IMG/$file) == *"JPEG"* ]]; then 
        sudo mv OS_LAB2_IMG/$file JPG 
    fi 
done 




 

 
