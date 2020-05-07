#!/bin/bash
set -e
set -u
set -o pipefail

####################################################################################################
#                                                                                                  #
#Date: May 6 ,2020																				   #
#Developed by Danison Rarama                                                                       #
#Command to re-index computer							                                           #
#                                                                                                  #
####################################################################################################

mdutil -i off /
rm -rf /.Spotlight-V100
rm -rf /.Spotlight-V200
mdutil -i on /
mdutil -E /                                                                                               