;caps extender
;slows down and extends caps lock key
;
;hold for .4 seconds to toggle caps on/off

CapsLock::
counter=0
Loop,90
{
    sleep,10
    counter+=1
    If counter=40
        GetKeyState,state,CapsLock,P
    If state=U
        Break
}
Return

