#==========================================================
# NAME exercice 1-4
# AUTHOR : Guinoiseau Pierre-Louis
# DATE : 13/03/2024
# VERSION 1.1
#==========================================================
$Name = Read-Host "entrer le process"
Get-process -ProcessName *$Name* | Format-table Id, Name, description