#!/bin/env bash
#install git bash and run the script


SCRIPT_FULL_PATH=$(realpath "${BASH_SOURCE[0]}")
CUR_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

export DEBUG="TRUE"

echo "run in script ${CUR_DIR}"

LOG=`date +"%Y%m%d_%H%M%S"`.setup.log
touch $LOG
FILE=${CUR_DIR}/script-list.txt
echo "read $FILE and execute line by line..."
cat $FILE | while read LINE; do
    case "$LINE" in
        "")  # empty line
            echo ""
            ;;
        \#*) # start with '#'
            echo "$LINE"  | tee -a $LOG
            ;;
        *)   # other
            echo "run $LINE" | tee -a $LOG
            eval $LINE | tee -a $LOG
            ;;
    esac
done