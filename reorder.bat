SET Input_PATCH1=D:\telecine\ghost_removal\pics
SET Input_PATCH2=D:\telecine\ghost_removal\pics_even

SET srcstart=0
SET dststart=1
SET count=80000


FOR /L %%i IN (%srcstart%,2,%count%)  DO (CALL :reorder %%i)
GOTO :eof

:reorder
set /a j=(%1+1)/2
copy  %Input_PATCH1%\0000%1.jpeg %Input_PATCH2%\%j%.jpg
copy  %Input_PATCH1%\000%1.jpeg %Input_PATCH2%\%j%.jpg
copy  %Input_PATCH1%\00%1.jpeg %Input_PATCH2%\%j%.jpg
copy  %Input_PATCH1%\0%1.jpeg %Input_PATCH2%\%j%.jpg 
copy  %Input_PATCH1%\%1.jpeg %Input_PATCH2%\%j%.jpg
GOTO :eof