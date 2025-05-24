#!/bin/sh

# Toggle hide cursor on/off and send notification to communicate status #
#########################################################################

# This could be just done with test && condition off || condition on, but I 
# really want notifications (through notify-send) as it's hard to tell when
# xhidecursor is on or off

if ( pidof -q xhidecursor ); then
	killall xhidecursor
	notify-send "xhidecursor: displaying cursor when typing"
else
	xhidecursor&
	notify-send "xhidecursor: hiding cursor when typing"
fi
	
