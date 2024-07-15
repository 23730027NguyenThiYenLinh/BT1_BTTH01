#!/bin/sh 

#  Nhập tên sinh viên
read -p "Nhap ten: " name 

# tạo thư mục với tên tương ứng
mkdir $name 2>/dev/null 

#  duyệt file monhoc.txt để lấy tên môn học theo từng dòng
for classID in $(cat monhoc.txt); do 
    # tạo thư mục môn học trong thư mục tên Sinh viên
    mkdir $name/$classID 2>/dev/null 
done 
