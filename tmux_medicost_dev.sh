#!/usr/bin/env bash
thevar="devmed"
thewindow=".0"
thevarw="$thevar$thewindow"
tmux new -d -s $thevar
tmux send -t $thevarw medicost_dev ENTER
