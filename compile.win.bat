FOR %%A IN (release,debug) DO (
	#REM clean with Makefile Deletion
	mingw32-make clean
	del /S MAKEFILE
	del /S MAKEFILE.%%A
	
	#REM Compile
	qmake limereport.pro CONFIG+=%%A
	mingw32-make -j%NUMBER_OF_PROCESSORS%
)
