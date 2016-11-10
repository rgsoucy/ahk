;Gets Most Recent file from Downloads, opens with excel, runs jobs reporting macro
^!j::
	Folder=C:\Users\rsoucy\Downloads
	excelPath=C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE
	Loop, %Folder%\*
	{
	    FileGetTime, Time, %A_LoopFileFullPath%, C
	    If (Time > Time_Orig)
	    {
	        Time_Orig := Time
	        File := A_LoopFileFullPath
	        Name := A_LoopFileName
	    }
	}
	Run,  %excelPath% "%File%"
	sleep, 2000
	xl := ComObjActive("Excel.Application")
	xl.Run("PERSONAL.XLSB!OpenJobsFormat")
Return

;run notepad
!n::
	Run, notepad.exe
Return

;run notepad and paste clipboard
^!n::
	Run, notepad.exe
	winActivate Untitled - Notepad
	WinWaitActive Untitled - Notepad
	Send, ^v
Return

;Opens Most Recent Download file in excel
^!e::
Folder=C:\Users\rsoucy\Downloads
	excelPath=C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE
	Loop, %Folder%\*
	{
	    FileGetTime, Time, %A_LoopFileFullPath%, C
	    If (Time > Time_Orig)
	    {
	        Time_Orig := Time
	        File := A_LoopFileFullPath
	        Name := A_LoopFileName
	    }
	}
	Run,  %excelPath% "%File%"
	sleep, 2000
	xl := ComObjActive("Excel.Application")
Return