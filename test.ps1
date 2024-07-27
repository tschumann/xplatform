$ErrorActionPreference = "Stop"

# get the location of this file
$scriptpath = $MyInvocation.MyCommand.Path
# get the directory path to this file
$workingdirectory = Split-Path $scriptpath
# set the working directory as this file's directory
Push-Location $workingdirectory

Write-Output "------------------"
Write-Output "Building x86 Debug"
Write-Output "------------------"

# build the solution
& "MSBuild.exe" /t:Build /p:Platform=x86 /p:Configuration=Debug "xplatform.sln"

Write-Output "-----------------"
Write-Output "Testing x86 Debug"
Write-Output "-----------------"

# run the tests
Debug\xplatform.exe

Write-Output "------------------"
Write-Output "Building x64 Debug"
Write-Output "------------------"

# build the solution
& "MSBuild.exe" /t:Build /p:Platform=x64 /p:Configuration=Debug "xplatform.sln"

Write-Output "-----------------"
Write-Output "Testing x64 Debug"
Write-Output "-----------------"

# run the tests
x64\Debug\xplatform.exe

Pop-Location