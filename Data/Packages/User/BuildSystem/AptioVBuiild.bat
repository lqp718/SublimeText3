@echo on

set PATH=D:\CommonTools\WinDDK\7600.16385.1\bin\x86;D:\CommonTools\Aptio_5.x_30\BuildTools;%PATH%

set CCX86DIR=D:\CommonTools\WinDDK\7600.16385.1\bin\x86\x86
set CCX64DIR=D:\CommonTools\WinDDK\7600.16385.1\bin\x86\amd64
set TOOLS_DIR=D:\CommonTools\Aptio_5.x_30\BuildTools
if exist PurleyLenovo.veb (
	set VEB=PurleyLenovo
) else (
	if exist MehlowSvrLenovo.veb (
		set VEB=MehlowSvrLenovo
	) else (
		set VEB=PurleyCrb
	)
)

::start D:\Work\Aptio_5.27\VisualeBios\VisualeBios.exe
::set VEB=D:\_Code\_Purley\_02_MOD\Code\PurleyLenovo

if "%1" == "buildall" make rebuild
if "%1" == "build" make