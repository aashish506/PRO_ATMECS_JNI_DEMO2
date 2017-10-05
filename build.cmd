@echo off
if not exist target mkdir target
if not exist target\classes mkdir target\classes


echo compile classes
javac -nowarn -d target\classes -sourcepath jvm -cp "d:\jni4net-0.8.8.0-bin\lib\jni4net.j-0.8.8.0.jar"; "jvm\sqldemo1\SQLConnect1.java" 
IF %ERRORLEVEL% NEQ 0 goto end


echo SQLDemo1.j4n.jar 
jar cvf SQLDemo1.j4n.jar  -C target\classes "sqldemo1\SQLConnect1.class"  > nul 
IF %ERRORLEVEL% NEQ 0 goto end


echo SQLDemo1.j4n.dll 
csc /nologo /warn:0 /t:library /out:SQLDemo1.j4n.dll /recurse:clr\*.cs  /reference:"D:\Visual Studio Pro\Project_files1\SQLDemo1\SQLDemo1\bin\Debug\SQLDemo1.dll" /reference:"D:\jni4net-0.8.8.0-bin\lib\jni4net.n-0.8.8.0.dll"
IF %ERRORLEVEL% NEQ 0 goto end


:end
