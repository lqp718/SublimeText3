@echo on

set PATH=E:\BuildTool\WinDDK\7600.16385.1\bin\x86;E:\BuildTool\AptioVBuildTools;%PATH%

set CCX86DIR=E:\BuildTool\WinDDK\7600.16385.1\bin\x86\x86
set CCX64DIR=E:\BuildTool\WinDDK\7600.16385.1\bin\x86\amd64
set TOOLS_DIR=E:\BuildTool\AptioVBuildTools

xcopy IEC_Platform\*.* RefBuild\Code\PurleyLenovoPkg /E /Y
xcopy IEC_Platform\PurleyLenovo.* RefBuild\Code\ /Y
xcopy IEC_Platform\makefile RefBuild\Code\ /Y

cd /d RefBuild\Code\

if exist PurleyLenovo.veb (
	set VEB=PurleyLenovo
) else (
	if exist MehlowSvrLenovo.veb (
		set VEB=MehlowSvrLenovo
	) else (
		if exist MehlowSVR.veb (
			set VEB=MehlowSVR
		) else (
			if exist PurleyCrb.veb (
				set VEB=PurleyCrb
			)
		)
	)
)

::start D:\Work\Aptio_5.27\VisualeBios\VisualeBios.exe
::set VEB=D:\_Code\_Purley\_02_MOD\Code\PurleyLenovo

if "%1" == "buildall" make rebuild
if "%1" == "build" make