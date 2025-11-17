#!/bin/bash
DB_FILE="DB.txt"

while true; do
    echo "--- 팀원 관리 DB ---"
    echo "1) 팀원 정보 추가"
    echo "2) 팀원과 한 일 기록"
    echo "3) 팀원 검색 (이름)"
    echo "4) 수행 내용 검색 (날짜)"
    echo "5) 종료"
    read -p "번호를 선택하세요: " choice

    case $choice in
        1)
            read -p "팀원 이름: " name
            read -p "전화번호: " phone
            echo "[팀원] 이름: $name, 전화번호: $phone" >> $DB_FILE
            echo "저장 완료."
            ;;
        2)
            read -p "날짜 (예: 2025-11-17): " date
            read -p "수행한 일: " task
            echo "[업무] 날짜: $date, 내용: $task" >> $DB_FILE
            echo "저장 완료."
            ;;
        3)
            read -p "검색할 팀원 이름: " search_name
            echo "--- '$search_name' 검색 결과 ---"
            grep "$search_name" $DB_FILE
            ;;
        4)
            read -p "검색할 날짜 (예: 2025-11-17): " search_date
            echo "--- '$search_date' 검색 결과 ---"
            grep "$search_date" $DB_FILE
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
