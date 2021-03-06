@echo off

REM MIT License

REM Copyright (c) 2018 Neutralinojs

REM Permission is hereby granted, free of charge, to any person obtaining a copy
REM of this software and associated documentation files (the "Software"), to deal
REM in the Software without restriction, including without limitation the rights
REM to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
REM copies of the Software, and to permit persons to whom the Software is
REM furnished to do so, subject to the following conditions:

REM The above copyright notice and this permission notice shall be included in all
REM copies or substantial portions of the Software.

REM THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
REM IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
REM FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
REM AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
REM LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
REM OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
REM SOFTWARE.

@echo off
echo Neutralino is being built...
if NOT EXIST bin (
    mkdir bin
)
g++ src/main.cpp src/settings.cpp src/requestparser.cpp src/serverlistener.cpp src/functions.cpp src/core/computer.cpp src/core/filesystem.cpp src/core/os.cpp src/router.cpp src/auth/authbasic.cpp src/ping/ping.cpp -lws2_32 -static-libgcc -static-libstdc++ -Wl,-Bstatic -lstdc++ -lpthread -Wl,-Bdynamic -mwindows -o bin/neutralino 

echo Neutralino binary is compiled in to bin/netralino.exe


