# Como Conectar com GitHub - GUIA RÁPIDO

## ✅ O que já está pronto:
- ✅ Repositório Git inicializado
- ✅ Arquivos commitados
- ✅ Scripts de automação criados

## 🚀 OPÇÃO 1: Script Automatizado (Mais Fácil)

### Passo 1: Abra o PowerShell nesta pasta
```
Botão direito na pasta → "Abrir no Terminal" ou "Open PowerShell here"
```

### Passo 2: Execute o script
```powershell
.\enviar-github.ps1
```

### Passo 3: Siga as instruções na tela
O script vai pedir:
- Seu username do GitHub
- Nome do repositório

### Passo 4: Criar repositório no GitHub
Quando o script solicitar:
1. Acesse: https://github.com/new
2. Crie o repositório com o nome que você escolheu
3. Deixe como **Público**
4. **NÃO** marque "Add a README"
5. Volte ao PowerShell e pressione ENTER

**Pronto!** O script enviará tudo automaticamente.

---

## 🔧 OPÇÃO 2: Comandos Manuais

Se preferir fazer manualmente:

### 1. Criar repositório no GitHub
Acesse: https://github.com/new
- Nome: `blog-boxeadores-chile`
- Tipo: **Público**
- Não marque "Add a README"

### 2. No PowerShell, execute:

```powershell
# Substitua 'SEU-USERNAME' pelo seu username do GitHub
git branch -M main
git remote add origin https://github.com/SEU-USERNAME/blog-boxeadores-chile.git
git push -u origin main
```

### 3. Publicar no GitHub Pages:

1. No GitHub, vá em: **Settings** → **Pages**
2. **Source**: Selecione `main`
3. **Save**
4. Aguarde 2-3 minutos
5. Acesse: `https://SEU-USERNAME.github.io/blog-boxeadores-chile/`

---

## 🔑 Sobre Autenticação

Quando executar `git push`, o GitHub pode pedir login:

**Username**: Seu username do GitHub

**Password**: Use um **Personal Access Token** (NÃO sua senha normal)

### Criar Token:
1. GitHub → **Settings** → **Developer settings**
2. **Personal access tokens** → **Tokens (classic)**
3. **Generate new token (classic)**
4. Nome: `Git Push Token`
5. Selecione: `repo` (todos)
6. **Generate token**
7. **Copie o token** e use como senha

---

## 📁 Arquivos Criados:

- `enviar-github.ps1` - Script automatizado principal
- `setup-github.ps1` - Script alternativo (mais completo)
- `conectar-github.ps1` - Script interativo
- `README.md` - Documentação do projeto
- `GUIA-GITHUB.md` - Guia detalhado
- `INSTRUCOES-RAPIDAS.md` - Instruções resumidas

---

## ⚡ RECOMENDAÇÃO:

**Use o script `enviar-github.ps1`** - É o mais simples e direto!

```powershell
.\enviar-github.ps1
```

E siga as instruções na tela. É super fácil! 🚀

