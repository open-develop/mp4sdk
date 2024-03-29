# Microsoft Developer Studio Project File - Name="libSDL" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=libSDL - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "libSDL.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "libSDL.mak" CFG="libSDL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "libSDL - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "libSDL - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "libSDL - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "..\..\..\inc" /I "..\..\..\..\inc" /I "..\include" /I "..\..\..\..\inc\libjpeg" /I "..\..\..\..\inc\libpng" /I "..\..\..\..\inc\freetype" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
# Begin Custom Build
InputPath=.\Release\libSDL.lib
SOURCE="$(InputPath)"

"no" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy            ..\libSDL.h            ..\..\..\..\inc\  
	copy            $(InputPath)            ..\..\..\vc-x86\  
	
# End Custom Build

!ELSEIF  "$(CFG)" == "libSDL - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\..\..\..\inc" /I "..\include" /I "..\make-win32-vc6\inc-vc6" /I "..\SDL_mixer\timidity" /I "..\SDL_mixer\libmad" /I "..\SDL_mixer\libmikmod\include" /I "..\..\..\..\inc\libjpeg" /I "..\..\..\..\inc\libpng" /I "..\..\..\..\inc\freetype" /I "..\..\..\..\inc\zlib" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /FR /FD /GZ /c
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
# Begin Custom Build
InputPath=.\Debug\libSDL.lib
SOURCE="$(InputPath)"

"no" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy            ..\libSDL.h            ..\..\..\..\inc\  
	copy            $(InputPath)            ..\..\..\vc-x86\  
	
# End Custom Build

!ENDIF 

# Begin Target

# Name "libSDL - Win32 Release"
# Name "libSDL - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Group "base"

# PROP Default_Filter ""
# Begin Group "audio"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\audio\SDL_audio.c
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_audio_c.h
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_audiocvt.c
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_audiodev.c
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_audiodev_c.h
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_audiomem.h
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_mixer.c
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_mixer_m68k.c
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_mixer_m68k.h
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_mixer_MMX.c
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_mixer_MMX.h
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_mixer_MMX_VC.c
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_mixer_MMX_VC.h
# End Source File
# Begin Source File

SOURCE=..\src\audio\mpf\SDL_mpf_audio.c
# End Source File
# Begin Source File

SOURCE=..\src\audio\mpf\SDL_mpf_audio.h
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_sysaudio.h
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_wave.c
# End Source File
# Begin Source File

SOURCE=..\src\audio\SDL_wave.h
# End Source File
# End Group
# Begin Group "cdrom"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\cdrom\SDL_cdrom.c
# End Source File
# Begin Source File

SOURCE=..\src\cdrom\dummy\SDL_syscdrom.c
# End Source File
# Begin Source File

SOURCE=..\src\cdrom\SDL_syscdrom.h
# End Source File
# End Group
# Begin Group "cpuinfo"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\cpuinfo\SDL_cpuinfo.c
# End Source File
# End Group
# Begin Group "events"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\events\SDL_active.c
# End Source File
# Begin Source File

SOURCE=..\src\events\SDL_events.c
# End Source File
# Begin Source File

SOURCE=..\src\events\SDL_events_c.h
# End Source File
# Begin Source File

SOURCE=..\src\events\SDL_expose.c
# End Source File
# Begin Source File

SOURCE=..\src\events\SDL_keyboard.c
# End Source File
# Begin Source File

SOURCE=..\src\events\SDL_mouse.c
# End Source File
# Begin Source File

SOURCE=..\src\events\SDL_quit.c
# End Source File
# Begin Source File

SOURCE=..\src\events\SDL_resize.c
# End Source File
# Begin Source File

SOURCE=..\src\events\SDL_sysevents.h
# End Source File
# End Group
# Begin Group "file"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\file\SDL_rwops.c
# End Source File
# End Group
# Begin Group "joystick"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\joystick\SDL_joystick.c
# End Source File
# Begin Source File

SOURCE=..\src\joystick\SDL_joystick_c.h
# End Source File
# Begin Source File

SOURCE=..\src\joystick\dummy\SDL_sysjoystick.c
# End Source File
# Begin Source File

SOURCE=..\src\joystick\SDL_sysjoystick.h
# End Source File
# End Group
# Begin Group "loadso"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\loadso\dummy\SDL_sysloadso.c
# End Source File
# End Group
# Begin Group "main"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\main\dummy\SDL_dummy_main.c
# End Source File
# End Group
# Begin Group "stdlib"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\stdlib\SDL_getenv.c
# End Source File
# Begin Source File

SOURCE=..\src\stdlib\SDL_iconv.c
# End Source File
# Begin Source File

SOURCE=..\src\stdlib\SDL_malloc.c
# End Source File
# Begin Source File

SOURCE=..\src\stdlib\SDL_qsort.c
# End Source File
# Begin Source File

SOURCE=..\src\stdlib\SDL_stdlib.c
# End Source File
# Begin Source File

SOURCE=..\src\stdlib\SDL_string.c
# End Source File
# End Group
# Begin Group "thread"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\thread\mpf\SDL_sysmutex.c
# End Source File
# Begin Source File

SOURCE=..\src\thread\mpf\SDL_sysmutex_c.h
# End Source File
# Begin Source File

SOURCE=..\src\thread\mpf\SDL_syssem.c
# End Source File
# Begin Source File

SOURCE=..\src\thread\mpf\SDL_systhread.c
# End Source File
# Begin Source File

SOURCE=..\src\thread\SDL_systhread.h
# End Source File
# Begin Source File

SOURCE=..\src\thread\mpf\SDL_systhread_c.h
# End Source File
# Begin Source File

SOURCE=..\src\thread\SDL_thread.c
# End Source File
# Begin Source File

SOURCE=..\src\thread\SDL_thread_c.h
# End Source File
# End Group
# Begin Group "timer"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\timer\mpf\SDL_systimer.c
# End Source File
# Begin Source File

SOURCE=..\src\timer\SDL_systimer.h
# End Source File
# Begin Source File

SOURCE=..\src\timer\SDL_timer.c
# End Source File
# Begin Source File

SOURCE=..\src\timer\SDL_timer_c.h
# End Source File
# End Group
# Begin Group "video"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\video\blank_cursor.h
# End Source File
# Begin Source File

SOURCE=..\src\video\default_cursor.h
# End Source File
# Begin Source File

SOURCE=..\src\video\e_log.h
# End Source File
# Begin Source File

SOURCE=..\src\video\e_pow.h
# End Source File
# Begin Source File

SOURCE=..\src\video\e_sqrt.h
# End Source File
# Begin Source File

SOURCE=..\src\video\math_private.h
# End Source File
# Begin Source File

SOURCE=..\src\video\mmx.h
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_blit.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_blit.h
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_blit_0.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_blit_1.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_blit_A.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_blit_N.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_bmp.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_cursor.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_cursor_c.h
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_gamma.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_glfuncs.h
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_leaks.h
# End Source File
# Begin Source File

SOURCE=..\src\video\mpf\SDL_mpf_events.c
# End Source File
# Begin Source File

SOURCE=..\src\video\mpf\SDL_mpf_events_c.h
# End Source File
# Begin Source File

SOURCE=..\src\video\mpf\SDL_mpf_mouse.c
# End Source File
# Begin Source File

SOURCE=..\src\video\mpf\SDL_mpf_mouse_c.h
# End Source File
# Begin Source File

SOURCE=..\src\video\mpf\SDL_mpf_video.c
# End Source File
# Begin Source File

SOURCE=..\src\video\mpf\SDL_mpf_video.h
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_pixels.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_pixels_c.h
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_RLEaccel.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_RLEaccel_c.h
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_stretch.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_stretch_c.h
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_surface.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_sysvideo.h
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_video.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_yuv.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_yuv_mmx.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_yuv_sw.c
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_yuv_sw_c.h
# End Source File
# Begin Source File

SOURCE=..\src\video\SDL_yuvfuncs.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\src\SDL.c
# End Source File
# Begin Source File

SOURCE=..\src\SDL_error.c
# End Source File
# Begin Source File

SOURCE=..\src\SDL_error_c.h
# End Source File
# Begin Source File

SOURCE=..\src\SDL_fatal.c
# End Source File
# Begin Source File

SOURCE=..\src\SDL_fatal.h
# End Source File
# End Group
# Begin Group "SDL_image"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\SDL_image\IMG.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_bmp.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_gif.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_ImageIO.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_jpg.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_lbm.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_pcx.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_png.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_pnm.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_tga.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_tif.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_xcf.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_xpm.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_xv.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\IMG_xxx.c
# End Source File
# Begin Source File

SOURCE=..\SDL_image\SDL_image.h
# End Source File
# End Group
# Begin Group "SDL_ttf"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\SDL_ttf\SDL_ttf.c
# End Source File
# Begin Source File

SOURCE=..\SDL_ttf\SDL_ttf.h
# End Source File
# End Group
# Begin Group "SDL_mixer"

# PROP Default_Filter ""
# Begin Group "libmad"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\SDL_mixer\libmad\bit.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\bit.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\decoder.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\decoder.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\fixed.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\fixed.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\frame.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\frame.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\huffman.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\huffman.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\layer12.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\layer12.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\layer3.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\layer3.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\libmadconfig.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\libmadglobal.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\mad.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\madtimer.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\madtimer.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\madversion.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\madversion.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\stream.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\stream.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\synth.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmad\synth.h
# End Source File
# End Group
# Begin Group "libmikmod"

# PROP Default_Filter ""
# Begin Group "drivers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\drivers\drv_nos.c
# End Source File
# End Group
# Begin Group "include"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\include\mikmod.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\include\mikmod_build.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\include\mikmod_internals.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\include\modconfig.h
# End Source File
# End Group
# Begin Group "loaders"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\loaders\load_mod.c
# End Source File
# End Group
# Begin Group "mmio"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\mmio\mmalloc.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\mmio\mmerror.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\mmio\mmio.c
# End Source File
# End Group
# Begin Group "playercode"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\mdreg.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\mdriver.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\mdulaw.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\mloader.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\mlreg.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\mlutil.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\mplayer.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\munitrk.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\mwav.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\npertab.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\sloader.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\virtch.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\virtch2.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\libmikmod\playercode\virtch_common.c
# End Source File
# End Group
# End Group
# Begin Group "timidity"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\SDL_mixer\timidity\common.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\common.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\config.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\ctrlmode.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\ctrlmode.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\filter.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\filter.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\instrum.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\instrum.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\mix.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\mix.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\output.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\output.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\playmidi.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\playmidi.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\readmidi.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\readmidi.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\resample.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\resample.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\sdl_a.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\sdl_c.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\tables.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\tables.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\timidity.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\timidity\timidity.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\SDL_mixer\dynamic_flac.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\dynamic_flac.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\dynamic_mod.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\dynamic_mod.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\dynamic_mp3.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\dynamic_mp3.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\dynamic_ogg.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\dynamic_ogg.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\effect_position.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\effect_stereoreverse.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\effects_internal.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\effects_internal.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\load_aiff.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\load_aiff.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\load_flac.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\load_flac.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\load_ogg.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\load_ogg.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\load_voc.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\load_voc.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\mixer.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\music.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\music_cmd.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\music_cmd.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\music_flac.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\music_flac.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\music_mad.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\music_mad.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\music_mod.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\music_mod.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\music_ogg.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\music_ogg.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\SDL_mixer.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\SDLmixer_buildcfg.h
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\wavestream.c
# End Source File
# Begin Source File

SOURCE=..\SDL_mixer\wavestream.h
# End Source File
# End Group
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# End Group
# End Target
# End Project
