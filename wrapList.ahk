;wrap li tags

!+l::

Wrap("li")

Wrap(tag) {

	OldClipboard := Clipboard, open :=	"<" tag ">", close :=	"</" tag ">"
	Clipboard :=	""
	sleep, 10
	send, ^c
	sleep, 10
	if	(Clipboard = "")
		return	False, Clipboard := OldClipboard
	Clipboard := open . Clipboard . close
	send, ^v
	Sleep, 10
crlf := RegExReplace(clipboard, "`r`n","",count) +""+ count 
   Send %   "{LEFT " StrLen(close) "}{SHIFT DOWN}{LEFT " StrLen(Clipboard) - StrLen(open) - StrLen(close) - crlf "}{SHIFT UP}"
	return	True, Clipboard := OldClipboard
}


