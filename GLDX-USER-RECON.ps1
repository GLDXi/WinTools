<#### Password Checker v2

Auteur : William BRODIER
Date des denières modification : 18/08/2025 
####>

$BarVert = [char]0x2502
$TeeBar = [char]0x251C
$Elbow = [char]0x2514
$Line = [char]0x2500

function Info {
	Write-Host "[" -NoNewLine
	Write-Host "*" -ForegroundColor Cyan -NoNewLine
	Write-Host "] " -NoNewLine
	return "[*]"
}
function Valid {
	Write-Host "[" -NoNewLine
	Write-Host "+" -ForegroundColor Green -NoNewLine
	Write-Host "] " -NoNewLine
	return "[+]"
}
function Unvalid {
	Write-Host "[" -NoNewLine
	Write-Host "x" -ForegroundColor Red -NoNewLine
	Write-Host "] " -NoNewLine
	return "[x]"
}
function Mitigate {
	Write-Host "[" -NoNewLine
	Write-Host "~" -ForegroundColor DarkYellow -NoNewLine
	Write-Host "] " -NoNewLine
	return "[~]"	
}
function Error {
	Write-Host "[" -NoNewLine
	Write-Host "!" -ForegroundColor Red -NoNewLine
	Write-Host "] " -NoNewLine
	return "[!]"
}

function Neutral {
	Write-Host "[" -NoNewLine
	Write-Host "$Line" -ForegroundColor White -NoNewLine
	Write-Host "] " -NoNewLine
	return "[$Line]"
}


function Write-Both {
	param(
		[string]$message,
		[string]$balise,
		[string]$space = "",
		[string]$color = ""
	)
	if ($color -eq "") {
		if ($balise -eq "") {
			write-Host "$message"
			Write-Output "$message" | Out-File -Append "$(pwd)\$script:SaveName.txt"
		} else {
			write-Host "$message"
			Write-Output "$space$balise $message" | Out-File -Append "$(pwd)\$script:SaveName.txt"
		}
	} elseif ($color -eq "true"){
		if ($balise -eq "") {
			$wordsToColor = @("pwd", "pass", "passwd", "password", "motdepasse", "mot_de_passe", "mdp", "cred", "credential", "ids", "identifiant", "login", "compte")
			foreach ($mot in $message.Split("\")){
				if ($wordsToColor -contains $mot.ToLower()) {
					Write-Host $mot -NoNewline -ForegroundColor Yellow
				} else {
					Write-Host $mot -NoNewline
				}
				Write-Host " " -NoNewline
			}
			Write-Host ""
			Write-Output "$message" | Out-File -Append "$(pwd)\$script:SaveName.txt"
		} else {
			$wordsToColor = @("pwd", "pass", "passwd", "password", "motdepasse", "mot_de_passe", "mdp", "cred", "credential", "ids", "identifiant", "login", "compte")
			$parts = $message -split '\\'
			foreach ($part in $parts){
				$found = $false
				foreach ($word in $wordsToColor) {
					if ($part.ToLower().Contains($word)) {
						$found = $true
						# Découpe la partie : avant / mot-clé / après
						$index = $part.ToLower().IndexOf($word)
						$before = $part.Substring(0, $index)
						$match  = $part.Substring($index, $word.Length)
						$after  = $part.Substring($index + $word.Length)
						Write-Host $before -NoNewline
						Write-Host $match -NoNewline -ForegroundColor Red
						Write-Host $after -NoNewline
						break
					}
				}
				if (-not $found) {
					Write-Host $part -NoNewline
				}
				Write-Host "\" -NoNewline
			}
			Write-Host ""
			Write-Output "$space$balise $message" | Out-File -Append "$(pwd)\$script:SaveName.txt"
		}
	}
}

function Write-Allin {
	param(
		[string]$CustomMessage,
		[string]$CustomBalise = "None",
		[string]$CustomSpace = "",
		[string]$CustomColor = ""
	)
	if ($CustomColor -eq ""){
		switch ($CustomBalise){
			"Info" { Write-Host "$CustomSpace" -NoNewline; $InfoBalise = Info; Write-Both -message "$CustomMessage" -balise "$InfoBalise" -space "$CustomSpace" }
			"Valid" { Write-Host "$CustomSpace" -NoNewline; $ValidBalise = Valid; Write-Both -message "$CustomMessage" -balise "$ValidBalise" -space "$CustomSpace" }
			"Unvalid" { Write-Host "$CustomSpace" -NoNewline; $UnvalidBalise = Unvalid; Write-Both -message "$CustomMessage" -balise "$UnvalidBalise" -space "$CustomSpace" }
			"Mitigate"{ Write-Host "$CustomSpace" -NoNewline; $MitigateBalise = Mitigate ;Write-Both -message "$CustomMessage" -balise "$MitigateBalise" -space "$CustomSpace" }
			"Error" { Write-Host "$CustomSpace" -NoNewline; $ErrorBalise = Error; Write-Both -message "$CustomMessage" -balise "$ErrorBalise" -space "$CustomSpace" }
			"Neutral" { Write-Host "$CustomSpace" -NoNewline; $NeutralBalise = Neutral; Write-Both -message "$CustomMessage" -balise "$NeutralBalise" -space "$CustomSpace" }
			"None" { Write-Both -message "$CustomMessage" }
		}
	} elseif ($CustomColor -eq "True"){
		switch ($CustomBalise){
			"Info" { Write-Host "$CustomSpace" -NoNewline; $InfoBalise = Info; Write-Both -message "$CustomMessage" -balise "$InfoBalise" -space "$CustomSpace" }
			"Valid" { Write-Host "$CustomSpace" -NoNewline; $ValidBalise = Valid; Write-Both -message "$CustomMessage" -balise "$ValidBalise" -space "$CustomSpace" }
			"Unvalid" { Write-Host "$CustomSpace" -NoNewline; $UnvalidBalise = Unvalid; Write-Both -message "$CustomMessage" -balise "$UnvalidBalise" -space "$CustomSpace" }
			"Mitigate"{ Write-Host "$CustomSpace" -NoNewline; $MitigateBalise = Mitigate ;Write-Both -message "$CustomMessage" -balise "$MitigateBalise" -space "$CustomSpace" }
			"Error" { Write-Host "$CustomSpace" -NoNewline; $ErrorBalise = Error; Write-Both -message "$CustomMessage" -balise "$ErrorBalise" -space "$CustomSpace" }
			"Neutral" { Write-Host "$CustomSpace" -NoNewline; $NeutralBalise = Neutral; Write-Both -message "$CustomMessage" -balise "$NeutralBalise" -space "$CustomSpace" -color $CustomColor}
			"None" { Write-Both -message "$CustomMessage" }
		}
	}
	
}


$script:SharedChecked = $true
$script:CChecked = $true
$script:SharedName = "D:\"
$script:CName = "C:/"

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
	
	
	Write-Host "`n"
	Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"

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
