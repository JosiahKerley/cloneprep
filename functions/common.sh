#!/usr/bin/env bash

function wrap() {
  echo $* | fold -w 32
}

function message(){
  echo ""
  echo ""
  echo ""
  echo "================================"
  wrap $*
  echo "================================"
  echo ""
  echo ""
  echo ""
}

function run(){
  message "Executing: $*"
  time eval "$*"
}

