#=====================================================
#NAME: Exercice 1-6.ps1
#AUTHOR: Guinoiseau Pierre-Louis
#DATE:13/03/2024
#
#VERSION 1.0
#COMMENTS: Afficher le processus choisi d'être affiché par l'utilisateur à l'aide d'une fonction
#COMMENTS: Et enregistrer le résultat dans deux fichiers (txt, csv)
#=====================================================

function InfoProcessus($pro)
{
Write-Host "Affichage de l'Id, ProcessName et Description des processus contenant: $pro"
$processus = Get-Process | Where-Object {$_.ProcessName -like "*$pro*"}
$processus | Format-Table Id, Name, Description
$processus | Out-File -FilePath "C:\Users\Administrateur\contextecubsituation8\Sauvegarde.txt"
$processus | Export-Csv -Path "C:\Users\Administrateur\contextecubsituation8\Sauvegarde.csv" -Delimiter ","
}

$pro=Read-Host "Quel processus désirez vous filtrer?" 
InfoProcessus($pro)

