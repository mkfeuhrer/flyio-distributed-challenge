#!/bin/bash

cwd=$(pwd)
go build -o output
cd $MAELSTROM_PATH
./maelstrom test -w unique-ids --bin $cwd/output  --time-limit 30 --rate 1000 --node-count 3 --availability total --nemesis partition
cd $cwd