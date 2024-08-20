#!/bin/bash

function battery(){
  cat /sys/class/power_supply/BAT1/capacity
}

function venv(){
  source ~/python-venv/bin/activate
}
