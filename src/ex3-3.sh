#!/bin/bash
echo "--- 성적 등급 변환기 ---"
echo "점수 1을 입력하세요 (0-100):"
read score1
echo "점수 2를 입력하세요 (0-100):"
read score2

if [ $score1 -ge 90 ]; then
    grade1="A"
else
    grade1="B"
fi
echo "점수 1 등급: $grade1"

if [ $score2 -ge 90 ]; then
    grade2="A"
else
    grade2="B"
fi
echo "점수 2 등급: $grade2"

avg_score=$(echo "($score1 + $score2) / 2" | bc)
if [ $avg_score -ge 90 ]; then
    avg_grade="A"
else
    avg_grade="B"
fi
echo "평균 점수: $avg_score, 평균 등급: $avg_grade"
