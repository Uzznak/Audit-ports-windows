# Récupère toutes les connexions TCP en écoute
Get-NetTCPConnection -State Listen |

# Ne garde que l'adresse locale et le port
Select-Object LocalAddress, LocalPort |

# Trie les ports par ordre croissant
Sort-Object LocalPort |

# Exporte le résultat dans un fichier CSV propre
Export-Csv ".\results\ports.csv" -NoTypeInformation
