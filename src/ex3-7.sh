#!/bin/bash
while true; do
    echo "--- 시스템 상태 확인 메뉴 ---"
    echo "1) 사용자 정보"
    echo "2) CPU/프로세스 사용률 (top 1회)"
    echo "3) 메모리 사용량"
    echo "4) 디스크 사용량"
    echo "5) 종료"
    read -p "번호를 선택하세요: " choice

    case $choice in
        1)
            echo "--- 사용자 정보 (who) ---"
            who
            ;;
        2)
            echo "--- CPU/프로세스 (top 1회) ---"
            top -n 1 | head -n 10
            ;;
        3)
            echo "--- 메모리 (free -h) ---"
            free -h
            ;;
        4)
            echo "--- 디스크 (df -h) ---"
            df -h
            ;;
        5)
            echo "프로그램을 종료합니다."
            break
            ;;
        *)
            echo "1~5 사이의 번호를 입력하세요."
            ;;
    esac
done
