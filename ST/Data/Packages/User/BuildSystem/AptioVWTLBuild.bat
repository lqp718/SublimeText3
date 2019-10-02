@echo on

set PATH=D:\BuildTool\EnterpriseWDK_1703;D:\BuildTool\AptioVBuildTools_35;%PATH%
set TOOLS_DIR=D:\BuildTool\AptioVBuildTools_35
set EWDK_DIR=D:\BuildTool\EnterpriseWDK_1703


if exist WhitleyLenovo.veb (
	set VEB=WhitleyLenovo
) else (
	if exist WhitleyCrb.veb (
		set VEB=WhitleyCrb
	)
)

::start D:\Work\Aptio_5.27\VisualeBios\VisualeBios.exe
::set VEB=D:\_Code\_Purley\_02_MOD\Code\PurleyLenovo
copy .\WhitleyLenovoPkg\Override\makefile .\ /y
copy .\WhitleyLenovoPkg\Override\WhitleyLenovo.veb .\ /y
copy .\WhitleyLenovoPkg\Override\WhitleyLenovo.mak .\ /y

if "%1" == "buildall" make rebuild
if "%1" == "build" make