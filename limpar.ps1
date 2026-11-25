# Limpa a tela do terminal para começar do zero
Clear-Host

Write-Host "--- Iniciando Limpeza do Upload-Assistant ---" -ForegroundColor Cyan

# Obtém o diretório onde este script está localizado
$ScriptDir = $PSScriptRoot
if (-not $ScriptDir) {
    # Fallback para quando executado no console interativo (ISE ou copy-paste)
    $ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
}

# Pastas relativas à raiz do Upload-Assistant
$pastasRelativas = @(
    "tmp",
    "data\cache"
)

$contador = 1
$total = $pastasRelativas.Count

foreach ($pastaRelativa in $pastasRelativas) {
    $caminhoCompleto = Join-Path $ScriptDir $pastaRelativa
    Write-Host "[$contador/$total] Limpando: $pastaRelativa..." -NoNewline

    # Verifica se a pasta existe
    if (-not (Test-Path -Path $caminhoCompleto -PathType Container)) {
        Write-Host " [PASTA NÃO ENCONTRADA]" -ForegroundColor Yellow
        $contador++
        continue
    }

    # Tenta remover todo o conteúdo interno, mantendo a pasta vazia
    try {
        $itens = Get-ChildItem -LiteralPath $caminhoCompleto -Force -ErrorAction Stop

        if ($itens) {
            $itens | Remove-Item -Recurse -Force -ErrorAction Stop
        }

        Write-Host " [OK]" -ForegroundColor Green
    }
    catch {
        Write-Host " [FALHA]" -ForegroundColor Red
        Write-Host "       Motivo: $($_.Exception.Message)" -ForegroundColor Red
    }

    $contador++
}

Write-Host "`n--- Limpeza concluída (com possíveis avisos ou falhas acima) ---" -ForegroundColor Yellow
Write-Host "Pressione qualquer tecla para fechar esta janela..."
$null = [Console]::ReadKey()

# Limpa a tela após finalizar (opcional)
Clear-Host