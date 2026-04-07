<#### Ce script est destiné à faire une analyse global d'un environnement utilisateur
pour identifier les potentiels problèmes de configuration et de sécurité 

Auteur : William BRODIER
Date des denières modification : 18/08/2025 
####>


##### Les paramètres qui pourront être utilisés au démarrage du script, mais facultatif grâce aux valeurs par défaut et à l'interface graphique
param (
	[string]$Mode = "Classic",
	[int]$LowerSubnet = 0,
	[int]$HigherSubnet = 255,
	[int]$LowerClassic = 0,
	[int]$HigherClassic = 254,
	[string]$SaveName = "",
	[string]$OrdreApplication = "Name",
	[string]$DeleteNmap = "NotPerfect",
	[int]$NoGui = 0,
	[int]$Help = 0
)
##### Déclaration des variables globales #####
$IsAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
$IsActif = "Actif"
$IsInactif = "Inactif"

##### Variables à but purement esthétiques lors du lancement du script #####
$BarVert = [char]0x2502
$TeeBar = [char]0x251C
$Elbow = [char]0x2514
$Line = [char]0x2500

Remove-Item -Path "$(pwd)\*.txt"

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
Add-Type -Path "$(pwd)\Miscs\MetroModern\lib\net\MetroFramework.Design.dll" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
Add-Type -Path "$(pwd)\Miscs\MetroModern\lib\net\MetroFramework.dll" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
Add-Type -Path "$(pwd)\Miscs\MetroModern\lib\net\MetroFramework.Fonts.dll" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
$iconPath = "$(pwd)\Miscs\Logo_Monochrome.ico"
$image = [System.Drawing.Image]::FromFile("$(pwd)\Miscs\montagne.png")


function Graph_Interface {
	if ($NoGui -eq 0){
		
		$leftPad = 20
		$HeightLeftPad = 60
		$modePad = 500
		$HeightModePad = 30

		$icon = New-Object System.Drawing.Icon($iconPath)
		$form = New-Object MetroFramework.Forms.MetroForm
		$form.Icon = $icon
		$form.Text = "IT05 User Recon - Options de lancement"
		$form.Resizable = $false
		$form.MinimumSize = New-Object System.Drawing.Size(800, 800)
		$form.MaximumSize = New-Object System.Drawing.Size(800, 800)
		$form.StartPosition = "CenterScreen"
		
		$form.Add_Shown({
			$form.Location = New-Object System.Drawing.Point($($form.Location.X + 1), $($form.Location.Y))
		})
		$form.ShowIcon = $true

		$pictureBox = New-Object System.Windows.Forms.PictureBox
		$pictureBox.Image = $image
		$pictureBox.SizeMode = "StretchImage"
		$pictureBox.Width = 800
		$pictureBox.Height = 200
		$pictureBox.Location = New-Object System.Drawing.Point(0, 610)  
		$form.Controls.Add($pictureBox)
		$pictureBox.SendToBack()


		$label = New-Object MetroFramework.Controls.MetroLabel
		$label.Text = "Choix des modules pour le script :"
		$label.Location = [System.Drawing.Point]::new($leftPad, $HeightLeftPad)
		$label.Size = [System.Drawing.Size]::new(280, 20)
		$label.BackColor = [System.Drawing.Color]::Transparent
		$form.Controls.Add($label)

		$btnModeSubnet = New-Object MetroFramework.Controls.MetroCheckBox
		$btnModeSubnet.BackColor = [System.Drawing.Color]::Transparent
		$btnModeSubnet.Style = [MetroFramework.MetroColorStyle]::Red
		$btnModeSubnet.Text = "Mode Subnet"
		$btnModeSubnet.Location = [System.Drawing.Point]::new($modePad, 240)
		$btnModeSubnet.AutoSize = $true
		$btnModeSubnet.Checked = $false
		$btnModeSubnet.add_CheckedChanged({
			$visible = $btnModeSubnet.Checked
			$LowerSubnetlabel.Visible = $visible
			$LowerSubnettrackBar.Visible = $visible
			$LowerSubnetlabelValue.Visible = $visible
			$HigherSubnetlabel.Visible = $visible
			$HigherSubnettrackBar.Visible = $visible
			$HigherSubnetlabelValue.Visible = $visible
		})
		$form.Controls.Add($btnModeSubnet)

		$btnAppOrder = New-Object MetroFramework.Controls.MetroCheckBox
		$btnAppOrder.BackColor = [System.Drawing.Color]::Transparent
		$btnAppOrder.Style = [MetroFramework.MetroColorStyle]::Red
		$btnAppOrder.Text = "Tri du listing des applications par date de mise a jour"
		$btnAppOrder.Location = [System.Drawing.Point]::new(60, 170)
		$btnAppOrder.AutoSize = $true
		$btnAppOrder.Checked = $false
		$form.Controls.Add($btnAppOrder)

		$labelOrdreApp = New-Object System.Windows.Forms.Label
		$labelOrdreApp.Text = "(Choix par defaut : ordre alphabetique)"
		$labelOrdreApp.Location = [System.Drawing.Point]::new(60, 190)
		$labelOrdreApp.AutoSize = $true
		$labelOrdreApp.BackColor = [System.Drawing.Color]::Transparent
		$form.Controls.Add($labelOrdreApp)

		$btnAutoMaj = New-Object MetroFramework.Controls.MetroCheckBox
		$btnAutoMaj.BackColor = [System.Drawing.Color]::Transparent
		$btnAutoMaj.Style = [MetroFramework.MetroColorStyle]::Red
		$btnAutoMaj.Text = "Installation automatique des MAJs (si existantes)"
		$btnAutoMaj.Location = [System.Drawing.Point]::new(60, 230)
		$btnAutoMaj.AutoSize = $true
		$btnAutoMaj.Checked = $false
		$form.Controls.Add($btnAutoMaj)

		$btnCustomC = New-Object MetroFramework.Controls.MetroCheckBox
		$btnCustomC.BackColor = [System.Drawing.Color]::Transparent
		$btnCustomC.Style = [MetroFramework.MetroColorStyle]::Red
		$btnCustomC.Text = "Chemin precis dans le disque"
		$btnCustomC.Location = [System.Drawing.Point]::new(60, 410)
		$btnCustomC.AutoSize = $true
		$btnCustomC.Checked = $false
		$btnCustomC.add_CheckedChanged({
			$visible = $btnCustomC.Checked
			$btnCustomCName.Visible = $visible
		})
		$form.Controls.Add($btnCustomC)
		$btnCustomCName = New-Object MetroFramework.Controls.MetroTextBox
		$btnCustomCName.Location = New-Object System.Drawing.Point(240, 408)
		$btnCustomCName.Size = New-Object System.Drawing.Size(150, 20)
		$btnCustomCName.Visible = $false
		$form.Controls.Add($btnCustomCName)

		$btnCustomShared = New-Object MetroFramework.Controls.MetroCheckBox
		$btnCustomShared.BackColor = [System.Drawing.Color]::Transparent
		$btnCustomShared.Style = [MetroFramework.MetroColorStyle]::Red
		$btnCustomShared.Text = "Chemin precis dans un lecteur partage"
		$btnCustomShared.Location = [System.Drawing.Point]::new(60, 430)
		$btnCustomShared.AutoSize = $true
		$btnCustomShared.Checked = $false
		$btnCustomShared.add_CheckedChanged({
			$visible = $btnCustomShared.Checked
			$btnCustomSharedName.Visible = $visible
		})
		$form.Controls.Add($btnCustomShared)
		$btnCustomSharedName = New-Object MetroFramework.Controls.MetroTextBox
		$btnCustomSharedName.Location = New-Object System.Drawing.Point(290, 428)
		$btnCustomSharedName.Size = New-Object System.Drawing.Size(150, 20)
		$btnCustomSharedName.Visible = $false
		$form.Controls.Add($btnCustomSharedName)


		$btnMinimaliste = New-Object MetroFramework.Controls.MetroCheckBox
		$btnMinimaliste.BackColor = [System.Drawing.Color]::Transparent
		$btnMinimaliste.Style = [MetroFramework.MetroColorStyle]::Red
		$btnMinimaliste.Text = "Affichage minimaliste (simplifie) des resultats"
		$btnMinimaliste.Location = [System.Drawing.Point]::new(60, 470)
		$btnMinimaliste.AutoSize = $true
		$btnMinimaliste.Checked = $false
		$form.Controls.Add($btnMinimaliste)

		$checkboxes = @()
		$options = "Scan Reseau", "Listing des applications", "Verification Windows Update", "Listing des utilisateurs locaux/AD", "Verification des parametres de securite", "Chercher des fichiers delicats", "Parametrage Active Directory"
		for ($i = 0; $i -lt $options.Length; $i++) {
			$cb = New-Object MetroFramework.Controls.MetroCheckBox
			$cb.Text = $options[$i]
			$cb.Style = [MetroFramework.MetroColorStyle]::Red  
			$cb.Location = [System.Drawing.Point]::new($($leftPad+30), $($HeightLeftPad+30) + ($i * 60))
			$cb.AutoSize = $true
			$cb.BackColor = [System.Drawing.Color]::Transparent
			$cb.Checked = $true
			if ($cb.Text -eq "Scan Reseau"){
				$cb.add_CheckedChanged({
					$visible = $this.Checked
					$labelClassy.Visible = $visible
					$LowerClassiclabel.Visible = $visible
					$LowerClassictrackBar.Visible = $visible
					$LowerClassiclabelValue.Visible = $visible
					$HigherClassiclabel.Visible = $visible
					$HigherClassictrackBar.Visible = $visible
					$HigherClassiclabelValue.Visible = $visible
					$btnModeSubnet.Visible = $visible
					if ($this.Checked -eq $false){
						$btnModeSubnet.Checked = $false
					}
				})
			} elseif ($cb.text -eq "Listing des applications"){
				$cb.add_CheckedChanged({
					$visible = $this.Checked
					$btnAppOrder.Visible = $visible
					$labelOrdreApp.Visible = $visible
					if ($this.Checked -eq $false){
						$btnAppOrder.Checked = $false
					}
				})
			} elseif ($cb.text -eq "Verification Windows Update"){
				$cb.add_CheckedChanged({
					$visible = $this.Checked
					$btnAutoMaj.Visible = $visible
					if ($this.Checked -eq $false){
						$btnAutoMaj.Checked = $false
					}
				})
			} elseif ($cb.text -eq "Chercher des fichiers delicats"){
				$cb.add_CheckedChanged({
					$visible = $this.Checked
					$btnCustomC.Visible = $visible
					$btnCustomShared.Visible = $visible
					if ($this.Checked -eq $false){
						$btnCustomC.Checked = $false
						$btnCustomShared.Visible = $visible
					}
				})
			} elseif ($cb.text -eq "Parametrage Active Directory"){
				$cb.add_CheckedChanged({
					$visible = $this.Checked
					$btnMinimaliste.Visible = $visible
					if ($this.Checked -eq $false){
						$btnMinimaliste.Checked = $false
					}
				})
			}
			$form.Controls.Add($cb)
			$checkboxes += $cb
		}

		# Bouton Envoyer
		$btnOK = New-Object MetroFramework.Controls.MetroButton
		$btnOK.Text = "Envoyer"
		$btnOK.Location = [System.Drawing.Point]::new(500, 750)
		$btnOK.Width = 100
		$btnOK.Add_Click({
			foreach ($cb in $checkboxes){
				switch ($cb.Text) {
					"Scan Reseau" { 
						if ($cb.Checked) { 	
							$script:SR = 1 
							$Nmapform = New-Object MetroFramework.Forms.MetroForm
							$Nmapform.Icon = $icon
							$Nmapform.Text = "IT05 User Recon - Options NMAP"
							$Nmapform.Resizable = $false
							$Nmapform.MinimumSize = New-Object System.Drawing.Size(500, 800)
							$Nmapform.MaximumSize = New-Object System.Drawing.Size(500, 800)
							$Nmapform.StartPosition = "CenterScreen"
							
							$NmappictureBox = New-Object System.Windows.Forms.PictureBox
							$NmappictureBox.Image = $image
							$NmappictureBox.SizeMode = "StretchImage"
							$NmappictureBox.Width = 500
							$NmappictureBox.Height = 100
							$NmappictureBox.Location = New-Object System.Drawing.Point(0, 710)  
							$Nmapform.Controls.Add($NmappictureBox)
							$NmappictureBox.SendToBack()

							$Nmapform.Add_Shown({
								$Nmapform.Location = New-Object System.Drawing.Point($($Nmapform.Location.X + 1), $($Nmapform.Location.Y))
							})
							$Nmapform.ShowIcon = $true

							$Nmapcheckboxes = @()
							$Nmapoptions = 	"-sV : Scan les versions des services (Coche par defaut)", 
											"-O : Scan les versions des OS (Coche par defaut)", 
											"-s? : Scan TCP specifiques",
											"-sU : Scan en UDP",
											"-T x : Ajuster la vitesse et la furtivite", 
											"--min-rate x : Nombre minimum de paquets/s", 
											"-script : detecter des vulnerabilites sur les ports ouverts",
											"--data-length x : Rajouter des donnees aleatoires aux paquets"
							for ($i = 0; $i -lt $Nmapoptions.Length; $i++) {
								$Nmapcb = New-Object MetroFramework.Controls.MetroCheckBox
								$Nmapcb.Text = $Nmapoptions[$i]
								$Nmapcb.Style = [MetroFramework.MetroColorStyle]::Red  
								$Nmapcb.Location = [System.Drawing.Point]::new($($leftPad+30), $($HeightLeftPad+30) + ($i * 80))
								$Nmapcb.AutoSize = $true
								$Nmapcb.BackColor = [System.Drawing.Color]::Transparent
								$Nmapcb.Checked = $false
								switch ($Nmapcb.Text) {
									"-sV : Scan les versions des services (Coche par defaut)" { $Nmapcb.Checked = $True }
									"-O : Scan les versions des OS (Coche par defaut)" { $Nmapcb.Checked = $True }
									"-s? : Scan TCP specifiques" {
											$Nmapcb.add_CheckedChanged({
												$visible = $this.Checked
												$NmapTCP_S.Visible = $visible
												$NmapTCP_T.Visible = $visible
												$NmapTCP_A.Visible = $visible
											})
										}
									"-T x : Ajuster la vitesse et la furtivite" { 
										$Nmapcb.add_CheckedChanged({
											$visible = $this.Checked
											$NmapTTrackBar.Visible = $visible
											$NmapTTrackBarValue.Visible = $visible
										}) 
									}
									"--min-rate x : Nombre minimum de paquets/s" {
										$Nmapcb.add_CheckedChanged({
											$visible = $this.Checked
											$NmapMinRateTrackBar.Visible = $visible
											$NmapMinRateTrackBarValue.Visible = $visible
										})
									}
									"--data-length x : Rajouter des donnees aleatoires aux paquets" {
										$Nmapcb.add_CheckedChanged({
											$visible = $this.Checked
											$NmapDataLengthTrackBar.Visible = $visible
											$NmapDataLengthTrackBarValue.Visible = $visible
										})
									}
									"-script : detecter des vulnerabilites sur les ports ouverts" {
										$Nmapcb.add_CheckedChanged({
											$visible = $this.Checked
											$NmapScriptDefault.Visible = $visible
											$NmapScriptNotIntrusive.Visible = $visible
											$NmapScriptVuln.Visible = $visible
										})
									}
									Default {}
								}
								$Nmapform.Controls.Add($Nmapcb)
								$Nmapcheckboxes += $Nmapcb
							}

							$NmapTCP_S = New-Object MetroFramework.Controls.MetroCheckBox
							$NmapTCP_S.Text = "sS : SYN Scan (Haute furtivite / Haute fiabilite)"
							$NmapTCP_S.Style = [MetroFramework.MetroColorStyle]::Red  
							$NmapTCP_S.Location = [System.Drawing.Point]::new($($leftPad+50), 270)
							$NmapTCP_S.AutoSize = $true
							$NmapTCP_S.Visible = $false
							$NmapTCP_S.BackColor = [System.Drawing.Color]::Transparent
							$NmapTCP_S.Checked = $true
							$NmapTCP_S.add_CheckedChanged({
								if ($this.Checked){
									$NmapTCP_T.Checked = $false
									$NmapTCP_A.Checked = $false
								} elseif ($this.Checked -eq $false -and $NmapTCP_T.Checked -eq $false -and $NmapTCP_A.Checked -eq $false) {
									$NmapTCP_S.Checked = $true
								}
							})
							$Nmapform.Controls.Add($NmapTCP_S)

							$NmapTCP_T = New-Object MetroFramework.Controls.MetroCheckBox
							$NmapTCP_T.Text = "sT : Connexion complete (Faible furtivite / Haute fiabilite)"
							$NmapTCP_T.Style = [MetroFramework.MetroColorStyle]::Red  
							$NmapTCP_T.Location = [System.Drawing.Point]::new($($leftPad+50), 290)
							$NmapTCP_T.AutoSize = $true
							$NmapTCP_T.Visible = $false
							$NmapTCP_T.BackColor = [System.Drawing.Color]::Transparent
							$NmapTCP_T.Checked = $false
							$NmapTCP_T.add_CheckedChanged({
								if ($this.Checked){
									$NmapTCP_S.Checked = $false
									$NmapTCP_A.Checked = $false
								} elseif ($this.Checked -eq $false -and $NmapTCP_S.Checked -eq $false -and $NmapTCP_A.Checked -eq $false) {
									$NmapTCP_T.Checked = $true
								}
							})
							$Nmapform.Controls.Add($NmapTCP_T)
							

							$NmapTCP_A = New-Object MetroFramework.Controls.MetroCheckBox
							$NmapTCP_A.Text = "sA : ACK Scan (Moyenne furtivite / Moyenne fiabilite)"
							$NmapTCP_A.Style = [MetroFramework.MetroColorStyle]::Red  
							$NmapTCP_A.Location = [System.Drawing.Point]::new($($leftPad+50), 310)
							$NmapTCP_A.AutoSize = $true
							$NmapTCP_A.Visible = $false
							$NmapTCP_A.BackColor = [System.Drawing.Color]::Transparent
							$NmapTCP_A.Checked = $false
							$NmapTCP_A.add_CheckedChanged({
								if ($this.Checked){
									$NmapTCP_S.Checked = $false
									$NmapTCP_T.Checked = $false
								} elseif ($this.Checked -eq $false -and $NmapTCP_S.Checked -eq $false -and $NmapTCP_T.Checked -eq $false) {
									$NmapTCP_A.Checked = $true
								}
							})
							$Nmapform.Controls.Add($NmapTCP_A)
							


							$NmapScriptDefault = New-Object MetroFramework.Controls.MetroCheckBox
							$NmapScriptDefault.Text = "default"
							$NmapScriptDefault.Style = [MetroFramework.MetroColorStyle]::Red  
							$NmapScriptDefault.Location = [System.Drawing.Point]::new($($leftPad+50), 590)
							$NmapScriptDefault.AutoSize = $true
							$NmapScriptDefault.Visible = $false
							$NmapScriptDefault.BackColor = [System.Drawing.Color]::Transparent
							$NmapScriptDefault.Checked = $true
							$NmapScriptDefault.add_CheckedChanged({
								if ($this.Checked){
									$NmapScriptNotIntrusive.Checked = $false
									$NmapScriptVuln.Checked = $false
								} elseif ($this.Checked -eq $false -and $NmapScriptNotIntrusive.Checked -eq $false -and $NmapScriptVuln.Checked -eq $false) {
									$NmapScriptDefault.Checked = $true
								}
							})
							$Nmapform.Controls.Add($NmapScriptDefault)

							$NmapScriptNotIntrusive = New-Object MetroFramework.Controls.MetroCheckBox
							$NmapScriptNotIntrusive.Text = "Not intrusive (plus discret ; moins pousse)"
							$NmapScriptNotIntrusive.Style = [MetroFramework.MetroColorStyle]::Red  
							$NmapScriptNotIntrusive.Location = [System.Drawing.Point]::new($($leftPad+50), 610)
							$NmapScriptNotIntrusive.AutoSize = $true
							$NmapScriptNotIntrusive.Visible = $false
							$NmapScriptNotIntrusive.BackColor = [System.Drawing.Color]::Transparent
							$NmapScriptNotIntrusive.Checked = $false
							$NmapScriptNotIntrusive.add_CheckedChanged({
								if ($this.Checked){
									$NmapScriptDefault.Checked = $false
									$NmapScriptVuln.Checked = $false
								} elseif ($this.Checked -eq $false -and $NmapScriptDefault.Checked -eq $false -and $NmapScriptVuln.Checked -eq $false) {
									$NmapScriptNotIntrusive.Checked = $true
								}
							})
							$Nmapform.Controls.Add($NmapScriptNotIntrusive)

							$NmapScriptVuln = New-Object MetroFramework.Controls.MetroCheckBox
							$NmapScriptVuln.Text = "vuln (plus long ; moins discret)"
							$NmapScriptVuln.Style = [MetroFramework.MetroColorStyle]::Red  
							$NmapScriptVuln.Location = [System.Drawing.Point]::new($($leftPad+50), 630)
							$NmapScriptVuln.AutoSize = $true
							$NmapScriptVuln.Visible = $false
							$NmapScriptVuln.BackColor = [System.Drawing.Color]::Transparent
							$NmapScriptVuln.Checked = $false
							$NmapScriptVuln.add_CheckedChanged({
								if ($this.Checked){
									$NmapScriptDefault.Checked = $false
									$NmapScriptNotIntrusive.Checked = $false
								} elseif ($this.Checked -eq $false -and $NmapScriptDefault.Checked -eq $false -and $NmapScriptNotIntrusive.Checked -eq $false) {
									$NmapScriptVuln.Checked = $true
								}
							})
							$Nmapform.Controls.Add($NmapScriptVuln)

							$NmapTTrackBar = New-Object MetroFramework.Controls.MetroTrackBar
							$NmapTTrackBar.Minimum = 0
							$NmapTTrackBar.Maximum = 5
							$NmapTTrackBar.Value = 3
							$NmapTTrackBar.Visible = $false
							$NmapTTrackBar.SmallChange = 1
							$NmapTTrackBar.LargeChange = 1
							$NmapTTrackBar.Location = [System.Drawing.Point]::new($($leftPad+30), 430)
							$NmapTTrackBar.Size = [System.Drawing.Size]::new(400, 45)
							$Nmapform.Controls.Add($NmapTTrackBar)

							$NmapTTrackBarValue = New-Object MetroFramework.Controls.MetroLabel
							$NmapTTrackBarValue.Text = " - Valeur : $($NmapTTrackBar.Value)"
							$NmapTTrackBarValue.Location = [System.Drawing.Point]::new($($leftPad + 230), 407)
							$NmapTTrackBarValue.AutoSize = $true
							$NmapTTrackBarValue.BringToFront()
							$NmapTTrackBarValue.Visible = $false
							$Nmapform.Controls.Add($NmapTTrackBarValue)
							$NmapTTrackBar.add_ValueChanged({
								$NmapTTrackBarValue.Text = " - Valeur : $($NmapTTrackBar.Value)"
							})

							$NmapMinRateTrackBar = New-Object MetroFramework.Controls.MetroTrackBar
							$NmapMinRateTrackBar.Minimum = 1
							$NmapMinRateTrackBar.Maximum = 10000
							$NmapMinRateTrackBar.Value = 1000
							$NmapMinRateTrackBar.SmallChange = 1
							$NmapMinRateTrackBar.LargeChange = 500
							$NmapMinRateTrackBar.Visible = $false
							$NmapMinRateTrackBar.Location = [System.Drawing.Point]::new($($leftPad+30), 510)
							$NmapMinRateTrackBar.Size = [System.Drawing.Size]::new(400, 45)
							$Nmapform.Controls.Add($NmapMinRateTrackBar)

							$NmapMinRateTrackBarValue = New-Object MetroFramework.Controls.MetroLabel
							$NmapMinRateTrackBarValue.Text = " - Valeur : $($NmapMinRateTrackBar.Value)"
							$NmapMinRateTrackBarValue.Location = [System.Drawing.Point]::new($($leftPad + 285), 487)
							$NmapMinRateTrackBarValue.BringToFront()
							$NmapMinRateTrackBarValue.AutoSize = $true
							$NmapMinRateTrackBarValue.Visible = $false
							$Nmapform.Controls.Add($NmapMinRateTrackBarValue)
							$NmapMinRateTrackBar.add_ValueChanged({
								$NmapMinRateTrackBarValue.Text = " - Valeur : $($NmapMinRateTrackBar.Value)"
							})



							$NmapDataLengthTrackBar = New-Object MetroFramework.Controls.MetroTrackBar
							$NmapDataLengthTrackBar.Minimum = 1
							$NmapDataLengthTrackBar.Maximum = 1400
							$NmapDataLengthTrackBar.Value = 1000
							$NmapDataLengthTrackBar.SmallChange = 1
							$NmapDataLengthTrackBar.LargeChange = 50
							$NmapDataLengthTrackBar.Visible = $false
							$NmapDataLengthTrackBar.Location = [System.Drawing.Point]::new($($leftPad+30), 670)
							$NmapDataLengthTrackBar.Size = [System.Drawing.Size]::new(400, 45)
							$Nmapform.Controls.Add($NmapDataLengthTrackBar)

							$NmapDataLengthTrackBarValue = New-Object MetroFramework.Controls.MetroLabel
							$NmapDataLengthTrackBarValue.Text = " - Valeur : $($NmapDataLengthTrackBar.Value)"
							$NmapDataLengthTrackBarValue.Location = [System.Drawing.Point]::new($($leftPad + 365), 647)
							$NmapDataLengthTrackBarValue.BringToFront()
							$NmapDataLengthTrackBarValue.AutoSize = $true
							$NmapDataLengthTrackBarValue.Visible = $false
							$Nmapform.Controls.Add($NmapDataLengthTrackBarValue)
							$NmapDataLengthTrackBar.add_ValueChanged({
								$NmapDataLengthTrackBarValue.Text = " - Valeur : $($NmapDataLengthTrackBar.Value)"
							})

							# Bouton Annuler
							$NmapbtnCancel = New-Object MetroFramework.Controls.MetroButton
							$NmapbtnCancel.Text = "Annuler"
							$NmapbtnCancel.Location = [System.Drawing.Point]::new(50, 750)
							$NmapbtnCancel.Width = 100
							$NmapbtnCancel.Add_Click({ $Nmapform.Close(); $script:exit = 1 }) > $null
							$Nmapform.Controls.Add($NmapbtnCancel) > $null
							$NmapbtnCancel.BringToFront()
							
							$NmapbtnUncheck = New-Object MetroFramework.Controls.MetroButton
							$NmapbtnUncheck.Text = "Tout decocher"
							$NmapbtnUncheck.Location = [System.Drawing.Point]::new(150, 750)
							$NmapbtnUncheck.Width = 100
							$NmapbtnUncheck.Add_Click({
								foreach ($Nmapcb in $Nmapcheckboxes) {
									$Nmapcb.Checked = $false
								}
							})
							$Nmapform.Controls.Add($NmapbtnUncheck)
							$NmapbtnUncheck.BringToFront()

							$NmapbtnCheck = New-Object MetroFramework.Controls.MetroButton
							$NmapbtnCheck.Text = "Tout Cocher"
							$NmapbtnCheck.Location = [System.Drawing.Point]::new(250, 750)
							$NmapbtnCheck.Width = 100
							$NmapbtnCheck.Add_Click({
								foreach ($Nmapcb in $Nmapcheckboxes) {
									$Nmapcb.Checked = $True
								}
							})
							$Nmapform.Controls.Add($NmapbtnCheck)
							$NmapbtnCheck.BringToFront()

							$NmapbtnOK = New-Object MetroFramework.Controls.MetroButton
							$NmapbtnOK.Text = "Envoyer"
							$NmapbtnOK.Location = [System.Drawing.Point]::new(350, 750)
							$NmapbtnOK.Width = 100
							$NmapbtnOK.Add_Click({
								$script:NMAPVALUE = 0
								$script:NmapOptionMap = @{
									"-s?"           	= 1
									"-sV"           	= 2
									"-O"            	= 4
									"-T"           		= 8
									"--min-rate"   		= 16
									"-script"	 		= 32
									"--data-length"  	= 64
									"-sU"            	= 128
								}
								foreach ($Nmapcb in $Nmapcheckboxes){
									if ($Nmapcb.text -eq "--min-rate x : Nombre minimum de paquets/s" -or $Nmapcb.text -eq "--data-length x : Rajouter des donnees aleatoires aux paquets" -or $Nmapcb.Text -eq "-T x : Ajuster la vitesse et la furtivite" ){
										$option = ($Nmapcb.Text -split " x :")[0]
									} else {
										$option = ($Nmapcb.Text -split " :")[0]
									}
									if ($Nmapcb.Checked -and $script:NmapOptionMap.ContainsKey($option)){
										$script:NMAPVALUE += $script:NmapOptionMap[$option]
									}
									switch ($Nmapcb.Text) {
										"-T x : Ajuster la vitesse et la furtivite" { if ($Nmapcb.Checked) { $script:TX = $NmapTTrackBar.Value} }
										"--min-rate x : Nombre minimum de paquets/s" { if ($Nmapcb.Checked) { $script:MR = $NmapMinRateTrackBar.Value } }
										"-script : detecter des vulnerabilites sur les ports ouverts" { 
											if ($Nmapcb.Checked) { 
												$script:NmapDefault = $NmapScriptDefault.Checked
												$script:NmapNotIntrusive = $NmapScriptNotIntrusive.Checked
												$script:NmapVuln = $NmapScriptVuln.Checked
											}
										}
										"-s? : Scan TCP specifiques" {
											if ($Nmapcb.Checked) {
												$script:TCPS = $NmapTCP_S.Checked
												$script:TCPT = $NmapTCP_T.Checked
												$script:TCPA = $NmapTCP_A.Checked
											}
										}
										"--data-length x : Rajouter des donnees aleatoires aux paquets" {if ($Nmapcb.Checked) { $script:DL = $NmapDataLengthTrackBar.Value } }
									}
								}
								$Nmapform.Close()
							})
							$Nmapform.Controls.Add($NmapbtnOK)
							$NmapbtnOK.BringToFront()

							$Nmapform.ShowDialog() > $null
						} else { 
							$script:SR = 0
						} 
					}
					"Listing des applications" { if ($cb.Checked) { $script:LA = 1 } else { $script:LA = 0 } }
					"Verification Windows Update" { if ($cb.Checked) { $script:VWU = 1 } else { $script:VWU = 0 } }
					"Listing des utilisateurs locaux/AD" { if ($cb.Checked) { $script:LUAD = 1 } else { $script:LUAD = 0 } }
					"Verification des parametres de securite" { if ($cb.Checked) { $script:VPS = 1 } else { $script:VPS = 0 } }
					"Chercher des fichiers delicats" { if ($cb.Checked) { $script:SF = 1 } else { $script:SF = 0 } }
					"Parametrage Active Directory" { if ($cb.Checked) { $script:ADP = 1 } else { $script:ADP = 0 } }
				}
			}
			$script:NoInstallTools = $btnNoToolsInstall.Checked
			$script:SubnetMode = $btnModeSubnet.Checked
			$script:AppSort = $btnAppOrder.Checked
			$script:AutoMaj = $btnAutoMaj.Checked
			$script:CName = $btnCustomCName.text
			$script:CChecked = $btnCustomC.Checked
			$script:SharedName = $btnCustomSharedName.text
			$script:SharedChecked = $btnCustomShared.Checked
			$script:Minimalist = $btnMinimaliste.Checked
			$script:LowerSubnet = $LowerSubnettrackBar.Value
			$script:HigherSubnet = $HigherSubnettrackBar.Value
			$script:LowerClassic = $LowerClassictrackBar.Value
			$script:HigherClassic = $HigherClassictrackBar.Value
			$script:SaveState = $ChampSaveName.Visible
			$script:SaveText = $ChampSaveName.Text
			$form.Close()
		})
		$form.Controls.Add($btnOK)
		$btnOK.BringToFront()

		# Bouton Tout Décocher
		$btnUncheck = New-Object MetroFramework.Controls.MetroButton
		$btnUncheck.Text = "Tout decocher"
		$btnUncheck.Location = [System.Drawing.Point]::new(300, 750)
		$btnUncheck.Width = 100
		$btnUncheck.Add_Click({
			foreach ($cb in $checkboxes) {
				$cb.Checked = $false
			}
		})
		$form.Controls.Add($btnUncheck)
		$btnUncheck.BringToFront()

		# Bouton Tout Cocher
		$btnCheck = New-Object MetroFramework.Controls.MetroButton
		$btnCheck.Text = "Tout Cocher"
		$btnCheck.Location = [System.Drawing.Point]::new(400, 750)
		$btnCheck.Width = 100
		$btnCheck.Add_Click({
			foreach ($cb in $checkboxes) {
				$cb.Checked = $True
			}
		})
		$form.Controls.Add($btnCheck)
		$btnCheck.BringToFront()

		# Bouton Annuler
		$btnCancel = New-Object MetroFramework.Controls.MetroButton
		$btnCancel.Text = "Annuler"
		$btnCancel.Location = [System.Drawing.Point]::new(200, 750)
		$btnCancel.Width = 100
		$btnCancel.Add_Click({ $form.Close(); $script:exit = 1 }) > $null
		$form.Controls.Add($btnCancel) > $null
		$btnCancel.BringToFront()
		
		# Titre affiché en haut
		$labelClassy = New-Object MetroFramework.Controls.MetroLabel
		$labelClassy.Text = "Mode classique"
		$labelClassy.Location = [System.Drawing.Point]::new($modePad, $($HeightModePad + 30))
		$labelClassy.Size = [System.Drawing.Size]::new(100, 20)
		$labelClassy.BackColor = [System.Drawing.Color]::Transparent
		$form.Controls.Add($labelClassy)

		# Barriere classique basse
		$LowerClassiclabel = New-Object MetroFramework.Controls.MetroLabel
		$LowerClassiclabel.BackColor = [System.Drawing.Color]::Transparent
		$LowerClassiclabel.Text = "LowerClassic : "
		$LowerClassiclabel.Location = [System.Drawing.Point]::new($modePad, $($HeightModePad + 50))
		$LowerClassiclabel.Size = [System.Drawing.Size]::new(100, 20)
		$form.Controls.Add($LowerClassiclabel)
		$LowerClassictrackBar = New-Object MetroFramework.Controls.MetroTrackBar
		$LowerClassictrackBar.Minimum = 0
		$LowerClassictrackBar.Maximum = 254
		$LowerClassictrackBar.Value = 1
		$LowerClassictrackBar.SmallChange = 1
		$LowerClassictrackBar.LargeChange = 10
		$LowerClassictrackBar.Location = [System.Drawing.Point]::new($modePad, $($HeightModePad + 70))
		$LowerClassictrackBar.Size = [System.Drawing.Size]::new(260, 45)
		$form.Controls.Add($LowerClassictrackBar)
		$LowerClassiclabelValue = New-Object MetroFramework.Controls.MetroLabel
		$LowerClassiclabelValue.Text = "Valeur : $($LowerClassictrackBar.Value)"
		$LowerClassiclabelValue.Location = [System.Drawing.Point]::new($($modePad + 100), $($HeightModePad + 50))
		$form.Controls.Add($LowerClassiclabelValue)
		$LowerClassictrackBar.add_ValueChanged({
			if ($HigherClassictrackBar.Value -lt $LowerClassictrackBar.Value) {
				$HigherClassictrackBar.Value = $LowerClassictrackBar.Value
			}
			$LowerClassiclabelValue.Text = "Valeur : $($LowerClassictrackBar.Value)"
			$HigherClassiclabelValue.Text = "Valeur : $($HigherClassictrackBar.Value)"
		})

		# Barriere classique haute
		$HigherClassiclabel = New-Object MetroFramework.Controls.MetroLabel
		$HigherClassiclabel.BackColor = [System.Drawing.Color]::Transparent
		$HigherClassiclabel.Text = "HigherClassic : "
		$HigherClassiclabel.Location = [System.Drawing.Point]::new($modePad, $($HeightModePad + 120))
		$HigherClassiclabel.Size = [System.Drawing.Size]::new(100, 20)
		$form.Controls.Add($HigherClassiclabel)
		$HigherClassictrackBar = New-Object MetroFramework.Controls.MetroTrackBar
		$HigherClassictrackBar.Minimum = 0
		$HigherClassictrackBar.Maximum = 254
		$HigherClassictrackBar.Value = 254
		$HigherClassictrackBar.SmallChange = 1
		$HigherClassictrackBar.LargeChange = 10
		$HigherClassictrackBar.Location = [System.Drawing.Point]::new($modePad, $($HeightModePad + 140))
		$HigherClassictrackBar.Size = [System.Drawing.Size]::new(260, 45)
		$form.Controls.Add($HigherClassictrackBar)
		$HigherClassiclabelValue = New-Object MetroFramework.Controls.MetroLabel
		$HigherClassiclabelValue.Text = "Valeur : $($HigherClassictrackBar.Value)"
		$HigherClassiclabelValue.Location = [System.Drawing.Point]::new($($modePad + 100), $($HeightModePad + 120))
		$form.Controls.Add($HigherClassiclabelValue)
		$HigherClassictrackBar.add_ValueChanged({
			if ($HigherClassictrackBar.Value -lt $LowerClassictrackBar.Value) {
				$LowerClassictrackBar.Value = $HigherClassictrackBar.Value
			}
			$HigherClassiclabelValue.Text = "Valeur : $($HigherClassictrackBar.Value)"
		})

		# Barriere subnet basse
		$LowerSubnetlabel = New-Object MetroFramework.Controls.MetroLabel
		$LowerSubnetlabel.BackColor = [System.Drawing.Color]::Transparent
		$LowerSubnetlabel.Text = "LowerSubnet : "
		$LowerSubnetlabel.Location = [System.Drawing.Point]::new($modePad, $($HeightModePad + 230))
		$LowerSubnetlabel.Size = [System.Drawing.Size]::new(100, 20)
		$LowerSubnetlabel.Visible = $false
		$form.Controls.Add($LowerSubnetlabel)
		$LowerSubnettrackBar = New-Object MetroFramework.Controls.MetroTrackBar
		$LowerSubnettrackBar.Minimum = 0
		$LowerSubnettrackBar.Maximum = 254
		$LowerSubnettrackBar.Value = 1
		$LowerSubnettrackBar.SmallChange = 1
		$LowerSubnettrackBar.LargeChange = 10
		$LowerSubnettrackBar.Location = [System.Drawing.Point]::new($modePad, $($HeightModePad + 250))
		$LowerSubnettrackBar.Size = [System.Drawing.Size]::new(260, 45)
		$LowerSubnettrackBar.Visible = $false
		$form.Controls.Add($LowerSubnettrackBar)
		$LowerSubnetlabelValue = New-Object MetroFramework.Controls.MetroLabel
		$LowerSubnetlabelValue.Text = "Valeur : $($LowerSubnettrackBar.Value)"
		$LowerSubnetlabelValue.Location = [System.Drawing.Point]::new($($modePad + 100), $($HeightModePad + 230))
		$LowerSubnetlabelValue.Visible = $false
		$form.Controls.Add($LowerSubnetlabelValue)
		$LowerSubnettrackBar.add_ValueChanged({
			if ($HigherSubnettrackBar.Value -lt $LowerSubnettrackBar.Value) {
				$HigherSubnettrackBar.Value = $LowerSubnettrackBar.Value
			}
			$LowerSubnetlabelValue.Text = "Valeur : $($LowerSubnettrackBar.Value)"
			$HigherSubnetlabelValue.Text = "Valeur : $($HigherSubnettrackBar.Value)"
		})

		# Barriere subnet haute
		$HigherSubnetlabel = New-Object MetroFramework.Controls.MetroLabel
		$HigherSubnetlabel.BackColor = [System.Drawing.Color]::Transparent
		$HigherSubnetlabel.Text = "HigherSubnet : "
		$HigherSubnetlabel.Location = [System.Drawing.Point]::new($modePad, $($HeightModePad + 300))
		$HigherSubnetlabel.Size = [System.Drawing.Size]::new(100, 20)
		$HigherSubnetlabel.Visible = $false
		$form.Controls.Add($HigherSubnetlabel)
		$HigherSubnettrackBar = New-Object MetroFramework.Controls.MetroTrackBar
		$HigherSubnettrackBar.Minimum = 0
		$HigherSubnettrackBar.Maximum = 255
		$HigherSubnettrackBar.Value = 255
		$HigherSubnettrackBar.SmallChange = 1
		$HigherSubnettrackBar.LargeChange = 10
		$HigherSubnettrackBar.Location = [System.Drawing.Point]::new($modePad, $($HeightModePad + 320))
		$HigherSubnettrackBar.Size = [System.Drawing.Size]::new(260, 45)
		$HigherSubnettrackBar.Visible = $false
		$form.Controls.Add($HigherSubnettrackBar)
		$HigherSubnetlabelValue = New-Object MetroFramework.Controls.MetroLabel
		$HigherSubnetlabelValue.Text = "Valeur : $($HigherSubnettrackBar.Value)"
		$HigherSubnetlabelValue.Location = [System.Drawing.Point]::new($($modePad + 100), $($HeightModePad + 300))
		$HigherSubnetlabelValue.Visible = $false
		$form.Controls.Add($HigherSubnetlabelValue)
		$HigherSubnettrackBar.add_ValueChanged({
			if ($HigherSubnettrackBar.Value -lt $LowerSubnettrackBar.Value) {
				$LowerSubnettrackBar.Value = $HigherSubnettrackBar.Value
			}
			$HigherSubnetlabelValue.Text = "Valeur : $($HigherSubnettrackBar.Value)"
		})

		$btnNoToolsInstall = New-Object MetroFramework.Controls.MetroCheckBox
		$btnNoToolsInstall.BackColor = [System.Drawing.Color]::Transparent
		$btnNoToolsInstall.Style = [MetroFramework.MetroColorStyle]::Red
		$btnNoToolsInstall.Text = "Ne pas installer les prerequis"
		$btnNoToolsInstall.BringToFront()
		$btnNoToolsInstall.Location = [System.Drawing.Point]::new(500, 530)
		$btnNoToolsInstall.AutoSize = $true
		$btnNoToolsInstall.Checked = $false
		$form.Controls.Add($btnNoToolsInstall)

		$btnTestDev = New-Object MetroFramework.Controls.MetroCheckBox
		$btnTestDev.BackColor = [System.Drawing.Color]::Transparent
		$btnTestDev.Style = [MetroFramework.MetroColorStyle]::Red
		$btnTestDev.Text = "Mode de test/dev"
		$btnTestDev.BringToFront()
		$btnTestDev.Location = [System.Drawing.Point]::new(500, 550)
		$btnTestDev.AutoSize = $true
		$btnTestDev.Checked = $false
		$form.Controls.Add($btnTestDev)

		# Bouton & champ de saisi pour nom de sauvegarde manuel
		$btnSaveFile = New-Object MetroFramework.Controls.MetroCheckBox
		$btnSaveFile.BackColor = [System.Drawing.Color]::Transparent
		$btnSaveFile.Style = [MetroFramework.MetroColorStyle]::Red
		$btnSaveFile.Text = "Sauvegarde personalisee"
		$btnSaveFile.Location = [System.Drawing.Point]::new(50, 550)
		$btnSaveFile.AutoSize = $true
		$btnSaveFile.Checked = $false
		$btnSaveFile.add_CheckedChanged({
			$visible = $btnSaveFile.Checked
			$ChampSaveName.Visible = $visible
			$labelSaveName.Visible = $visible
		})
		$form.Controls.Add($btnSaveFile)
		$btnSaveFile.BringToFront()
		$labelSaveName = New-Object MetroFramework.Controls.MetroLabel
		$labelSaveName.Text = "Nom de la sauvegarde :"
		$labelSaveName.Visible = $false
		$labelSaveName.Location = [System.Drawing.Point]::new(50, 580)
		$labelSaveName.Size = [System.Drawing.Size]::new(150, 20)
		$labelSaveName.BackColor = [System.Drawing.Color]::Transparent
		$form.Controls.Add($labelSaveName)
		$labelSaveName.BringToFront()
		$ChampSaveName = New-Object MetroFramework.Controls.MetroTextBox
		$ChampSaveName.Location = New-Object System.Drawing.Point(205, 580)
		$ChampSaveName.Size = New-Object System.Drawing.Size(150, 20)
		$ChampSaveName.Visible = $false
		$form.Controls.Add($ChampSaveName)
		$ChampSaveName.BringToFront()

		# Affiche la fenêtre
		$form.ShowDialog() > $null

		if ($script:SaveState -eq $true){
			$script:SaveName = $script:SaveText
		} else {
			$PCNAME = $ComputerName = $env:COMPUTERNAME
			$script:SaveName = "RESULT_${PCNAME}"
		}

		if ($script:SubnetMode -eq $true){
			$Mode = "subnet"
		} else {
			$Mode = "classic"
		}
		
		if ($script:AppSort -eq $true){
			$OrdreApplication = "InstallDate"
		} else {
			$OrdreApplication = "Name"
		}

		if ($script:exit -eq 1){
			clear
			exit
		}
	} else {
		if ($script:SaveName -eq ""){
			$PCNAME = $ComputerName = $env:COMPUTERNAME
			$script:SaveName = "RESULT_${PCNAME}"
		}
	}
}

##### Déclaration de la bannière affichable #####
$banner = @"
   __  _______ __________        ____  ________________  _   __
  / / / / ___// ____/ __ \      / __ \/ ____/ ____/ __ \/ | / /
 / / / /\__ \/ __/ / /_/ /_____/ /_/ / __/ / /   / / / /  |/ / 
/ /_/ /___/ / /___/ _, _/_____/ _, _/ /___/ /___/ /_/ / /|  /  
\____//____/_____/_/ |_|     /_/ |_/_____/\____/\____/_/ |_/                                         
"@
$name = @"
                     By William BRODIER
"@

##### En cas de besoin, une aide des "commandes" est affichable #####
function SHELP {

	Write-Host "$banner" -ForegroundColor Magenta
	Write-Host "$name"
	FONCTION -Function_Name AIDE
	rm "$(pwd)\*.txt"
	Write-Host "Utilisation du script : `n" -ForegroundColor DarkYellow
	Write-Host ".\GLDX-USER-RECON.ps1                                   [-Mode <classic/subnet>]         [-LowerSubnet <int> -HigherSubnet <int>]"
	Write-Host "                                                        [-LowerClassic <int> -HigherClassic <int>]    [-Help <1>]    [-Nogui 1/0]"
	Write-Host "                                                        [-SaveName <string>] [OrdreApplication 'InstallDate'] [-DeleteNmap 'Yes']`n"
	Write-Host "                                                        "
	Write-Host "Parametres : " -ForegroundColor DarkYellow
	Write-Host "	-LowerSubnet <int> -HigherSubnet <int>          : Declare une plage de sous-reseaux a tester dans le scanner reseau"
	Write-Host "	-LowerClassic <int> -HigherClassic <int>        : Declare une plage IP a tester en condition normal ou par sous-reseau"
	Write-Host "	-SaveName 'Nom_du_fichier_de_sauvegarde'        : Choisir un nom specifique pour sauvegarder les resultats"
	Write-Host "	-OrdreApplication 'InstallDate'                 : Permettra le tri des applications selon la date de derniere mise a jour"
	Write-Host "	-DeleteNmap 'Yes'                               : Lancer le programme de desinstallation nmap manuel"
	Write-Host "	-NoGui 1                                        : Utilise le script en ligne de commande plutot qu'en interface graphique"
	Write-Host "	-Help 1                                         : Affiche cette aide`n`n"
}
<##### On vérifie ici que NMAP, le module PSWindowsUpdate et la fonctionnalité RSAT AD sont installés
Si ces applicatifs n'existent pas, alors ils seront installés avant de continuer le script si les droits admins le permettent #####>

function Modules_Choisis {
	if ($script:NoInstallTools -eq 1){
		Write-Allin -CustomMessage "Les prerequis ne seront pas verifies/installes" -CustomBalise "Info"
	}
	if ($script:SR -eq 1){
		Write-Allin -CustomMessage "Module `'Scan Reseau`' choisi" -CustomBalise "Info"
	}
	if ($script:LA -eq 1){
		Write-Allin -CustomMessage "Module `'Listing des Applications`' choisi" -CustomBalise "Info"
	}
	if ($script:VWU -eq 1){
		Write-Allin -CustomMessage "Module `'Verification Windows Update`' choisi" -CustomBalise "Info"
	}
	if ($script:LUAD -eq 1){
		Write-Allin -CustomMessage "Module `'Listing Utilisateurs & Comptes AD`' choisi" -CustomBalise "Info"
	}
	if ($script:VPS -eq 1){
		Write-Allin -CustomMessage "Module `'Verification des Parametres de Securite`' choisi" -CustomBalise "Info"
	}
	if ($script:SF -eq 1){
		Write-Allin -CustomMessage "Module `'Chercher des fichiers delicat`' choisi" -CustomBalise "Info"
	}
	if ($script:ADP -eq 1){
		Write-Allin -CustomMessage "Module `'Parametrage Active Directory`' choisi" -CustomBalise "Info"
	}
}

function Nmap_Command {
	Write-Allin -CustomMessage "$script:nmapCommand" -CustomBalise "Info"
}

function PREREQUIS {

	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
	$nugetProvider = Get-PackageProvider -Name NuGet -ErrorAction SilentlyContinue
	if (-not $nugetProvider) {
		Write-Allin -CustomMessage "Le fournisseur NuGet n'est pas installe, installation en cours..." -CustomBalise "Error"
		Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force -Scope CurrentUser -Confirm:$false
	} else {
		Write-Allin -CustomMessage "NuGet OK" -CustomBalise "Valid"
	}

	if ( -not (Test-Path -Path "C:\Program Files (x86)\Nmap")) {
		##### Pour NMAP, on vérifie son chemin d'installation par défaut
		Write-Allin -CustomMessage "Nmap non installe, lancement du programme d'installation..." -CustomBalise "Error"
		$NmapInstallerPath = "$((Get-Location).Path)\Nmap\Nmap-7.97-setup.exe"
		if (Test-Path $NmapInstallerPath) {
			Start-Process $NmapInstallerPath -Wait
			Write-Allin -CustomMessage "Nmap a bien ete installee" -CustomBalise "Valid" -CustomSpace " $Elbow$Line"
		} else {
			Write-Allin -CustomMessage "Fichier introuvable : $NmapInstallerPath" -CustomBalise "Error" -CustomSpace " $Elbow$Line"
		}
	} else {
		Write-Allin -CustomMessage "Nmap OK" -CustomBalise "Valid"
	}
	
	##### Si le get-Module ne retourne rien, alors PSWindowsUpdate n'est pas installé sans intéraction utilisateur #####
	if ( -not (Get-Module -ListAvailable -Name "PSWindowsUpdate")) {
		Write-Allin -CustomMessage "Module PSWIndowsUpdate non installe, installation en cours..." -CustomBalise "Error"
		Install-Module -Name "PSWindowsUpdate" -Force -Scope CurrentUser -Confirm:$false
		Write-Allin -CustomMessage "Installation de PSWIndowsUpdate effectuee" -CustomBalise "Valid" -CustomSpace " $Elbow$Line"
	} else {
		Write-Allin -CustomMessage "PSWIndowsUpdate module OK" -CustomBalise "Valid"
	}

	<#### Ne s'agissant pas d'un module, on ne peut pas utiliser Get-Module "Rsat..."
	Donc on vérifie directement avec un module de la fonctionnalité en question ####>
	if (Get-Command Get-ADUser -ErrorAction SilentlyContinue) {
		Write-Allin -CustomMessage "Fonctionnalite RSAT-AD OK" -CustomBalise "Valid"
	} else {
		Write-Allin -CustomMessage "Fonctionnalite RSAT-AD non installee, Installation en cours" -CustomBalise "Error"
		if ($IsAdmin) {
			$capabilityName = "Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0"
			$FoTSource = "$(pwd)\Miscs\FoT\LanguagesAndOptionalFeatures"
			Add-WindowsCapability -Online -Name $capabilityName -Source $FoTSource -LimitAccess > $null
			Write-Allin -CustomMessage "Installation de RSAT-AD effectuee" -CustomBalise "Valid" -CustomSpace " $Elbow$Line"
		} else {
			Write-Allin -CustomMessage "Droits Administrateurs requis pour verifier l'existence de la fonctionnalite RSAT AD" -CustomBalise "Error" -CustomSpace " $Elbow$Line"
		}
	}
}

<#### la fonction FONCTION servira d'affichage étape dans
la continuité du script pour délimiter les différents modules ####>
function FONCTION {
	param (
		[string]$Function_Name
	)

	$frameWidth = 39
	$textLength = $Function_Name.Length
	$padding = ($frameWidth - $textLength) / 2
	$leftPadding = " " * [math]::Floor($padding)
	$rightPadding = " " * [math]::Ceiling($padding)
	Write-Allin -CustomMessage "`n`n`n+---------------------------------------+"
	Write-Allin -CustomMessage "|$leftPadding$Function_Name$rightPadding|"
	Write-Allin -CustomMessage "+---------------------------------------+"
}

##### Les 6 prochaines fonctions marqueront une balise en début de ligne d'un résultat #####
##### Il pourra être positif, négatif, neutre ... etc #####
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

<#### La fonction Write-Both permet d'écrire à la fois dans l'invite de commande et à lafois dans le fichier de sauvegarde .txt
La fonction existe car il n'y avait pas (à ma connaissance) moyen de retranscrire facilement les résultats dans le fichier txt
Il a donc fallu faire une fonction sur mesure pour faire les deux à la fois en conservant l'affichage ####>
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

<#### Write-Both, nécessitant 3 lignes à chaque appel a été remaniée par Write-Allin 
qui fera directement appel à Write-Both en une seule ligne, et factorisera le script 
de manière considérable ####>
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

##### Cette fonction affichage la légende et l'explication courte des balises qui seront présentes tout au long du script #####
function Legend {
	FONCTION -Function_Name LEGENDE
	Write-Allin -CustomMessage ": Resultat Informatif" -CustomBalise "Info"
	Write-Allin -CustomMessage ": Resultat Positif" -CustomBalise "Valid"
	Write-Allin -CustomMessage ": Resulat Neutre/Moyen" -CustomBalise "Mitigate"
	Write-Allin -CustomMessage ": Mauvais Resultat" -CustomBalise "Unvalid"
	Write-Allin -CustomMessage ": Attention/Erreur" -CustomBalise "Error"
	Write-Allin -CustomMessage ": Information trouvee non classifiee" -CustomBalise "Neutral"
}

##### La fonction test-ping effectue un ping rapide vers une ip avec un court timeout pour accélerer le processus #####
##### Cela retournera si le ping a réussi ou non #####
function Test-Ping {
	param (
		[string]$Address,
		[int]$Timeout
	)
	$ping = Get-WmiObject -Query "SELECT * FROM Win32_PingStatus WHERE Address = '$Address' AND Timeout = $Timeout"
	return ($ping.StatusCode -eq 0)
}

##### À partir d'une ip, on résoudra le nom DNS de la machine qui a été ping#####
function Resolve-Hostname {
	param (
		[string]$Address
	)
	try {
		$HOSTNAME = [System.Net.Dns]::GetHostEntry("$TARGET_TO_PING").HostName
		return $HOSTNAME
	}
 catch {
		$HOSTNAME = "Inconnu"
		return $HOSTNAME
	}
}

function Ip_Scanner {
	param (
		[string]$Mode,
		[int]$LowerSubnet,
		[int]$HigherSubnet,
		[int]$LowerClassic,
		[int]$HigherClassic
	)
	
	##### l'IP SCANNER collecte l'adresse IPv4 de la machine, ainsi que son masque de sous-réseau et la passerelle par défaut,
	##### puis réalise un scan de port sur sa propre IP 
	
	$PC_IP = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.IPaddress -notlike "169.*" -and $_.InterfaceAlias -notlike "*Loopback" } | Select-Object -First 1 -ExpandProperty IPAddress)
	$PC_Prefix = Get-NetIPAddress | Where-Object { $_.IPaddress -eq $PC_IP } | Select-Object -ExpandProperty PrefixLength
	Write-Allin -CustomMessage "Adresse IP du poste client : $PC_IP/$PC_Prefix" -CustomBalise "Valid"
	$PC_Gateway = Get-NetRoute | Where-Object { $_.DestinationPrefix -eq "0.0.0.0/0" -and $_.NextHop -ne "::" } | Select-Object -ExpandProperty NextHop
	Write-Allin -CustomMessage "Passerelle par defaut : $PC_Gateway" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line"
	Write-Allin -CustomMessage "Scan de port sur la machine hote (Admin seulement) :" -CustomBalise "Info" -CustomSpace " $Elbow$Line"
	##### À condition d'être admin, on effectue un scan Nmap sur le localhost #####
	if ($IsAdmin) {
		$SimpleNmapCommand = $script:nmapCommand + " " + "$PC_IP"
		#IEX $SimpleNmapCommand 
		nmap $PC_IP| foreach-Object {
			if ($_ -ne $null -and $_.Trim() -ne "" -and $_ -notmatch "Nmap done|Starting Nmap|Nmap scan report|Host is up|Not shown") {
				Write-Allin -CustomMessage "$_" -CustomBalise "Neutral" -CustomSpace "    $TeeBar$Line"
			}
			elseif ($_ -ne $null -and $_.Trim() -ne "" -and $_ -match "Nmap done") {
				Write-Allin -CustomMessage "$_" -CustomBalise "Neutral" -CustomSpace "    $Elbow$Line"
			}
		}
	} else {
		##### Pour le restant du script, une condition sera vérifiée pour toute commande nécessitant des droits élevées #####
		##### Sinon, un message d'erreur personnalisé sera affiché à l'écran #####
		Write-Allin -CustomMessage "Droits Administrateurs requis pour lancer un NMAP" -CustomBalise "Error" -CustomSpace "    $Elbow$Line"
	}
	
	##### En fonction du mode choisi, l'IP SCANNER fera une découverte d'hôtes aux alentours à partir de l'ipv4 trouvée précédemment
	##### en conservant le 1er et 2nd bytes de l'adresse
	##### Chaque adresse trouvée (ping avec réponse) sera ensuite analysée par scan de port
	
	<#### Dans le script, il est possible de faire usage du 4è et 3è octet d'une adresse IP pour faire un scan "réseau" 
	plus ou moins approfondi. l'utilisation du 3è octet se fera en mode "subnet", déclaré dans les paramètres initiaux (début du script) ####>
	$PC_IP_PREFIX_3BYTES = ($PC_IP -split '\.')[0..2] -join '.'
	$PC_IP_PREFIX_2BYTES = ($PC_IP -split '\.')[0..1] -join '.'
	Write-Host "`n"
	Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"
	Write-Allin -CustomMessage "Mode de scan : $Mode" -CustomBalise "Info"

	##### Chaque IP scannées comme positive au ping dans la plage d'ip choisies sera mentionnée suivi de son nom DNS dans une variable #####
	if ($Mode -eq "Classic") {
		$results = @()
		$LowerClassic..$HigherClassic | ForEach-Object {
			$TARGET_TO_PING = "$PC_IP_PREFIX_3BYTES.$_"
			Write-Progress -Activity "Pinging Targets" -Status "Target reseau LAN : $TARGET_TO_PING"
			if (Test-Ping -Address $TARGET_TO_PING -Timeout 100) {
				$HOSTNAME = Resolve-Hostname -Address $TARGET_TO_PING
				$InLine = "$TARGET_TO_PING > $HOSTNAME"
				$results += $InLine
				$COUNT = $COUNT + 1
			}
		}
	}
 elseif ($Mode -eq "Subnet") { 
		$results = @()
		<#### En mode subnet, on fera d'abord un compte du délimiteur bas vers le délimiteur haut du 3ème octet,
		et de même pour le 4è. Si on définit 0-2 pour le 3ème octet et 1-10 pour le 3ème, cela donnera par exemple 
		192.168.0.1; 192.168.0.2; 192.168.0.3 jusqu'à 10; puis 192.168.1.1; 192.168.1.2 ... etc ####>
		$LowerSubnet..$HigherSubnet | ForEach-Object {
			$TARGET_TO_PING_3_BYTES = "$PC_IP_PREFIX_2BYTES.$_"
			$LowerClassic..$HigherClassic | ForEach-Object {
				$TARGET_TO_PING = "$TARGET_TO_PING_3_BYTES.$_"
				Write-Progress -Activity "Pinging Targets" -Status "Target en sous-reseau : $TARGET_TO_PING"
				if (Test-Ping -Address $TARGET_TO_PING -Timeout 100) {
					$HOSTNAME = Resolve-Hostname -Address $TARGET_TO_PING
					$PingedTarget += "$TARGET_TO_PING"
					$InLine = "$TARGET_TO_PING > $HOSTNAME"
					$results += $InLine
					$COUNT = $COUNT + 1
				}
			}
		}
	} 
	Write-Progress -Activity "Pinging Targets" -Status "Completed" -Completed
	Write-Allin -CustomMessage "Hote(s) actif(s) ($COUNT):" -CustomBalise "Info" -CustomSpace " $Elbow$Line"
	$results | ForEach-Object { 
		Write-Allin -CustomMessage "$_" -CustomBalise "Valid" -CustomSpace "    $TeeBar$Line"; 
		<#### Comme avant, si les droits sont acquis, on fera un Nmap PAR hôte découvert. 
		Le scan essaiera aussi de découvrir quel est l'os de la machine scannée ####>
		if ($IsAdmin) { 
			$TrueNmapCommand = $script:nmapCommand + " " + "$($_.Split('>')[0].Trim())"
			$NmapResult = IEX $TrueNmapCommand 
			for ($i = 0; $i -lt $NmapResult.Count; $i++) {
				$prefix = if ($i -eq $NmapResult.Count - 1) { "    $BarVert  $Elbow$Line" } else { "    $BarVert  $Teebar$Line" }
				if ($($NmapResult[$i]) -ne $null -and $($NmapResult[$i]).Trim() -ne ""){
					Write-Allin -CustomMessage  "$($NmapResult[$i])" -CustomBalise "Neutral" -CustomSpace "$prefix"
				}
			} 
		}
		else {
			Write-Allin -CustomMessage "Droits Administrateurs requis pour lancer un NMAP" -CustomBalise "Error" -CustomSpace "    $BarVert  $Elbow$Line"
		}
		write-Allin -CustomMessage "    $BarVert"
		#Write-Allin -CustomMessage "`n"
	}
	Write-Allin -CustomMessage "Nmap des hotes decouverts termine" -CustomBalise "Info" -CustomSpace "    $Elbow$Line"
}

function App_Inventory {
	##### APP INVENTORY affiche l'intégralité des applications existentes sur la machine de l'utilisateur,
	##### avec la version actuelle (non représentative car doit être vérifiée) et la date de la dernière MAJ
	
	Write-Allin -CustomMessage "Liste des applications & leur version : " -CustomBalise "Info"
	<#### On récupère ici, en provenance d'un chemin dans l'éditeur de registre : 
	le nom, la version, le fournisseur, et la date de la dernière mise à jour d'une application installée ####>
	if ($OrdreApplication -eq "Name"){
		$AppLists = Get-ItemProperty HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*, HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* |
		Where-Object { $_.DisplayName -and $_.DisplayName.Trim().Length -gt 0 } |
		Select-Object DisplayName, DisplayVersion, Publisher, InstallDate |
		Sort-Object DisplayName | 
		Format-Table -AutoSize |
		Out-String
	} elseif ($OrdreApplication -eq "InstallDate") {
		$AppLists = Get-ItemProperty HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*, HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* |
		Where-Object { $_.DisplayName -and $_.DisplayName.Trim().Length -gt 0 } |
		Select-Object DisplayName, DisplayVersion, Publisher, InstallDate |
		Sort-Object InstallDate | 
		Format-Table -AutoSize |
	Out-String
	}
	
	$AppLists | foreach-Object {
		$_ -split "`r?`n" | Foreach-Object {
			if ($_ -ne "" -and $_ -notmatch "DisplayName|----") {
				Write-Allin -CustomMessage "$_" -CustomBalise "Neutral" -CustomSpace " $Teebar$Line"
			}
			elseif ($_ -ne "" -and $_ -match "DisplayName") {
				Write-Allin -CustomMessage "$_" -CustomBalise "Info" -CustomSpace " $TeeBar$Line"
				Write-Allin -CustomMessage " $BarVert"
			}
		}
	}
	Write-Allin " $BarVert"
	Write-Allin -CustomMessage "Listing des applications du poste termine" -CustomBalise "Info" -CustomSpace " $Elbow$Line"
}

function Win_Update {
	
	##### WIN UPDATE affiche les paramètres configurés manuellement ou automatiquement de Windows UPDATE #####
	<#### Comme le résultat de la commande est en anglais, pour le bien de ceux qui le liront, une traduction est faite pour afficher 
	chaque ligne en anglais ####>
	Write-Allin -CustomMessage "Parametres de Windows Update : " -CustomBalise "Info"
	$WuSettings = Get-WUSettings
	$trad = @{
		"AutoDownload" = "Téléchargement automatique"
		"AcceptTrustedPublisherCerts" = "Accepter les certificats des editeurs approuves"
		"SetAutoRestartDeadline" = "Activer/Desactiver la date limite de redemarrage automatique"
		"AutoRestartDeadlinePeriodInDays" = "Delai de redemarrage automatique en jours"
		"ManagePreviewBuilds" = "Gerer l'acces aux versions de previsualisation"
		"ManagePreviewBuildsPolicyValue" = "Politique des versions de previsualisation"
		"DeferFeatureUpdates" = "Reporter les MAJs de fonctionnalites"
		"BranchReadinessLevel" = "Niveau de preparation a la branche"
		"DeferFeatureUpdatesPeriodInDays" = "Delai de report des MAJs de fonctionnalites en jours"
		"AllowAutoUpdate" = "Autoriser mise à jour auto"
		"PauseFeatureUpdatesStartTime" = "Date de debut de la pause des MAJs de fonctionnalite"
		"UpdateServiceUrlAlternate" = "ULR alternatif du service de MAJs"
		"SetProxyBehaviorForUpdateDetection" = "Comportement du proxy pour la detection des MAJs"
		"TargetGroupEnabled" = "Le ciblage du groupe est actif/inactif"
		"TargetGroup" = "Groupe cible"
		"NoAutoRebootWithLoggedOnUsers" = "Pas de redemarrage en cas d'utilisateurs connectes a une session"
		"NoAUShutdownOption" = "Masquer l'option 'Arreter' du menu des MAJs"
		"NoAUAsDefaultShutdownOption" = "Ne pas definir les MAJs comme un arret par defaut"
		"DetectionFrequencyEnabled" = "Activer/Desactiver la frequence de detection des MAJs"
		"DetectionFrequency" = "Frequence de detection en heures"
		"ScheduledInstallDay" = "Jour d'installation planifiee"
		"NotificationLevel" = "Niveau de notification"
		"WUServer" = "Serveur WSUS utilise"
		"ComputerName" = "Nom de l'ordinateur"
		"UseWUServer" = "Utiliser un serveur WSUS"
		"NoAutoUpdate" = "Activer/Desactiver les MAJs automatique"
		"AUOptions" = "Mode de mise a jour automatique"
		"WUStatusServer" = "Url statut du serveur"
		"ScheduledInstallTime" = "Heure d'installation planifiee"
		"ScheduledInstallEveryWeek" = "La planification hebdomadaire est active/inactive"
		"AllowMUUpdateService" = "Autoriser les MAJs via Microsoft Update"
	}

	foreach ($key in $WuSettings.PSObject.Properties.Name) {
		##### On recupere la valeur de chacune des sorties de la commande Get-WUSettings, et on verifie par sortie qu'il est possible de faire une traduction #####
		$valeur = $WuSettings.$key
		$libelle = if ($trad.ContainsKey($key)) { $trad[$key] } else { $key }
		Write-Allin -CustomMessage "$libelle : $valeur" -CustomBalise "Neutral" -CustomSpace " $Teebar$Line"
	}		

	Write-Allin " $BarVert"
	Write-Allin -CustomMessage "Listing des parametres Windows Update termine" -CustomBalise "Info" -CustomSpace " $Elbow$Line"
	Write-Allin -CustomMessage "`n"
	
	##### Et la fonction affiche aussi, si elles existent, les mises à jour en attentes, ou non téléchargées
	if ($IsAdmin) {
		Write-Allin -CustomMessage "Mises a jour en attentes : " -CustomBalise "Info"
		$WUList = Get-WUList -ErrorAction Ignore
		if ($WUList) {
			Foreach ($update in $WUList) {
				$pc = $update.ComputerName
				$title = $update.Title
				$kb = $update.KB
				$size = $update.Size
				if ($kb -ne "") {
					$WU = "$pc > $title - $kb > Taille : $size"
				} else {
					$WU = "$pc > $title > Taille : $size"
				}
				if ($_ -ne "") {
					if ($WU -match "Microsoft|Antivirus|Windows|Defender|Security") {
						Write-Allin -CustomMessage "$WU" -CustomBalise "Unvalid" -CustomSpace " $TeeBar$Line"

					} else {
						Write-Allin -CustomMessage "$WU" -CustomBalise "Mitigate" -CustomSpace " $TeeBar$Line"
					}
				}
			}
			if ($script:AutoMaj -eq $true){
				Write-Allin " $BarVert"
				Write-Allin -CustomMessage "Installation des mises a jour en cours..." -CustomBalise "Info" -CustomSpace " $Elbow$Line"
				$null = Get-WindowsUpdate -Install
				Write-Allin -CustomMessage "Installation terminee" -CustomBalise "Valid" -CustomSpace "    $Elbow$Line"
			} else {
				Write-Allin " $BarVert"
				Write-Allin -CustomMessage "Listing des MAJs Windows Update termine" -CustomBalise "Info" -CustomSpace " $Elbow$Line"
				Write-Allin -CustomMessage "`n"
			}
		} else {
			Write-Allin -CustomMessage "Pas de MAJs en attentes" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line"
		}
	} else {
		Write-Allin -CustomMessage "Droits Administrateurs requis pour afficher les mises a jour en attentes" -CustomBalise "Error"
	} 
}

function Users_Listing {
	<#### Dans un premier temps, on récupère tous les comptes locaux ainsi que les droupes dans lesquels ils sont placés
	On vérifiera si un utilisateur classique fait parti d'un groupe administrateur sans raison ####>
	$query = "SELECT * FROM Win32_ComputerSystem"
	$SESSION_CURRENT_USER = (Get-WmiObject -Query $query).UserName
	$PWSH_CURRENT_USER = $env:USERNAME
	Write-Allin "Utilisateur actuel de la session : $SESSION_CURRENT_USER" -CustomBalise "Valid"
	Write-Allin "Utilisateur actuel de l'invite powershell : $PWSH_CURRENT_USER`n" -CustomBalise "Valid"
	Write-Allin -CustomMessage "Listing des comptes locaux (Get-LocalUser) et de leur(s) groupe(s) d'appartenance :" -CustomBalise "Info"
	$local_users = Get-LocalUser
	for ($i = 0; $i -lt $local_users.Count; $i++) {
		$user = $local_users[$i]
		$prefix = if ($i -eq $local_users.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
		Write-Allin -CustomMessage "$($local_users[$i])" -CustomBalise "Neutral" -CustomSpace " $prefix"
		$userGroups = @()

		##### On récupère les groupes lié au compte local souhaité
		foreach ($group in Get-LocalGroup) {
			$members = Get-LocalGroupMember -Group $group.name -ErrorAction SilentlyContinue
			foreach ($member in $members) {
				if ($member.Name -eq "$env:COMPUTERNAME\$($user.Name)") {
					$userGroups += $group.Name
				}
			}
		}
		for ($j = 0; $j -lt $userGroups.Count; $j++) {
			$prefix = if ($j -eq $userGroups.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			$vertDisplay = if ($i -eq $($local_users.Count) - 1) { " " } else { "$BarVert" }
			if ($($user.Name) -match "admin|root" -and $($userGroups[$j]) -match "admin|root|protected") {
				Write-Allin -CustomMessage "$($userGroups[$j])" -CustomBalise "Mitigate" -CustomSpace " $vertDisplay  $prefix"
			} elseif ($($userGroups[$j]) -match "admin|root|protected") {
				Write-Allin -CustomMessage "$($userGroups[$j])" -CustomBalise "Unvalid" -CustomSpace " $vertDisplay  $prefix"
			} else {
				Write-Allin -CustomMessage "$($userGroups[$j])" -CustomBalise "Neutral" -CustomSpace " $vertDisplay  $prefix"
			}
		}
		$Chariot = if ($i -eq $(($local_users.Count) - 1)) { "" } else { "$BarVert" }
		Write-Allin -CustomMessage " $Chariot"
	}
	
	<#### De même ici, on récupère les profiles utilisateurs existants dans "C:\Users\$User"
	(qui seront soit déjà un compte local doublon, soit un compte active directory) ####>
	$USER_PROFILE = Get-ChildItem "C:\Users" -Directory | 
	Where-Object { $_.Name -notin @("Public", "Default", "Default User", "All Users") } | 
	Select-Object -ExpandProperty Name
	Write-Host "`n"
	Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"
	Write-Allin -CustomMessage "Listing des profils utilisateurs (C:\Users\*) et de leur(s) groupe(s) d'appartenance :" -CustomBalise "Info"
	if (Get-Command Get-ADUser -ErrorAction SilentlyContinue -WarningAction SilentlyContinue) {
		for ($i = 0; $i -lt $USER_PROFILE.Count; $i++) {
			if (Get-ADUser -Identity $($USER_PROFILE[$i])) {
				$LastLogonValue = Get-Aduser -Identity $($USER_PROFILE[$i]) -Properties LastLogon -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
				$LastLogon = [datetime]::FromFileTime($LastLogonValue.lastLogon)
				$prefix = if ($i -eq $USER_PROFILE.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
				Write-Allin -CustomMessage "Profil : $($USER_PROFILE[$i]) - Derniere connexion : $LastLogon" -CustomBalise "Info" -CustomSpace " $prefix"
				$MemberOfList = Get-ADUser $($USER_PROFILE[$i]) -Properties memberof -ErrorAction SilentlyContinue -WarningAction SilentlyContinue | Select-Object -ExpandProperty memberof
				for ($j = 0; $j -lt $MemberOfList.Count; $j++) {
					$prefix = if ($j -eq $MemberOfList.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
					$vertDisplay = if ($i -eq $USER_PROFILE.Count - 1) { " " } else { "$BarVert" }
					$Chariot = if ($i -eq $USER_PROFILE.Count - 1) { "" } else { "$BarVert" }
					if ($($USER_PROFILE[$i]) -match "admin|root" -and $($MemberOfList[$j]) -match "admin|root|protected") {
						Write-Allin -CustomMessage "$($MemberOfList[$j])" -CustomBalise "Mitigate" -CustomSpace " $vertDisplay  $prefix"
					} elseif ($($MemberOfList[$j]) -match "admin|root|protected") {
						Write-Allin -CustomMessage "$($MemberOfList[$j])" -CustomBalise "Unvalid" -CustomSpace " $vertDisplay  $prefix"
					} else {
						Write-Allin -CustomMessage "$($MemberOfList[$j])" -CustomBalise "Neutral" -CustomSpace " $vertDisplay  $prefix"
					}
				}
			} else {
				$prefix = if ($i -eq $USER_PROFILE.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
				Write-Allin -CustomMessage "Pas de compte AD existant pour $($USER_PROFILE[$i])" -CustomBalise "Neutral" -CustomSpace " $prefix"
			}
		
			Write-Allin -CustomMessage " $Chariot"
		}
	} else {
		Write-Allin -CustomMessage "La fonctionnalite RSAT n'est pas installe" -CustomBalise "Error" -CustomSpace " $Elbow$Line"
	}
}

##### Fonction qui vérifie les paramètres de sécurité et de bon fonctionnement du poste #####
function Intern_Security_Check {
	##### le nom, la version de l'OS (classique et avancé), et la version du build collectés et affichés
	$ComputerName = $env:COMPUTERNAME
	$OS = Get-CimInstance Win32_OperatingSystem
	$DisplayVersion = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").DisplayVersion
	$reg = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion"
	$FullBuild = "$($reg.CurrentBuildNumber).$($reg.UBR)"
	Write-Allin -CustomMessage "Nom de la machine $ComputerName" -CustomBalise "Info" -CustomSpace ""
	Write-Allin -CustomMessage "Nom de l'OS : $($OS.Caption)" -CustomBalise "Info" -CustomSpace " $Elbow$Line"
	write-Allin -CustomMessage "Version de l'OS : $DisplayVersion" -CustomBalise "Info" -CustomSpace "    $Teebar$Line"
	write-Allin -CustomMessage "Version detaillee de l'OS : $($OS.Version)" -CustomBalise "Info" -CustomSpace "    $TeeBar$Line"
	write-Allin -CustomMessage "Version du build : $FullBuild" -CustomBalise "Info" -CustomSpace "    $Elbow$Line"
	Write-Host "`n"
	Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"
	Write-Allin -CustomMessage "Configuration des parametres de securite :" -CustomBalise "Info"
	Write-Allin -CustomMessage "Configuration de l'isolation du noyau : " -CustomBalise "Info" -CustomSpace " $TeeBar$Line"

	##### Vérification de l'état de l'intégrité de la mémoire (paramètre isolation du noyau)
	$IntegrityRegPath = "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity"
	$IntegrityValue = Get-ItemProperty -Path $IntegrityRegPath -Name Enabled -ErrorAction SilentlyContinue -WarningAction SilentlyContinue | Select-Object -ExpandProperty Enabled
	switch ($IntegrityValue) {
		"1" { Write-Allin -CustomMessage "L'integrite de la memoire est active" -CustomBalise "Valid" -CustomSpace " $BarVert  $TeeBar$Line" }
		"0" { Write-Allin -CustomMessage "L'integrite de la memoire est inactive" -CustomBalise $UnvalidBalise -CustomSpace " $BarVert  $TeeBar$Line" }
		default { Write-Allin -CustomMessage "Cle de registre inconnu/non-existente. Le parametre Integrite de la memoire est donc probablement desactive" -CustomBalise $MitigateBalise -CustomSpace " $BarVert  $TeeBar$Line" }
	}

	##### Vérification de l'existence d'un CredGuard en place (paramètre d'isolation du noyau)
	$CredGuardRegPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
	$CredGuardValue = Get-ItemProperty -Path $CredGuardRegPath -Name LsaCfgFlags -ErrorAction SilentlyContinue -WarningAction SilentlyContinue | Select-Object -ExpandProperty LsaCfgFlags
	switch ($CredGuardValue) {
		"1" { Write-Allin -CustomMessage "Le credential guard est actif (mode manuel)" -CustomBalise "Valid" -CustomSpace " $BarVert  $TeeBar$Line" }
		"2" { Write-Allin -CustomMessage "Le credential guard est actif (mode auto)" -CustomBalise "Valid" -CustomSpace " $BarVert  $TeeBar$Line" }
		"0" { Write-Allin -CustomMessage "Le credential guard est inactif" -CustomBalise "Unvalid" -CustomSpace " $BarVert  $TeeBar$Line" }
		"" { Write-Allin -CustomMessage "Cle de registre inconnu/non-existente. Le parametre Credential Guard est donc probablement desactive" -CustomBalise "Mitigate" -CustomSpace " $BarVert  $TeeBar$Line" }
		default { Write-Allin -CustomMessage "Cle de registre inconnu/non-existente. Le parametre Credential Guard est donc probablement desactive" -CustomBalise "Mitigate" -CustomSpace " $BarVert  $TeeBar$Line" }
	}

	##### Vérification de l'état de la protection de l'autorité de sécurité (paramètre d'isolation du noyau)
	$RunAsPPLPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
	$RunAsPplValue = Get-ItemProperty -Path $RunAsPPLPath -Name RunAsPPL -ErrorAction Stop | Select-Object -ExpandProperty RunAsPPL
	switch ($RunAsPplValue) {
		"1" { Write-Allin -CustomMessage "La Protection de l'autorite de securite locale est active" -CustomBalise "Valid" -CustomSpace " $BarVert  $Elbow$Line" }
		"0" { Write-Allin -CustomMessage "La Protection de l'autorite de securite locale est inactive" -CustomBalise "Unvalid" -CustomSpace " $BarVert  $Elbow$Line" }
		"" { Write-Allin "Cle de registre inconnu/non-existente. Le parametre Protection de l'autorite de securite locale est donc probablement desactive" -CustomBalise "Mitigate" -CustomSpace " $BarVert  $Elbow$Line" }
		default { Write-Allin "Cle de registre inconnu/non-existente. Le parametre Protection de l'autorite de securite locale est donc probablement desactive" -CustomBalise "Mitigate" -CustomSpace " $BarVert  $Elbow$Line" }
	}
	
	##### Vérification de l'état de la puce TPM
	if ($IsAdmin) {
		$tpm = Get-WmiObject -Namespace "root\CIMv2\Security\MicrosoftTpm" -Class Win32_Tpm 
		if ($tpm.IsActivated_InitialValue -eq $true) {
			Write-Allin -CustomMessage "Le processeur de securite (TPM) est actif" SaveName-CustomBalise "Valid" -CustomSpace " $TeeBar$Line"
		} else {
			Write-Allin -CustomMessage "Le processeur de securite (TPM) est inactif" -CustomBalise "Unvalid" -CustomSpace " $TeeBar$Line"
		}
	} else {
		Write-Allin -CustomMessage "Droits Administrateurs requis pour afficher l'etat du TPM" -CustomBalise "Error" -CustomSpace " $TeeBar$Line"
	}
	
	##### Vérification de l'état du Secure Boot
	if ($IsAdmin) {
		$secureBoot = Confirm-SecureBootUEFI -ErrorAction SilentlyContinue
		if ($secureBoot) {
			Write-Allin -CustomMessage "Le demarrage securise (SecureBoot) est actif" -CustomBalise "Valid" -CustomSpace " $Elbow$Line"
		}
		else {
			Write-Allin -CustomMessage "Le demarrage securise (SecureBoot) est inactif" -CustomBalise "Unvalid" -CustomSpace " $Elbow$Line"
		}
	} else {
		Write-Allin -CustomMessage "Droits Administrateurs requis pour afficher l'etat du SecureBoot" -CustomBalise "Error" -CustomSpace " $Elbow$Line"
	}

	Write-Host "`n"
	Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"

	$USBVerrou = Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\USBSTOR" -Name "Start" | Select-Object -ExpandProperty "Start"
	if ($USBVerrou -eq 3) {
		Write-Allin -CustomMessage "Les peripheriques USBs sont autorises" -CustomBalise "Mitigate" 
	} elseif ($USBVerrou -eq 4) {
		Write-Allin -CustomMessage "Les peripheriques USBs ne sont pas autorises" -CustomBalise "Valid"
	}

	Write-Host "`n"
	Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"
	
	Write-Allin -CustomMessage "Configuration des disques :" -CustomBalise "Info"
	if ($IsAdmin) {
		<#### On regarde chaque lettre de volume existente, et pour chacune, on regardera si BitLocker est actif ou non
		et quels sont les niveaux de stockage actif de chaque volume ####>
		$BitLockerVolumes = Get-BitLockerVolume
		for ($i = 0; $i -lt $BitLockerVolumes.Count; $i++) {
			$Volume = $BitLockerVolumes[$i]
			$Letter = $Volume.MountPoint
			$JustLetter = $Letter.TrimEnd(":")
			if ($i -eq $BitLockerVolumes.Count - 1){
				switch ($Volume.ProtectionStatus) {
					"On" { $BitLockerStatus = "BitLocker actif"; Write-Allin -CustomMessage "$BitLockerStatus sur le volume $Letter" -CustomBalise "Valid" -CustomSpace " $Elbow$Line" }
					"Off" { $BitLockerStatus = "BitLocker inactif"; Write-Allin -CustomMessage "$BitLockerStatus sur le volume $Letter" -CustomBalise "Unvalid" -CustomSpace " $Elbow$Line" }
				}
			} else {
				switch ($Volume.ProtectionStatus) {
					"On" { $BitLockerStatus = "BitLocker actif"; Write-Allin -CustomMessage "$BitLockerStatus sur le volume $Letter" -CustomBalise "Valid" -CustomSpace " $Teebar$Line" }
					"Off" { $BitLockerStatus = "BitLocker inactif"; Write-Allin -CustomMessage "$BitLockerStatus sur le volume $Letter" -CustomBalise "Unvalid" -CustomSpace " $Elbow$Line" }
				}
			}
			
			$UsedSpace = Get-PSDrive -PSProvider 'FileSystem' | Where-Object { $_.Name -eq $JustLetter } | Select-Object -ExpandProperty Used
			$GbUsedSpace = [math]::Round(($UsedSpace / 1000000000), 1)
			$FreeSpace = Get-PSDrive -PSProvider 'FileSystem' | Where-Object { $_.Name -eq $JustLetter } | Select-Object -ExpandProperty Free
			$GbFreeSpace = [math]::Round(($FreeSpace / 1000000000), 1)
			$TotalSpace = $GbUsedSpace + $GbFreeSpace
			$UsedPercent = [math]::Round((($GbUsedSpace / $TotalSpace) * 100), 1)
			if ($i -eq $BitLockerVolumes.Count - 1){
				switch ($UsedPercent) {
					{ $_ -lt 50 } { Write-Allin "Taille du stockage utilise : $GbUsedSpace/$TotalSpace GB ($UsedPercent %)" -CustomBalise "Valid" -CustomSpace "    $Elbow$Line" }
					{ $_ -gt 50 -and $_ -lt 85 } { Write-Allin -CustomMessage "Taille du stockage utilise : $GbUsedSpace/$TotalSpace GB ($UsedPercent %)" -CustomBalise "Mitigate" -CustomSpace "    $Elbow$Line" }
					{ $_ -gt 85 } { Write-Allin -CustomMessage "Taille du stockage utilise : $GbUsedSpace/$TotalSpace GB ($UsedPercent %)" -CustomBalise "Unvalid" -CustomSpace "    $Elbow$Line" }
				}
			} else {
				switch ($UsedPercent) {
					{ $_ -lt 50 } { Write-Allin "Taille du stockage utilise : $GbUsedSpace/$TotalSpace GB ($UsedPercent %)" -CustomBalise "Valid" -CustomSpace " $BarVert  $Elbow$Line" }
					{ $_ -gt 50 -and $_ -lt 85 } { Write-Allin -CustomMessage "Taille du stockage utilise : $GbUsedSpace/$TotalSpace GB ($UsedPercent %)" -CustomBalise "Mitigate" -CustomSpace " $BarVert  $Elbow$Line" }
					{ $_ -gt 85 } { Write-Allin -CustomMessage "Taille du stockage utilise : $GbUsedSpace/$TotalSpace GB ($UsedPercent %)" -CustomBalise "Unvalid" -CustomSpace " $BarVert  $Elbow$Line" }
				}
			}
		}
	} else {
		Write-Allin -CustomMessage "Droits Administrateurs requis pour afficher l'etat de BitLocker" -CustomBalise "Error" -CustomSpace " $Elbow$Line"
	}
	Write-Host "`n"
	Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"

	##### On regarde le modèle du processeur, et s'il n'est pas en sur-utilisation
	Write-Allin -CustomMessage "Etat du processeur :" -CustomBalise "Info"
	$CpuName = Get-CimInstance -ClassName Win32_Processor | Select-Object -ExpandProperty Name
	Write-Allin -CustomMessage "Modele du processeur : $CpuName" -CustomBalise "Info" -CustomSpace " $TeeBar$Line"
	$i = 1..5 | foreach-Object {
		$CpuPercentageUsed = Get-CimInstance -ClassName Win32_Processor | Select-Object -ExpandProperty LoadPercentage
		$total += $CpuPercentageUsed
		if ($_ -eq 5) {
			$MoyCpuPercentUsed = $total / $_
		}
	}
	switch ($MoyCpuPercentUsed) {
		{ $_ -lt 50 } { Write-Allin "Pourcentage de CPU utilise en moyenne : $MoyCpuPercentUsed %" -CustomBalise "Valid" -CustomSpace " $Elbow$Line" }
		{ $_ -gt 50 -and $_ -lt 80 } { Write-Allin "Pourcentage de CPU utilise en moyenne : $MoyCpuPercentUsed %" -CustomBalise "Mitigate" -CustomSpace " $Elbow$Line" }
		{ $_ -gt 80 } { Write-Allin -CustomMessage "Pourcentage de CPU utilise en moyenne : $MoyCpuPercentUsed %" -CustomBalise "Unvalid" -CustomSpace " $Elbow$Line" }
	}

	Write-Host "`n"
	Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"
	
	Write-Allin -CustomMessage "Etat de la memoire RAM :" -CustomBalise "Info"
	##### Récupération de la vitesse, du format et du constructeur de la RAM #####
	<#### Le [0] dans $RamSpeed = (Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object -ExpandProperty Speed)[0] 
	garantie de récupérer la valeur d'UNE barette, car on admet que toutes les barettes sont et doivent être identiques ####>
	$RamSpeed = (Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object -ExpandProperty Speed)[0]
	$RamFormFactor = Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object -ExpandProperty FormFactor
	$RamManufacturer = (Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object -ExpandProperty Manufacturer)
	##### Le numéro constructeur se récupère sous la forme d'un code héxadécimal, qu'on peut traduire en nom de marque à l'aide de recherche internet ##### 
	switch ("$RamManufacturer") {
		"80AD000080AD" { $RamManufacturer = "Micron" }
		"2C0000002C00" { $RamManufacturer = "Micron" }
		"AD000000AD00" { $RamManufacturer = "Hynix" }
		"4F0000004F00" { $RamManufacturer = "Transcend" }
		"7F7F7F7F7F7F" { $RamManufacturer = "Generic" }
		"80CE000080CE" { $RamManufacturer = "Dell T40" }
		"980000009800" { $RamManufacturer = "Kingston" }
		"CE000000CE00" { $RamManufacturer = "Samsung" }
		"020000000200" { $RamManufacturer = "Corsair" }
		"1C0000001C00" { $RamManufacturer = "Crucial" }
		"ADBA0000ADBA" { $RamManufacturer = "SK Hynix" }
		"7F9D00007F9D" { $RamManufacturer = "G.Skill" }
		default { $RamManufacturer = ($RamManufacturer -split '\s+')[0] }
	}
	
	if ($RamFormFactor -eq 8) {
		$dimm = "DIMM"
	}
 else {
		$dimm = "SODIMM"
	}

	Write-Allin -CustomMessage "Constructeur : $RamManufacturer - $RamSpeed MHz - Format $dimm" -CustomBalise "Info" -CustomSpace " $TeeBar$Line"
	
	##### On récupère ici les données concernant la ram utilisée et totale exprimée en Ko. On convertit ensuite en Go ##### 
	##### On fabrique un pourcentage d'utilisation et affiche le résultat avec le nom du constructeur, sa vitesse, et les calculs fait #####
	$RamFree = Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -ExpandProperty FreePhysicalMemory
	$RamTotal = Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -ExpandProperty TotalVisibleMemorySize
	$RamUsed = $RamTotal - $RamFree
	$RoundRamUsed = [math]::Round($RamUsed / 1000000, 1)
	$RoundRamTotal = [math]::Round($RamTotal / 1000000, 1)
	$PercentUsed = [math]::Round((($RoundRamUsed / $RoundRamTotal) * 100), 1)	
	if ($($RoundRamUsed / $RoundRamTotal) -lt 0.5) {
		Write-Allin -CustomMessage "Memoire utilisee : $RoundRamUsed/$RoundRamTotal GB ($PercentUsed %)" -CustomBalise "Valid" -CustomSpace " $Elbow$Line"
	} elseif ($($RoundRamUsed / $RoundRamTotal) -gt 0.5 -and $($RoundRamUsed / $RoundRamTotal) -lt 0.8) {
		Write-Allin -CustomMessage "Memoire utilisee : $RoundRamUsed/$RoundRamTotal GB ($PercentUsed %)" -CustomBalise "Mitigate" -CustomSpace " $Elbow$Line"
	} else {
		Write-Allin -CustomMessage "Memoire utilisee : $RoundRamUsed/$RoundRamTotal GB ($PercentUsed %)" -CustomBalise "Unvalid" -CustomSpace " $Elbow$Line"
	}
	Write-Host "`n"
	Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"
	
	Write-Allin -CustomMessage "Configuration du pare feu local :" -CustomBalise "Info"
	##### Les commandes suivantes listeront et vérifieront si les 3 profils de pare-feux locaux (Domaine, Privé, Public) sont actif ou non #####
	$FirewallProfiles = Get-NetFirewallProfile | Select-Object -ExpandProperty Name
	$i = 0
	foreach ($Profile in $FirewallProfiles) {
		$i += 1
		$IsFirewallEnabled = Get-NetFirewallProfile -Name $Profile | Select-Object -ExpandProperty Enabled 
		##### Le $i servira juste à l'affichage correct des résultats ##### 
		if ($i -eq 4) {
			if ($IsFirewallEnabled -eq $true) {
				Write-Allin -CustomMessage "Le pare-feu du profil $Profile est actif" -CustomBalise "Valid" -CustomSpace " $Elbow$Line"
			} else {
				Write-Allin -CustomMessage "Le pare-feu du profil $Profile est inactif" -CustomBalise "Unvalid" -CustomSpace " $Elbow$Line"
			}
		} else {
			if ($IsFirewallEnabled -eq $true) {
				Write-Allin -CustomMessage "Le pare-feu du profil $Profile est actif" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line"
			} else {
				Write-Allin -CustomMessage "Le pare-feu du profil $Profile est inactif" -CustomBalise "Unvalid" -CustomSpace " $TeeBar$Line"
			}
		}
	}
	$UserCreatedRules = Get-NetFirewallRule | Where-Object { $_.Group -like ""} | Select-Object DisplayName, Enabled, Profile, Direction, Action, Description | Format-Table | Out-String
	Write-Allin -CustomMessage "Liste des regles de pare-feux probablement creees par des utilisateurs : " -CustomBalise "Info" -CustomSpace " $Elbow$Line"
	$UserCreatedRules -split "`n" | foreach-Object {
		if ($_ -ne $null -and $_.Trim() -ne "" -and $_ -notmatch "Display|----") {
			Write-Allin -CustomMessage "$_" -CustomBalise "Neutral" -CustomSpace "    $Teebar$Line"
		} elseif ($_ -ne $null -and $_.Trim() -ne "") {
			Write-Allin -CustomMessage "$_" -CustomBalise "Info" -CustomSpace "    $Teebar$Line"
		}
	}
	Write-Allin -CustomMessage "    $BarVert"
	Write-Allin -CustomMessage "Fin du listing des regles" -CustomBalise "Info" -CustomSpace "    $Elbow$Line"
	Write-Host "`n"
	Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"

	Write-Allin -CustomMessage "Politiques de mot de passe :" -CustomBalise "Info"
	##### Ici, on retrouvera un résultat brute des paramètres lié aux critères d'identification d'un utilisateur #####
	net accounts | foreach-Object {
		if ($_ -inotmatch "ordi") {
			if ($_ -ne $null -and $_.Trim() -ne "" -and $_ -notmatch "La commande") {
				Write-Allin -CustomMessage "$_" -CustomBalise "Neutral" -CustomSpace " $TeeBar$Line"
			}
		}
		else {
			if ($_ -ne $null -and $_.Trim() -ne "" -and $_ -notmatch "La commande") {
				Write-Allin -CustomMessage "$_" -CustomBalise "Neutral" -CustomSpace " $Elbow$Line"
			}
		}
	}
	Write-Host "`n"
	Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"
	##### Liste les antivirus installés sur l'appareil et vérifie leur état de fonctionnement #####
	$AVList = Get-CimInstance -Namespace "root/SecurityCenter2" -ClassName "AntivirusProduct"
	foreach ($AV in $AVList) {
		if ($($AV.displayName) -eq "Windows Defender") {
			##### S'il s'agit de Windows Defender, alors le cmdlet Get-MpComputerStatus nous retournera son activité #####
			$WDStatus = Get-MpComputerStatus | Select-Object -ExpandProperty RealTimeProtectionEnabled
			if ($WDStatus -eq "True") {  
				Write-Allin -CustomMessage "$($AV.displayName) est $IsActif" -CustomBalise "Valid"
			}
			else {  
				Write-Allin -CustomMessage "$($AV.displayName) est $IsInactif" -CustomBalise "Unvalid"
			}
		}
		##### Dans l'autre cas, on récupère le nom de l'antivirus et vérifie son état directement puis le paramètre productState (à tester) #####
		else {
			$state = [convert]::ToString($AV.productState, 2).PadLeft(24, '0')
			$IsAvEnabled = $state.Substring(21, 1) -eq '1'
			if ($IsAvEnabled) { 
				$AVStatus = "Actif" 
				Write-Allin -CustomMessage "$($AV.displayName) est $AVStatus" -CustomBalise "Valid"
			}
			else { 
				$AVStatus = "Inactif" 
				Write-Allin -CustomMessage "$($AV.displayName) est $AVStatus" -CustomBalise "Unvalid"
			}
		}
	} 
	
	Write-Host "`n"
	Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"
}

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
			$CopePath = @(Get-ChildItem -Path $SearchPath -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notmatch "appdata|.vscode" } | Where-Object { foreach ($word in $LookingFor) { if ($_.Name -match $word -and $_.Name -notmatch "credit|MDPH|passeport|compteur|passage|compte-rendu|comptes-rendus|compte rendu|comptes rendus|acompte|decompte") { return $true } } } | Select-Object -ExpandProperty FullName)
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
		$CopePath = @(Get-ChildItem -Path $SearchPath -Recurse -Force -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notmatch "appdata|.vscode" } | Where-Object { foreach ($word in $LookingFor) { if ($_.Name -match $word -and $_.Name -notmatch "credit|MDPH|passeport|compteur|passage|compte-rendu|comptes-rendus|compte rendu|comptes rendus|acompte|decompte") { return $true } } } | Select-Object -ExpandProperty FullName)
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

function Active_Directory {
	if (Get-ADDomain -WarningAction SilentlyContinue -ErrorAction SilentlyContinue) {
		$DomaineName = (Get-ADDomain).DNSRoot 
		Write-Allin -CustomMessage "Nom du domaine : $DomaineName" -CustomBalise "Info"

		Write-Host "`n"
		Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"

		Write-Allin -CustomMessage "Listing des mauvais parametres de configuration lies aux utilisateurs" -CustomBalise "Info"

		$DisabledAccount= Get-ADUser -Filter { Enabled -eq $false } | Select-Object -ExpandProperty SamAccountName
		$DisabledAccountCount = $DisabledAccount.Count
		switch ($DisabledAccountCount) {
			"0" { Write-Allin -CustomMessage "Aucun compte desactive" -CustomBalise "Valid" -CustomSpace " $Teebar$Line"  }
			Default { Write-Allin -CustomMessage "Il y a $DisabledAccountCount compte(s) desactive(s)" -CustomBalise "Info" -CustomSpace " $Teebar$Line" }
		}
		
		for ($i = 0; $i -lt $DisabledAccount.Count; $i++) {
			if ($($DisabledAccount[$i]) -eq "") {
				$DisabledAccount = Get-ADUser -Filter {Enabled -eq $false} | Select-Object -ExpandProperty Name
			}
			$prefix = if ($i -eq $DisabledAccount.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $DisabledAccount.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($DisabledAccount[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($DisabledAccount[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
			
		}
		Write-Allin " $BarVert"

		$PwdNeverExpire = Get-ADUser -Filter * -Properties PasswordNeverExpires | Where-Object { $_.PasswordNeverExpires -eq $true } | Select-Object -ExpandProperty SamAccountName
		$PwdNeverExpireCount = $PwdNeverExpire.Count
		switch ($PwdNeverExpireCount) {
			"0" { Write-Allin -CustomMessage "Aucun compte ne possède un mot de passe qui n'expire jamais" -CustomBalise "Valid" -CustomSpace " $Teebar$Line" }
			Default { Write-Allin -CustomMessage "Il y a $PwdNeverExpireCount compte(s) dont le mot de passe n'expire jamais" -CustomBalise "Mitigate" -CustomSpace " $Teebar$Line" }
		}
		for ($i = 0; $i -lt $PwdNeverExpire.Count; $i++) {
			$prefix = if ($i -eq $PwdNeverExpire.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $PwdNeverExpire.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($PwdNeverExpire[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($PwdNeverExpire[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
		}
		Write-Allin " $BarVert"

		$TrustedDelegation = Get-ADUser -Filter * -Properties TrustedForDelegation | Where-Object { $_.TrustedForDelegation -eq $true }
		$TrustedDelegationCount = $TrustedDelegation.Count
		switch ($TrustedDelegationCount) {
			"0" { Write-Allin -CustomMessage "Aucun compte ne possede de delegation de droits" -CustomBalise "Valid" -CustomSpace " $Teebar$Line"  }
			Default { Write-Allin -CustomMessage "Il y a $TrustedDelegationCount compte(s) qui possede(nt) une delegation de droits" -CustomBalise "Unvalid" -CustomSpace " $Teebar$Line" }
		}
		for ($i = 0; $i -lt $TrustedDelegation.Count; $i++) {
			$prefix = if ($i -eq $TrustedDelegation.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $TrustedDelegation.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($TrustedDelegation[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($TrustedDelegation[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
		}
		Write-Allin " $BarVert"

		$InactiveUsers = Get-ADUser -Filter * -Properties LastLogonDate | Where-Object { $_.LastLogonDate -lt (Get-Date).AddDays(-365) } | Select-Object -ExpandProperty SamAccountName
		$InactiveUsersCount = $InactiveUsers.Count
		switch ($InactiveUsersCount) {
			"0" { Write-Allin -CustomMessage "Aucun compte est inactif depuis plus d'un an" -CustomBalise "Valid" -CustomSpace " $Teebar$Line" }
			Default { Write-Allin -CustomMessage "Il y a $InactiveUsersCount compte(s) dont le compte est inactif depuis plus d'un an" -CustomBalise "Mitigate" -CustomSpace " $Teebar$Line" }
		}
		for ($i = 0; $i -lt $InactiveUsers.Count; $i++) {
			$prefix = if ($i -eq $InactiveUsers.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $InactiveUsers.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($InactiveUsers[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($InactiveUsers[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
		}
		Write-Allin " $BarVert"

		$DomaineAdmin = Get-ADGroupMember "Admins du domaine" | Select-Object -ExpandProperty SamAccountName
		$ProtectedUsers = Get-ADGroupMember "Protected users" | Select-Object -ExpandProperty SamAccountName
		$DomainAdminNotProtected = $DomaineAdmin | Where-Object { $ProtectedUsers -notcontains $_ }
		$DomainAdminNotProtectedCount = $DomainAdminNotProtected.Count
		switch ($DomainAdminNotProtectedCount) {
			"0" { Write-Allin -CustomMessage "Aucun compte admin du domaine ne fait pas parti des `'Protected Users`'" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line" }
			Default { Write-Allin -CustomMessage "Il y a $DomainAdminNotProtectedCount compte(s) admin du domaine ne faisant pas parti des `'Protected Users`'" -CustomBalise "Unvalid" -CustomSpace " $TeeBar$Line" }
		}
		for ($i = 0; $i -lt $DomainAdminNotProtected.Count; $i++) {
			$prefix = if ($i -eq $DomainAdminNotProtected.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($($DomainAdminNotProtected[$i]) -eq "Administrateur"){
				Write-Allin -CustomMessage "$($DomainAdminNotProtected[$i]) - (Compte bris de glace)" -CustomBalise "Valid" -CustomSpace " $BarVert  $prefix"
			} else {
				if ($script:Minimalist -eq $true){
					if ($i -gt 29 -and $i -lt $DomainAdminNotProtected.count - 1){
						if ($i -eq 30){
							Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
						}
						continue
					} else {
						Write-Allin -CustomMessage "$($DomainAdminNotProtected[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
				} else {
					Write-Allin -CustomMessage "$($DomainAdminNotProtected[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			}
		}
		Write-Allin " $BarVert"

		Write-Allin -CustomMessage "Fin du listing utilisateurs" -CustomBalise "Info" -CustomSpace " $Elbow$Line"

		Write-Host "`n"
		Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"

		Write-Allin -CustomMessage "Listing des systemes d'exploitations presents dans l'AD" -CustomBalise "Info"

		$Win7PC = @(Get-ADComputer -Filter * -Properties * | Where-Object { $_.OperatingSystem -match "Windows 7" } | Select-Object -ExpandProperty CN)
		$Win7PCCount = $Win7PC.Count
		switch ($Win7PCCount) {
			"0" { Write-Allin -CustomMessage "Aucune presence de PC en Windows 7 dans l'AD" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line" }
			Default { Write-Allin -CustomMessage "Presence de $Win7PCCount Windows 7 dans l'AD" -CustomBalise "Unvalid" -CustomSpace " $TeeBar$Line" }
		}
		for ($i = 0; $i -lt $Win7PC.Count; $i++) {
			$prefix = if ($i -eq $Win7PC.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $Win7PC.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($Win7PC[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($Win7PC[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
		}
		Write-Allin " $BarVert"

		$WinEightPC = @(Get-ADComputer -Filter * -Properties * | Where-Object { $_.OperatingSystem -match "Windows 8" } | Select-Object -ExpandProperty CN)
		$WinEightPCCount = $WinEightPC.Count
		
		switch ($WinEightPCCount) {
			"0" { Write-Allin -CustomMessage "Aucune presence de PC en Windows 8 dans l'AD" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line" }
			Default { Write-Allin -CustomMessage "Presence de $WinEightPCCount Windows 8 dans l'AD" -CustomBalise "Unvalid" -CustomSpace " $TeeBar$Line" }
		}
		for ($i = 0; $i -lt $WinEightPC.Count; $i++) {
			$prefix = if ($i -eq $WinEightPC.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $WinEightPC.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($WinEightPC[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($WinEightPC[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
		}
		Write-Allin " $BarVert"

		$Win10PC = @(Get-ADComputer -Filter * -Properties * | Where-Object { $_.OperatingSystem -match "Windows 10" } | Select-Object -ExpandProperty CN)
		$Win10PCCount = $Win10PC.Count
		switch ($Win10PCCount) {
			"0" { Write-Allin -CustomMessage "Aucune presence de PC en Windows 10 dans l'AD" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line" }
			Default { Write-Allin -CustomMessage "Presence de $Win10PCCount Windows 10 dans l'AD" -CustomBalise "Mitigate" -CustomSpace " $TeeBar$Line" }
		}
		for ($i = 0; $i -lt $Win10PC.Count; $i++) {
			$prefix = if ($i -eq $Win10PC.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $Win10PC.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($Win10PC[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($Win10PC[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
		}
		Write-Allin " $BarVert"

		$Srv2012R2 = @(Get-ADComputer -Filter * -Properties * | Where-Object { $_.OperatingSystem -match "Windows Server 2012" } | Select-Object -ExpandProperty CN)
		$Srv2012R2Count = $Srv2012R2.Count
		switch ($Srv2012R2Count) {
			"0" { Write-Allin -CustomMessage "Aucune presence de Serveur Windows 2012 R2 dans l'AD" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line" }
			Default { Write-Allin -CustomMessage "Presence de $Srv2012R2Count Serveur(s) Windows 2012 R2 dans l'AD" -CustomBalise "Unvalid" -CustomSpace " $TeeBar$Line" }
		}
		for ($i = 0; $i -lt $Srv2012R2.Count; $i++) {
			$prefix = if ($i -eq $Srv2012R2.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $Srv2012R2.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($Srv2012R2[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($Srv2012R2[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
		}
		Write-Allin " $BarVert"

		$Srv2016 = @(Get-ADComputer -Filter * -Properties * | Where-Object { $_.OperatingSystem -match "Windows Server 2016" } | Select-Object -ExpandProperty CN)
		$Srv2016Count = $Srv2016.Count
		switch ($Srv2016Count) {
			"0" { Write-Allin -CustomMessage "Aucune presence de Serveur Windows 2016 dans l'AD" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line" }
			Default { Write-Allin -CustomMessage "Presence de $Srv2016Count Serveur Windows 2016 dans l'AD" -CustomBalise "Mitigate" -CustomSpace " $TeeBar$Line" }
		}
		for ($i = 0; $i -lt $Srv2016.Count; $i++) {
			$prefix = if ($i -eq $Srv2016.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $Srv2016.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($Srv2016[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($Srv2016[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
		}
		Write-Allin " $BarVert"

		Write-Allin -CustomMessage "Fin du liste des systemes d'exploitation presents dans l'AD" -CustomBalise "Info" -CustomSpace " $Elbow$Line"

		Write-Host "`n"
		Write-Output "" | Out-File -Append "$(pwd)\$script:SaveName.txt"

		Write-Allin -CustomMessage "Listing des comptes utilisants des protocols d'authentification obsoletes :" -CustomBalise "Info"

		$UserWithDESCom = Get-ADUser -filter * -Properties * | Where-Object { $_.{msDS-SupportedEncryptionTypes} -band 1 -or $_.{msDS-SupportedEncryptionTypes} -band 2 } | Select-Object SamAccountName 
		$UserWithDESComCount = $UserWithDESCom.Count
		switch ($UserWithDESComCount) {
			"0" { Write-Allin -CustomMessage "Aucune presence d'utilisateurs qui acceptent l'encryption DES (CRC ou MD5)" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line" }
			Default { Write-Allin -CustomMessage "Presence de $UserWithDESComCount utilisateurs qui acceptent l'encryption DES (CRC ou MD5)" -CustomBalise "Unvalid" -CustomSpace " $TeeBar$Line" }
		}
		for ($i = 0; $i -lt $UserWithDESCom.Count; $i++) {
			$prefix = if ($i -eq $UserWithDESCom.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $UserWithDESCom.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($UserWithDESCom[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($UserWithDESCom[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
		}
		Write-Allin " $BarVert"

		$UserWithRC4Com = Get-ADUser -filter * -Properties * | Where-Object { $_.{msDS-SupportedEncryptionTypes} -band 4 } | Select-Object SamAccountName 
		$UserWithRC4ComCount = $UserWithRC4Com.Count
		switch ($UserWithRC4ComCount) {
			"0" { Write-Allin -CustomMessage "Aucune presence d'utilisateurs qui acceptent l'encryption RC4" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line" }
			Default { Write-Allin -CustomMessage "Presence de $UserWithRC4ComCount utilisateurs qui acceptent l'encryption RC4" -CustomBalise "Unvalid" -CustomSpace " $TeeBar$Line" }
		}
		for ($i = 0; $i -lt $UserWithRC4Com.Count; $i++) {
			$prefix = if ($i -eq $UserWithRC4Com.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $UserWithRC4Com.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($UserWithRC4Com[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($UserWithRC4Com[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
		}
		Write-Allin " $BarVert"

		$PCWithDESCom = Get-ADComputer -filter * -Properties * | Where-Object { $_.{msDS-SupportedEncryptionTypes} -band 1 -or $_.{msDS-SupportedEncryptionTypes} -band 2 } | Select-Object -ExpandProperty CN 
		$PCWithDESComCount = $PCWithDESCom.Count
		switch ($PCWithDESComCount) {
			"0" { Write-Allin -CustomMessage "Aucune presence d'ordinateurs qui acceptent l'encryption DES (CRC ou MD5)" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line" }
			Default { Write-Allin -CustomMessage "Presence de $PCWithDESComCount ordinateurs qui acceptent l'encryption DES (CRC ou MD5)" -CustomBalise "Unvalid" -CustomSpace " $TeeBar$Line" }
		}
		for ($i = 0; $i -lt $PCWithDESCom.Count; $i++) {
			$prefix = if ($i -eq $PCWithDESCom.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $PCWithDESCom.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($PCWithDESCom[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($PCWithDESCom[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
		}
		Write-Allin " $BarVert"

		$PCWithRC4Com = Get-ADComputer -filter * -Properties * | Where-Object { $_.{msDS-SupportedEncryptionTypes} -band 4 } | Select-Object -ExpandProperty CN 
		$PCWithRC4ComCount = $PCWithRC4Com.Count
		switch ($PCWithRC4ComCount) {
			"0" { Write-Allin -CustomMessage "Aucune presence d'ordinateurs qui acceptent l'encryption RC4" -CustomBalise "Valid" -CustomSpace " $TeeBar$Line" }
			Default { Write-Allin -CustomMessage "Presence de $PCWithRC4ComCount ordinateurs qui acceptent l'encryption RC4" -CustomBalise "Unvalid" -CustomSpace " $TeeBar$Line" }
		}
		for ($i = 0; $i -lt $PCWithRC4Com.Count; $i++) {
			$prefix = if ($i -eq $PCWithRC4Com.Count - 1) { "$Elbow$Line" } else { "$TeeBar$Line" }
			if ($script:Minimalist -eq $true){
				if ($i -gt 29 -and $i -lt $PCWithRC4Com.count - 1){
					if ($i -eq 30){
						Write-Allin -CustomMessage "..." -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
					}
					continue
				} else {
					Write-Allin -CustomMessage "$($PCWithRC4Com[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
				}
			} else {
				Write-Allin -CustomMessage "$($PCWithRC4Com[$i])" -CustomBalise "Neutral" -CustomSpace " $BarVert  $prefix"
			}
		}
		Write-Allin " $BarVert"

		Write-Allin -CustomMessage "Fin du listing des comptes utilisants des protocols d'authentification obsoletes" -CustomBalise "Info" -CustomSpace " $Elbow$Line"
		
	} else {
		Write-Allin -CustomMessage "Pas de domaine detecte" -CustomBalise "Info"
	}
	
}

function PREREQUIS_UNINSTALL {
	##### Suppression du module PSWindowsUpdate & Désinstallation de la fonctionnalité RSAT AD #####
	Write-Allin -CustomMessage "Desinstallation de PSWindowsUpdate en cours..." -CustomBalise "Error"
	Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"Uninstall-Module -Name PSWindowsUpdate -Force`"" -Verb RunAs
	Write-Allin -CustomMessage "Desinstallation de PSWindowsUpdate effectuee" -CustomBalise "Valid" -CustomSpace " $Elbow$Line"

	##### Désinstallation de la fonctionnalité RSAT AD #####
	Write-Allin -CustomMessage "Desinstallation de RSAT-AD en cours..." -CustomBalise "Error"
	$capabilityName = "Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0"
	Remove-WindowsCapability -Online -Name $capabilityName > $null
	Write-Allin -CustomMessage "Desinstallation de RSAT-AD effectuee" -CustomBalise "Valid" -CustomSpace " $Elbow$Line"

	##### Désintallation de NMAP et NpCap
	Write-Allin -CustomMessage "Desinstallation de NMAP en cours..." -CustomBalise "Error"
	if ($DeleteNmap -eq "NotPerfect"){
		if (Test-Path "C:\Program Files\Npcap") {
			Remove-Item -Path "C:\Program Files\Npcap" -Force -Recurse
		}
		if (Test-Path "C:\Program Files (x86)\Nmap") {
			Remove-Item -Path "C:\Program Files (x86)\Nmap"	-Force -Recurse
		}
	} elseif ($DeleteNmap -eq "Yes") {
		$NmapInstallerPath = "C:\Program Files (x86)\Nmap\Uninstall.exe"
		if (Test-Path $NmapInstallerPath) {
			Start-Process $NmapInstallerPath -Wait
		}
		$NmapInstallerPath = "C:\Program Files\Npcap\Uninstall.exe"
		if (Test-Path $NmapInstallerPath) {
			Start-Process $NmapInstallerPath -Wait
		}
	}
	Write-Allin -CustomMessage "Desinstallation de NMAP effectuee" -CustomBalise "Valid" -CustomSpace " $Elbow$Line"
}

##### FONCTION MAIN POUR LANCEMENT #####
function MAIN {	
	##### Facultatif, mais supprime le fichier de sauvegarde du script effectué précedemment #####
	rm "$(pwd)\*.txt"
	
	##### Pour éviter les étourderies, on vérifie que les plages d'ip sont respectées #####
	if ($LowerClassic -gt $HigherClassic) {
		Write-Error "`nLa delimitation basse de LowerClassic ne peut pas etre superieure a HigherClassic"
		exit
	}
	if ($LowerSubnet -gt $HigherSubnet) {
		Write-Error "`nLa delimitation basse de LowerSubnet ne peut pas etre superieure a HigherSubnet"
		exit
	} 
	if ( $LowerClassic -lt 0 -or $LowerClassic -gt 254 -or $HigherClassic -lt 0 -or $HigherClassic -gt 254 ) { 
		Write-Error "`nLes valeurs de LowerClassic et HigherClassic ne peuvent pas etre superieures a 254 ou inferieures a 0"
		Exit
	} 
	if ( $LowerSubnet -lt 0 -or $LowerSubnet -gt 255 -or $HigherSubnet -lt 0 -or $HigherSubnet -gt 255 ) {
		Write-Error "`nLes valeurs de LowerSubnet et HigherSubnet ne peuvent pas etre superieuresaà 254 ou inferieures a 0"
		Exit
	}

	##### Affiche la bannière en début de script #####
	Write-Host "$banner" -ForegroundColor Magenta
	Write-Output "$banner" | Out-File -Append "$(pwd)\$script:SaveName.txt"
	Write-Allin -CustomMessage $name
	
	

	$selectedOptions = @()
	foreach ($key in $script:NmapOptionMap.Keys){
		if (($script:NMAPVALUE -band $script:NmapOptionMap[$key]) -ne 0) {
			switch ($key) {
				"-T" {  
					$key = "$key" + "" + "$script:TX"
					$selectedOptions += $key
				}
				"--min-rate" {
					$key = "$key" + " " + "$script:MR"
					$selectedOptions += $key
				}
				"--data-length" {
					$key = "$key" + " " + "$script:DL"
					$selectedOptions += $key
				}
				"-O" {
					$key = "$key" + " " + "--fuzzy --osscan-guess"
					$selectedOptions += $key
				}
				"-script" {
					if ($script:NmapDefault -eq 1){
						$key = "$key" + " " + "default"
					} elseif ($script:NmapNotIntrusive -eq 1) {
						$key = "$key" + " " + "not intrusive"
					} elseif ($script:NmapVuln -eq 1) {
						$key = "$key" + " " + "vuln"
					}
					$selectedOptions += $key
				}
				"-s?" {
					if ($script:TCPS -eq 1){
						$key = "-sS"
					} elseif ($script:TCPT -eq 1) {
						$key = "-sT"
					} elseif ($script:TCPA -eq 1) {
						$key = "-sA"
					}
					$selectedOptions += $key
				}
				Default {
					$selectedOptions += $key
				}
			}
			
		}
	}
	$script:nmapCommand = "nmap " + ($selectedOptions -join " ")

	if ($NoGui -eq 0){
		FONCTION -Function_Name MODULES_CHOISIS
		Modules_Choisis
	}

	if ($NoGui -eq 0){
		FONCTION -Function_Name NMAP_COMMAND
		Nmap_Command
	}

	Legend

	##### Vérifie la présence des outils nécessaires à certaines autres fonctions #####
	##### Des modules seront téléchargés et installés (droits admins nécéssaires) #####
	##### Le module nmap sera démarré mais devra être installé à la main (doc d'installation existente) ##### 
	if ($script:NoInstallTools -eq 0 ){
		FONCTION -Function_Name PREREQUIS
		PREREQUIS
	}
	
	##### La fonction IP_SCANNER affichera la configuration réseau 
	if ($script:SR -eq 1 -or $NoGui -eq 1){
		FONCTION -Function_Name IP_SCANNER
		Ip_Scanner -Mode $Mode -LowerSubnet $LowerSubnet -HigherSubnet $HigherSubnet -LowerClassic $LowerClassic -HigherClassic $HigherClassic
		Start-Sleep 1
	}
	
	##### Listing des applications installées sur le poste + versions #####
	if ($script:LA -eq 1 -or $NoGui -eq 1){
		FONCTION -Function_Name APP_INVENTORY
		App_Inventory
		Start-Sleep 1
	}
	
	##### Affiche les paramètres de Windows update et les potentielles mises à jour en attente #####
	if ($script:VWU -eq 1 -or $NoGui -eq 1){
		FONCTION -Function_Name WIN_UPDATE
		Win_Update
		Start-Sleep 1
	}

	##### Listing des comptes locaux et profils utilisateurs présents sur le poste #####
	##### Permet aussi de vérifier l'appartenance aux groupes de chaque utilisateurs #####
	if ($script:LUAD -eq 1 -or $NoGui -eq 1){
		FONCTION -Function_Name USERS_LISTING
		Users_Listing
		Start-Sleep 1
	}

	##### Listing des paramètres & éléments de sécurité mis en place sur le poste utilisateur #####
	if ($script:VPS -eq 1 -or $NoGui -eq 1){
		FONCTION -Function_Name INTERN_SECURITY_CHECK
		Intern_Security_Check
		Start-Sleep 1
	}

	##### Listing des potentiels fichiers délicats présent sur le poste ou sur les lecteurs réseaux #####
	if ($script:SF -eq 1 -or $NoGui -eq 1){
		FONCTION -Function_Name FILE_SEARCHER
		File_Searcher
		Start-Sleep 1
	}
	
	if ($script:ADP -eq 1 -or $NoGui -eq 1){
		FONCTION -Function_Name ACTIVE_DIRECTORY
		Active_Directory
		Start-Sleep 1
	}

	
	##### Désinstallation des prérequis #####
	<#FONCTION -Function_Name PREREQUIS_UNINSTALL
	PREREQUIS_UNINSTALL
	Write-Host "`n`n`n"#>

	if ($NoGui -eq 0){
		Write-Host "`n`n`nAppuyer sur une touche pour quitter..."
		$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
	}
}

##### LANCEMENT DU SCRIPT #####
clear
if ($Help -eq 1) {
	SHELP
	exit
}
else {
	Graph_Interface
	MAIN
}