Invoke-WebRequest -Uri "https://raw.githubusercontent.com/elizeusantosti/esti/main/database/variaveis.ps1" | Invoke-Expression

function esti_database(){
    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$script
    )
    $import = $main.diretorios.database + "$script.ps1"
    Invoke-WebRequest -Uri $import | Invoke-Expression
}

function esti_baixar() {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$arquivo,
        [Parameter(Mandatory=$true, Position=1)]
        [string]$destino
    )
    try {
        Start-BitsTransfer -Source $arquivo -Destination $destino
    }
    catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}

function esti_criar_pasta($pasta) {
    Try {
        New-Item -Path $pasta -ItemType Directory -ErrorAction Stop
    }
    Catch {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
}