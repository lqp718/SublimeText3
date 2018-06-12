@echo on

set PATH=E:\BuildTool\EnterpriseWDK_1703;E:\BuildTool\AptioVBuildTools;%PATH%
set TOOLS_DIR=E:\BuildTool\AptioVBuildTools
set EWDK_DIR=E:\BuildTool\EnterpriseWDK_1703

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