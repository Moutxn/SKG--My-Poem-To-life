@echo off

IF EXIST "./Modding/backup/SMR.szs" goto FAIL

mkdir "./Modding"
mkdir "./Modding/backup"
copy "./SMR.szs" "./Modding/backup/" > NUL

echo Extracting BAA...
"%CD%/Tools/Yaz0wl.exe" decode "./SMR.szs"
del "SMR.baa"
ren "output" "SMR.baa"
"%CD%/Tools/jampacked.exe" unpack "./SMR.baa" "./Modding"

echo Extracting BST/BSTN...
"%CD%/Tools/bast.exe" unpackbst "./Modding/include/0.bst" "./Modding/include/1.bstn" "./Modding/sound_table"

goto EXIT

:FAIL
echo Error: A project is already initialized.

:EXIT
pause