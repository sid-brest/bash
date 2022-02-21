#!/bin/bash
echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." > lorem
if grep "dolore" ./lorem; then
  echo "The word 'dolore' found"
fi