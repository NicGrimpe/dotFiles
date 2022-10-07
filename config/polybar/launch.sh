#!/bin/bash

polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar basic 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bar launched..."