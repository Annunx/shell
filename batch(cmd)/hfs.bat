@echo off

title Http Files Server
color e2

setlocal enabledelayedexpansion

Set PROT=%1

if defined PROT (
  echo "prot:!PROT!"
) else ( 
  Set PROT=9090
)

python -m http.server !PROT!

pause