#!/bin/bash

set -e
set -u
set -o pipefail

####################################################################################################
# 
#Date: May 6 ,2020
#Developed by Danison Rarama 
#Command to remove Google Cache, Cookies, and History
#
####################################################################################################
#Close Google Chrome
pkill -quit Google Chrome || true

# Clear Browser Cache
rm -rf ~/Library/Caches/Google/Chrome/Default/Cache/* || true
# Clear non-signin user cache
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/Cookies || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/Cookies-journal || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/Extension || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/Extension-journal || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/History || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/History-journal || true
# Clear Profile user cache 1 of 3
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 1/Application\ Cache || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 1/Cookies || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 1/Cookies-journal || true 
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 1/Extension\ Cookies || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 1/Extension\ Cookies-journal || true
rm -rf ~/Application\ Support/Google/Chrome/Profile\ 1/History\ Provider\ Cache || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 1/History-journal || true
rm -rf ~/Application\ Support/Google/Chrome/Profile\ 1/History 
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 1/IndexedDB/* || true
# Clear Profile user cache 2 of 3
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 2/Application\ Cache || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 2/Cookies || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 2/Cookies-journal || true 
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 2/Extension\ Cookies || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 2/Extension\ Cookies-journal || true
rm -rf ~/Application\ Support/Google/Chrome/Profile\ 2/History\ Provider\ Cache || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 2/History-journal || true
rm -rf ~/Application\ Support/Google/Chrome/Profile\ 2/History 
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 2/IndexedDB/* || true
# Clear Profile user cache 2 of 3
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 3/Application\ Cache || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 3/Cookies || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 3/Cookies-journal || true 
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 3/Extension\ Cookies || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 3/Extension\ Cookies-journal || true
rm -rf ~/Application\ Support/Google/Chrome/Profile\ 3/History\ Provider\ Cache || true
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 3/History-journal || true
rm -rf ~/Application\ Support/Google/Chrome/Profile\ 3/History 
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ 3/IndexedDB/* || true

# Open Google Chrome
osascript -e 'tell app "Google Chrome" to display dialog "Cache, Cookies and History has now been cleared"'

exit 0