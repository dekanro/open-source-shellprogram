#!/bin/bash
if [ ! -d "DB" ]; then
    echo "'DB' 폴더가 없어 새로 생성합니다."
    mkdir DB
else
    echo "'DB' 폴더가 이미 존재합니다."
fi

echo "DB 폴더에 5개 파일 생성 중..."
touch DB/file1.txt DB/file2.txt DB/file3.txt DB/file4.txt DB/file5.txt
ls -l DB

echo "DB 폴더 압축 중 (db_archive.tar)..."
tar -cvf db_archive.tar DB

echo "'train' 폴더 생성 및 5개 파일 링크 생성 중..."
if [ ! -d "train" ]; then
    mkdir train
fi

# ../DB/ 가 아니라 DB/ 로 수정!
ln -s DB/file*.txt train/
ls -l train
