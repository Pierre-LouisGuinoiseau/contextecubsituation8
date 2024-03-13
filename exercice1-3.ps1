#==========================================================
# NAME exercice 1-3
# AUTHOR : Guinoiseau Pierre-Louis
# DATE : 13/03/2024
# VERSION 1.1
#==========================================================
# Afficher les svchost 
Get-process -ProcessName svchost | Format-table Id, Name, Description