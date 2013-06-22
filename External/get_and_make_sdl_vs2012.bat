call hg clone http://hg.libsdl.org/SDL
call hg clone http://hg.libsdl.org/SDL_ttf
call hg clone http://hg.libsdl.org/SDL_image
call "C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC\vcvarsall.bat"
MSBuild SDL\VisualC\SDL_VS2012.sln /property:Configuration=Release
MSBuild SDL_image\VisualC\SDL_image_VS2012.sln /property:Configuration=Release
MSBuild SDL_ttf\VisualC\SDL_ttf_VS2012.sln /property:Configuration=Release

xcopy SDL\include External\SDL\include /Y /I
xcopy SDL\VisualC\SDL\Win32\Release\SDL2.dll External\SDL\lib_vc110\ /Y /I
xcopy SDL\VisualC\SDL\Win32\Release\SDL2.lib External\SDL\lib_vc110\ /Y /I
xcopy SDL\VisualC\SDLmain\Win32\Release\SDL2main.lib External\SDL\lib_vc110\ /Y /I

xcopy SDL_image\SDL_image.h External\SDL_image\include\ /Y /I
xcopy SDL_image\VisualC\Win32\Release\SDL2_image.dll External\SDL_image\lib_vc110\ /Y /I
xcopy SDL_image\VisualC\Win32\Release\SDL2_image.lib External\SDL_image\lib_vc110\ /Y /I

xcopy SDL_ttf\SDL_ttf.h External\SDL_ttf\include\ /Y /I
xcopy SDL_ttf\VisualC\Win32\Release\SDL2_ttf.dll External\SDL_ttf\lib_vc110\ /Y /I
xcopy SDL_ttf\VisualC\Win32\Release\SDL2_ttf.lib External\SDL_ttf\lib_vc110\ /Y /I

pause
