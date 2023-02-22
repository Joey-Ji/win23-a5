#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

if [[ $($CALCULATOR 3 '*' 4) -ne 12 ]]; then  # If the output of the program is not 12...
  echo 'ERROR! A valid run of the calculator (3 * 4) failed to produce 12 as an output!'
  exit 1
fi

if $CALCULATOR 3 * 4; then 
  echo 'ERROR! An invalid run of the calculator apparaently succeeded.'
  exit 1
fi

if ! noglob $CALCULATOR 3 * 4; then
  echo 'ERROR! An valid run of the calculator apparently failed.' 
  exit 1
fi


