#!/bin/sh -e

sel=$(slop -f "-i %i -g %g")
now=$(date +"%Y_%m_%d_%H_%M_%S")
shotgun $sel "/home/nic/vault/images/screenShots/${now}.png"
