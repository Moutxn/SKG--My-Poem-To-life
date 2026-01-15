@echo off

echo Rebuilding BST/BSTN...
"%CD%/Tools/bast.exe" packbst "./Modding/sound_table" "./Modding/include/0.bst" "./Modding/include/1.bstn"

echo Rebuilding BAA...
"%CD%/Tools/jampacked.exe" pack "./Modding" "./SMR.rebuild.baa"
"%CD%/Tools/Yaz0wl.exe" encode "./SMR.rebuild.baa"
del "SMR.szs"
ren "output" "SMR.szs"

pause