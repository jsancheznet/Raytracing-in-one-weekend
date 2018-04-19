@echo off

pushd build

set IncludeDirectories=
set LibDirectories=

REM set CompilerFlags= -DDEBUG -nologo -Od -Ob0 %IncludeDirectories% -Zi -MDd /D "_WINDOWS" /D "_DEBUG"
set CompilerFlags= -nologo -Ox -Ob2 %IncludeDirectories% -Zi -MDd /D "_WINDOWS" /D "_DEBUG"

set LinkerFlags=-nologo -DEBUG %LibDirectories%

REM set CompilerFlags= -nologo -Ox %IncludeDirectories% -MT /D "_WINDOWS"
REM set LinkerFlags=-nologo %LibDirectories%

cl ..\main.cpp %CompilerFlags% /link %LinkerFlags% -SUBSYSTEM:CONSOLE

popd
