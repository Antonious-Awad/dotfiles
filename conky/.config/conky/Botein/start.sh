#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/Botein/Botein.conf &> /dev/null &

exit
