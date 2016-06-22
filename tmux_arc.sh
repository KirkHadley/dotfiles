#!/usr/bin/env bash
thevar="tmarc"
thewindow=".0"
thevarw="$thevar$thewindow"
tmux new -d -s $thevar
tmux send -t $thevarw cdapp ENTER
tmux send -t $thevarw arc ENTER
