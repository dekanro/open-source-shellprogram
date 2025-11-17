#!/bin/bash
run_command() {
    command_string="ls $*"
    echo "--- 함수가 실행할 명령어: [$command_string] ---"
    eval $command_string
}
echo "--- 스크립트 시작 ---"
run_command $*
echo "--- 스크립트 종료 ---"
