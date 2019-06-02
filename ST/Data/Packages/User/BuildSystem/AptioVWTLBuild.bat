@echo on

set PATH=E:\BuildTool\EnterpriseWDK_1703;E:\BuildTool\AptioVBuildTools_34;%PATH%
set TOOLS_DIR=E:\BuildTool\AptioVBuildTools_34
set EWDK_DIR=E:\BuildTool\EnterpriseWDK_1703


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