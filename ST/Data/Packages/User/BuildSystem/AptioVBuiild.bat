@echo on

set PATH=D:\BuildTool\WinDDK\7600.16385.1\bin\x86;D:\BuildTool\AptioVBuildTools_32;%PATH%

set CCX86DIR=D:\BuildTool\WinDDK\7600.16385.1\bin\x86\x86
set CCX64DIR=D:\BuildTool\WinDDK\7600.16385.1\bin\x86\amd64
set TOOLS_DIR=D:\BuildTool\AptioVBuildTools_32
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

if exist LenovoRome.veb (
	set VEB=LenovoRome
)

if exist SR635_SR655.veb (
	set VEB=SR635_SR655
)
::start D:\Work\Aptio_5.27\VisualeBios\VisualeBios.exe
::set VEB=D:\_Code\_Purley\_02_MOD\Code\PurleyLenovo

if "%1" == "buildall" make rebuild
if "%1" == "build" make
if "%1" == "binary" make UPD