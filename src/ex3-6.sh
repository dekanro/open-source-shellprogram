#!/bin/bash
echo "--- [셸] 실행 파일(Python)을 시작합니다. ---"
echo "--- [셸] 넘겨줄 인자: $* ---"
python3 my_program.py $*
echo "--- [셸] 실행 파일이 종료되었습니다. ---"
