@echo off
setlocal

:: Variables
set pass=your_password
set orig_folder=C:\Users\{your_username}\Desktop\{your_obsidian_vault_folder}
set dest_folder=C:\{your_output_folder}

set output_name={your_obsidian_vault_folder}(%date:/=-%__%time::=%)


:: Check if folders exist
if not exist %orig_folder% goto ERROR_ORIG_NOT_EXIST
if not exist %dest_folder% goto ERROR_DEST_NOT_EXIST


goto START

:ERROR_ORIG_NOT_EXIST
	echo ERROR: Origin folder %orig_folder% doesn't exist.
	echo Ended execution.
	goto :EOF

:ERROR_DEST_NOT_EXIST
	echo ERROR: Destination folder %dest_folder% doesn't exist.
	echo Ended execution.
	goto :EOF

	
:: Prepared to proceed
:START
	echo.
	echo A compressed file of the folder "%orig_folder%" will be created
	echo As a file named "%output_name%.7z"
	echo In the destination folder "%dest_folder%"
	echo.

	choice /C yn /M "Do you want to proceed?: "
	if %ErrorLevel%==1 goto YES
	if %ErrorLevel%==2 goto NO


:YES
	:: Start of the process
	echo Working...
	echo Obsidian Backup: %output_name% > "%dest_folder%\log_obsidian_backup.txt"

	:: Main program's command
	7z a "%dest_folder%\%output_name%.7z" "%orig_folder%" -p%pass% -mhe=on >> "%dest_folder%\log_obsidian_backup.txt" 2>&1


	echo.
	echo Finished, you can consult the created log file.
	endlocal
	goto :EOF

:NO
	echo Canceled by the user.
	endlocal
	goto :EOFs
