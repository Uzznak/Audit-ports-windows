# Mini projet - Windows Listening Ports Audit

Suite à l'achat d'un nouveau PC j'ai refais un auto diagnostique de mes ports.  
J'ai fait ce mini projet qui reprend la procédure que j'ai utilisé pour faire l'audit de mes ports, et identifier quoi sécuriser. Les ports sont fictifs.

Following the purchase of a new PC, I performed an auto-diagnostic of my ports.
I did this mini project that follows the procedure I used to audit my ports and identify what to secure. The ports are fictitious.


## Environment

- Windows 11
- PowerShell
- Git

## objectif

Faire un script qui génère un fichier CSV contenant les ports d’écoute TCP.  

Make a script that generates a CSV file containing listening TCP ports.  

# instructions
## 1. Créer le projet

Ouvre PowerShell   
mkdir windows-listening-ports-audit  
cd windows-listening-ports-audit  
mkdir scripts  results  doc   

New-Item README.md
New-Item scripts\audit_ports.ps1
New-Item docs\recommendations.md

## 2. Créer le script d'audit

- ouvrir **notepad scripts\audit_ports.ps1**, écrire :  

Get-NetTCPConnection -State Listen |  
Select-Object LocalAddress, LocalPort |  
Sort-Object LocalPort |  
Export-Csv ".\results\ports.csv" -NoTypeInformation  

- Enregistrer

## 3. Exécuter le script

.\scripts\audit_ports.ps1  
Si l'exécution est bloquée :  
Set-ExecutionPolicy -Scope Process Bypass  

Le fichier sera généré a l'emplacement choisi  **results\ports.csv**


## 4. Vérifier les résultats

Afficher le contenu : **Import-Csv .\results\ports.csv** ou **cat .\results\ports.csv**  

## 5. Identifier les services associés aux ports
Lister les ports :

Get-NetTCPConnection -State Listen |  
Sort-Object LocalPort |  
Format-Table LocalAddress,LocalPort  

enfin, applique les recommandations conseillées par l'ANSSI 


# Compétences / Skills

Administration de Windows  
PowerShell  
Sécurité de l’infrastructure  
Audit de sécurité  
Git/GitHub  

EN
Windows Administration  
PowerShell  
Infrastructure Security  
Security Auditing  
Git/GitHub  

# Sources

https://messervices.cyber.gouv.fr/documents-guides/recommandations-sur-la-s%C3%A9curisation-des-syst%C3%A8mes-de-contr%C3%B4le-d_acces-physique-et-vid%C3%A9oprotection-v2.2.pdf

