#!/usr/bin/env bash

shopt -s nullglob

# To make the 'bar', pass in the current count, and the total count
# usage: makeBar 10 100
makeBar() {
        local currentIndex=$1
        local total=$2
        local percentDone=0
        percentDone=$(getPercent $currentIndex $total)
        local bar=''
        local i=0
        for ((i=0; i<percentDone; i++)); do
          bar+='*'
        done
        for ((i=percentDone; i<100; i++)); do
          bar+=' '
        done
        echo -ne "$currentIndex/$total [$bar] $percentDone%\r"
}

getPercent() {
  local current=$1
  local total=$2
  local result=$((current * 100 / total))
  echo "$result"
}
