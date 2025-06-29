@echo off
powershell -ExecutionPolicy Bypass -WindowStyle Hidden -Command "Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass -File \"%~dp0make_safe_folder.ps1\"' -Verb RunAs"
