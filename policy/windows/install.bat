
set BASE_DIR=%~dp0
set Filepath=FilepathToSubstitution
set Sourcepath=%BASE_DIR%SourcePathToSubstitution
echo %BASE_DIR%

if exist %Filepath% (
	set result=1
) else (
	set result=0
)

if %result% EQU 0 (
    copy /y %Sourcepath% %Filepath%
	if exist %Filepath% (
		set result2=1
	) else (
		set result2=0
	)
) else (
	set result2=1
)
echo %result2%


