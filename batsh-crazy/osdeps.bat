:: Batsh-Crazy-Api Windows Specific code
@echo off

:: Redirect all calls to the WSH Javascript file.
cscript /NoLogo batsh-crazy-win32.js %*
