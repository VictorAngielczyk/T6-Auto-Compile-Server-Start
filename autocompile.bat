@echo OFF
set baseFilePath="script location"
set endFilePath="script destination"
set serverFilePath="main server directory"
copy %baseFilePath% 
Compiler.exe _clientids.gsc
del _clientids.gsc
ren _clientids-compiled.gsc _clientids.gsc
copy /y _clientids.gsc %endFilePath%
del _clientids.gsc
cd %serverFilePath%
start !start_zm_server.bat