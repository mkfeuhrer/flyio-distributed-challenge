#!/bin/bash

cwd=$(pwd)
go build -o output
cd $MAELSTROM_PATH
./maelstrom test -w echo --bin $cwd/output --node-count 1 --time-limit 10
cd $cwd