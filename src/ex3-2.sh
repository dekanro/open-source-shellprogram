#!/bin/bash
echo "--- y = 0.5 * x^2 계산 ---"
echo "첫 번째 x 값을 입력하세요:"
read x1
y1=$(echo "scale=4; 0.5 * $x1 * $x1" | bc)
echo "결과 1: y = $y1"
echo "두 번째 x 값을 입력하세요:"
read x2
y2=$(echo "scale=4; 0.5 * $x2 * $x2" | bc)
echo "결과 2: y = $y2"
