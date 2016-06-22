#!/usr/bin/env bash
thevar="fly_dev"
thewindow=".0"
thevarw="$thevar$thewindow"
tmux new -d -s $thevar
tmux send -t $thevarw start_dev_fly ENTER
