#!/bin/bash

# to load these functions in your shell you can call this script from your bash_profile
#
# # add to ~/.bash_profile
# source <relative-path-to-repo>/bash_functions/my-functions.sh
#
# cd <repo-root>
# echo "source $PWD/bash_functions/my-functions.sh" >> ~/.bash_profile
#

function hellow() {
  echo "hello world function!"
}

function twizzler() {
  # pid=$! # Process Id of the previous running command
  seconds_from_now=$1
  seconds_from_now=${seconds_from_now:=10}
  end=$((SECONDS+seconds_from_now))

  spin='-\|/'
  while [ $SECONDS -lt $end ];
  do
    for i in {1..10};
    do
      i=$(( (i+1) %4 ))
      printf "\r${spin:$i:1}"
      sleep .1
    done;
  done;
}
