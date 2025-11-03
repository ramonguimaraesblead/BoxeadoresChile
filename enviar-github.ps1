# Script Simples para Enviar ao GitHub
# Execute: .\enviar-github.ps1

Write-Host ""
Write-Host "CONEXAO COM GITHUB" -ForegroundColor Cyan
Write-Host "==================" -ForegroundColor Cyan
Write-Host ""

# Verificar Git
Write-Host "[1/4] Verificando Git..." -ForegroundColor Yellow
git --version
Write-Host "OK!" -ForegroundColor Green

# Verificar commits
Write-Host ""
Write-Host "[2/4] Verificando commits..." -ForegroundColor Yellow
$log = git log --oneline -1
if ($log) {
    Write-Host "OK! Ultimo commit:" -ForegroundColor Green
    Write-Host $log -ForegroundColor Gray
} else {
    Write-Host "Fazendo commit inicial..." -ForegroundColor Yellow
    git add .
    git commit -m "Initial commit: Blog Boxeadores Chile"
}

# Solicitar informacoes
Write-Host ""
Write-Host "[3/4] Configuracao do GitHub:" -ForegroundColor Yellow
Write-Host ""

$username = Read-Host "Seu username do GitHub"
$repoName = Read-Host "Nome do repositorio"

if ([string]::IsNullOrWhiteSpace($username) -or [string]::IsNullOrWhiteSpace($repoName)) {
    Write-Host "ERRO: Username e nome do repositorio sao obrigatorios!" -ForegroundColor Red
    exit 1
}

# Configurar remote
Write-Host ""
Write-Host "[4/4] Configurando repositorio remoto..." -ForegroundColor Yellow

$existing = git remote get-url origin 2>$null
if ($existing) {
    git remote remove origin
}

git remote add origin "https://github.com/$username/$repoName.git"
git branch -M main 2>$null

Write-Host "OK! Remote configurado" -ForegroundColor Green
Write-Host ""
Write-Host "ATENCAO: Antes de continuar, certifique-se que:" -ForegroundColor Yellow
Write-Host "1. Voce ja criou o repositorio no GitHub" -ForegroundColor White
Write-Host "2. Acesse: https://github.com/new" -ForegroundColor Cyan
Write-Host "3. Nome: $repoName" -ForegroundColor White
Write-Host "4. Tipo: Publico" -ForegroundColor White
Write-Host "5. NAO marque 'Add a README'" -ForegroundColor White
Write-Host ""

Read-Host "Apos criar o repositorio, pressione ENTER para enviar"

Write-Host ""
Write-Host "Enviando codigo para GitHub..." -ForegroundColor Cyan
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "SUCESSO! Codigo enviado!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Repositorio: https://github.com/$username/$repoName" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Para publicar no GitHub Pages:" -ForegroundColor Yellow
    Write-Host "1. Vá em Settings -> Pages" -ForegroundColor White
    Write-Host "2. Source: branch 'main'" -ForegroundColor White
    Write-Host "3. Salve e aguarde 2-3 minutos" -ForegroundColor White
    Write-Host "4. Acesse: https://$username.github.io/$repoName/" -ForegroundColor Cyan
} else {
    Write-Host ""
    Write-Host "ERRO ao enviar. Verifique:" -ForegroundColor Red
    Write-Host "1. Repositorio foi criado no GitHub" -ForegroundColor Gray
    Write-Host "2. Credenciais estao corretas" -ForegroundColor Gray
    Write-Host "3. Tente: git push -u origin main" -ForegroundColor Gray
}

