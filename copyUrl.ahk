#f6::
Send ^l       	;gives focus to the URL
clipboard =  	; Start off empty to allow ClipWait to detect when the text has arrived.
Send ^c
ClipWait  		; Wait for the clipboard to contain text.

Run, iexplore.exe %clipboard% ; open Internet Explorer to active webpage

return