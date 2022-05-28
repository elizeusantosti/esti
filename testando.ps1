$arquivos = get-childitem -File $home\Desktop\

function extensao {
    foreach ($arg in $args) {
        New-Variable -Name "$arg" -Value ($arquivos -match "\.($arg)")
        Get-Variable -Name $arg -ValueOnly
    }
}