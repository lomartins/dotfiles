#!/bin/sh

POSITIONAL=()
while [[ $# -gt 1 ]]; do
  key="$1"

  case $key in
    -c|--class)
      CLASS="$2"
      shift # past argument
      shift # past value
      ;;
    -e|--exec)
      EXEC_CMD="$2"
      shift # past argument
      shift # past value
      ;;
    *)    # unknown option
      POSITIONAL+=("$1") # save it in an array for later
      shift # past argument
      ;;
  esac
done

RESULT=`i3-msg "[class=$CLASS] focus"`

if [[ $RESULT != "[{\"success\":true}]" ]]; then
    exec $EXEC_CMD
fi