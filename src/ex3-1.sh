num1=$1
num2=$2
echo "--- $num1 과 $num2 의 사칙연산 ---"
echo "더하기 : $(expr $num1 + $num2)"
echo "빼기   : $(expr $num1 - $num2)"
echo "곱하기 : $(expr $num1 \* $num2)"
echo "나누기 : $(expr $num1 / $num2)"
