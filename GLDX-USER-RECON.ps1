<#### Ce script est destiné à faire une analyse global d'un environnement utilisateur
pour identifier les potentiels problèmes de configuration et de sécurité 

Auteur : William BRODIER
Date des denières modification : 18/08/2025 
####>

$script:SharedChecked = $false
$script:CChecked -eq $false

function File_Searcher {
	<#### Ce module vérifie à partir du chemin "C:\Users\$UserProfile" s'il existe des fichiers susceptibles
	de contenir des mots de passes/infos sensibles ####>
	$LookingFor = @("pwd", "pass", "passwd", "password", "motdepasse", "mot_de_passe", "mdp", "cred", "credential", "identifiant", "login", "compte", "username")
	if ($script:CChecked -eq $false){
		Write-Allin -CustomMessage "Recherche de fichiers susceptibles de contenir des identifiants/mots de passe dans C:\" -CustomBalise "Info"
		##### On récupère la liste de tous les profils utilisateurs existants à l'exception de ceux créé par défaut #####
		$UserProfile = Get-ChildItem "C:\Users" -Directory | 
		Where-Object { $_.Name -notin @("Public", "Default", "Default User", "All Users") } | 
		Select-Object -ExpandProperty Name
		$UserProfile | Foreach-Object {
			$SearchPath = "C:\Users\$_"
			##### On vérifie chaque fichier dans chaque sous-dossier pour vérifier si un mot de la liste $LookingFor existe dans le nom du fichier #####
			$CopePath = @(Get-ChildItem -Path $SearchPath -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notmatch "vscode" } | Where-Object { foreach ($word in $LookingFor) { if ($_.Name -match $word -and $_.Name -notmatch "credit|MDPH|passeport|compteur|passage|compte-rendu|comptes-rendus|compte rendu|comptes rendus|acompte|decompte") { return $true } } } | Select-Object -ExpandProperty FullName)
			##### Affichage du ou des résultat(s)
			Write-Allin -CustomMessage "Compte : $_" -CustomBalise "Info" -CustomSpace " $TeeBar$line"
			if ($CopePath -ne $null){
				for ($i = 0; $i -lt $CopePath.Count; $i++) {
					$prefix = if ($i -eq $CopePath.Count - 1) { " $BarVert  $Elbow$Line" } else { " $BarVert  $TeeBar$Line" }
					Write-Allin -CustomMessage "$($CopePath[$i])" -CustomBalise "Neutral" -CustomSpace "$prefix" -CustomColor "True"
				}
				Write-Allin -CustomMessage " $BarVert"
			} else {
				Write-Allin -CustomMessage "Pas de fichiers compromettants dans les dossiers utilisateurs" -CustomBalise "Valid" -CustomSpace " $BarVert  $Elbow$Line"
				Write-Allin -CustomMessage " $BarVert"
			}
		}
		Write-Allin -CustomMessage " $BarVert"
		Write-Allin -CustomMessage "Listing termine" -CustomBalise "Info" -CustomSpace " $Elbow$Line"
	} elseif ($script:CChecked -eq $true) {
		$SearchPath = "$script:CName"
		Write-Allin -CustomMessage "Recherche de fichiers susceptibles de contenir des identifiants/mots de passe dans ${script:CName}" -CustomBalise "Info"
		##### On vérifie chaque fichier dans chaque sous-dossier pour vérifier si un mot de la liste $LookingFor existe dans le nom du fichier #####
		$CopePath = @(Get-ChildItem -Path $SearchPath -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notmatch "vscode" } | Where-Object { foreach ($word in $LookingFor) { if ($_.Name -match $word -and $_.Name -notmatch "credit|MDPH|passeport|compteur|passage|compte-rendu|comptes-rendus|compte rendu|comptes rendus|acompte|decompte") { return $true } } } | Select-Object -ExpandProperty FullName)
		##### Affichage du ou des résultat(s)
		if ($CopePath -ne ""){
			for ($i = 0; $i -lt $CopePath.Count; $i++) {
				$prefix = if ($i -eq $CopePath.Count - 1) { " $Elbow$Line" } else { " $TeeBar$Line" }
				Write-Allin -CustomMessage "$($CopePath[$i])" -CustomBalise "Neutral" -CustomSpace "$prefix" -CustomColor "True"
			}
		} else {
			Write-Allin -CustomMessage "Pas de fichiers compromettants dans les dossiers utilisateurs" -CustomBalise "Valid" -CustomSpace " $Elbow$Line"
		}
	}
	
	
	Write-Host "`n`n"

	if ($script:SharedChecked -eq $false){
		Write-Allin -CustomMessage "Recherche de fichiers susceptibles de contenir des identifiants/mots de passe dans des lecteurs reseaux" -CustomBalise "Info"
		$NetDrive = Get-WmiObject -Class Win32_LogicalDisk | Where-Object { $_.ProviderName -ilike "\\*" } | Select-Object -ExpandProperty ProviderName
		if ($NetDrive -ne $null){
			#$CopePath = Get-ChildItem -Path "R:\Services\DGS\TNRC\SIN\Cyber\William Brodier" -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { Foreach ($word in $LookingFor) { if ($_.Name -match $word) { return $true } } } | Select-Object -ExpandProperty FullName 
			$CopePath = @(Get-ChildItem -Path $NetDrive -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { Foreach ($word in $LookingFor) { if ($_.Name -match $word -and $_.Name -notmatch "credit|MDPH|passeport|compteur|passage|compte-rendu|comptes-rendus|compte rendu|comptes rendus|acompte|decompte|compte courant|passives|decompte") { return $true } } } | Select-Object -ExpandProperty FullName) 
			if ($CopePath -ne $null){
				for ($i = 0; $i -lt $CopePath.Count; $i++) {
					$prefix = if ($i -eq $CopePath.Count - 1) { " $Elbow$Line" } else { " $TeeBar$Line" }
					Write-Allin -CustomMessage "$($CopePath[$i])" -CustomBalise "Neutral" -CustomSpace "$prefix" -CustomColor "True"
				}
			} else {
				Write-Allin -CustomMessage "Pas de fichiers compromettants dans le(s) lecteur(s) reseau" -CustomBalise "Valid" -CustomSpace " $Elbow$Line"
			}
		} else {
			Write-Allin -CustomMessage "Pas de lecteurs reseau decouverts" -CustomBalise "Info" -CustomSpace " $Elbow$Line"
		}
	} elseif ($script:SharedChecked -eq $true) {
		Write-Allin -CustomMessage "Recherche de fichiers susceptibles de contenir des identifiants/mots de passe dans des un lecteur partage au chemin $script:SharedName" -CustomBalise "Info"
		$NetDrive = Get-WmiObject -Class Win32_LogicalDisk | Where-Object { $_.ProviderName -ilike "\\*" } | Select-Object -ExpandProperty ProviderName
		$MappedDrives = Get-WmiObject -Class Win32_LogicalDisk | Where-Object { $_.DriveType -eq 4 -and $_.ProviderName -ne $null } | Select-Object DeviceID, ProviderName
		foreach ($drive in $MappedDrives){
			$deviceIDMatch = $script:SharedName.StartsWith($drive.DeviceID, [System.StringComparison]::OrdinalIgnoreCase)
    		$providerMatch = $script:SharedName.StartsWith($drive.ProviderName, [System.StringComparison]::OrdinalIgnoreCase)
			if ($deviceIDMatch -or $providerMatch){
				$CopePath = @(Get-ChildItem -Path $script:SharedName -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { Foreach ($word in $LookingFor) { if ($_.Name -match $word -and $_.Name -notmatch "credit|MDPH|passeport|compteur|passage|compte-rendu|comptes-rendus|compte rendu|comptes rendus|acompte|decompte|compte courant|passives|decompte") { return $true } } } | Select-Object -ExpandProperty FullName) 
				if ($CopePath -ne $null){
					for ($i = 0; $i -lt $CopePath.Count; $i++) {
						$prefix = if ($i -eq $CopePath.Count - 1) { " $Elbow$Line" } else { " $TeeBar$Line" }
						Write-Allin -CustomMessage "$($CopePath[$i])" -CustomBalise "Neutral" -CustomSpace "$prefix" -CustomColor "True"
					}
				} else {
					Write-Allin -CustomMessage "Pas de fichiers compromettants dans $script:SharedName" -CustomBalise "Valid" -CustomSpace " $Elbow$Line"
				}
			} else {
				Write-Allin -CustomMessage "Lecteur reseau non trouve" -CustomBalise "Info" -CustomSpace " $Elbow$Line"
			}
		}
	}
}

File_Searcher
