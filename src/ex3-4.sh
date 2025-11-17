#!/bin/bash
scores=()
sum=0

while true; do
    echo "--- 성적 관리 메뉴 ---"
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급(GPA) 변환"
    echo "5) 종료"
    read -p "번호를 선택하세요: " choice

    case $choice in
        1)
            read -p "추가할 성적을 입력하세요: " new_score
            scores+=($new_score)
            sum=$(expr $sum + $new_score)
            echo "[$new_score] 점 추가 완료."
            ;;
        2)
            echo "입력된 모든 점수: ${scores[@]}"
            ;;
        3)
            count=${#scores[@]}
            if [ $count -eq 0 ]; then
                echo "먼저 성적을 추가하세요."
            else
                avg=$(echo "scale=2; $sum / $count" | bc)
                echo "평균 점수: $avg"
            fi
            ;;
        4)
            count=${#scores[@]}
            if [ $count -eq 0 ]; then
                echo "먼저 성적을 추가하세요."
            else
                avg=$(echo "scale=2; $sum / $count" | bc)
                if [ $(echo "$avg >= 90" | bc) -eq 1 ]; then
                    gpa="A"
                else
                    gpa="B"
                fi
                echo "평균 등급(GPA): $gpa"
            fi
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
