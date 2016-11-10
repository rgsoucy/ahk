;Stuff to use for editing in bullhorn
;
;in html, makes selection red
;wrap selection in <span style="color:red"></span>
!~1::
	OldClipboard := Clipboard
	send, ^c
	Clipboard := "<span style=""color:red"">" . Clipboard . "</span>"
	send, ^v
Return
;
;
;in html, makes selection blue
;wrap selection in <span style="color:blue"></span>
!~2::
	OldClipboard := Clipboard
	send, ^c
	Clipboard := "<span style=""color:blue"">" . Clipboard . "</span>"
	send, ^v
Return