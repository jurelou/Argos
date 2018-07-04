#!/usr/bin/env bash

LOG=/var/log/init.log

touch $LOG

for a in /opt/run/*
do
    $a $* >> $LOG &
done

tail -f $LOG
