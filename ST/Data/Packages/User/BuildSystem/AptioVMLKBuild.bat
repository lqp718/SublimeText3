@echo on

set PATH=D:\BuildTool\EnterpriseWDK_1703;D:\BuildTool\AptioVBuildTools_33;%PATH%
set TOOLS_DIR=D:\BuildTool\AptioVBuildTools_33
set EWDK_DIR=D:\BuildTool\EnterpriseWDK_1703

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
if exist BakervilleLenovo.veb (
	set VEB=BakervilleLenovo
) else (
	if exist Bakerville.veb (
		set VEB=Bakerville
	)
)

if exist WhitleyLenovo.veb (
	set VEB=WhitleyLenovo
) else (
	if exist WhitleyCrb.veb (
		set VEB=WhitleyCrb
	)
)

::start D:\Work\Aptio_5.27\VisualeBios\VisualeBios.exe
::set VEB=D:\_Code\_Purley\_02_MOD\Code\PurleyLenovo

if "%1" == "buildall" make rebuild
if "%1" == "build" make