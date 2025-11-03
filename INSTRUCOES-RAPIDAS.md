# 🚀 Instruções Rápidas - Conectar com GitHub

## ⚡ Método Automatizado (Recomendado)

### Opção 1: Script Automatizado

1. **Abra o PowerShell** nesta pasta
2. **Execute o script:**
   ```powershell
   .\conectar-github.ps1
   ```
3. **Siga as instruções** na tela
4. **Crie o repositório no GitHub** quando solicitado
5. **Pronto!** O script fará o resto

---

## 📋 Método Manual (Passo a Passo)

### 1. Criar Repositório no GitHub

Acesse: **https://github.com/new**
- Nome: `blog-boxeadores-chile`
- Tipo: **Público**
- **NÃO** marque "Add a README"
- Clique em **Create repository**

### 2. Executar no PowerShell

```powershell
# Substitua 'seu-usuario' pelo seu username do GitHub
git branch -M main
git remote add origin https://github.com/seu-usuario/blog-boxeadores-chile.git
git push -u origin main
```

### 3. Publicar no GitHub Pages

1. GitHub → Seu Repositório → **Settings**
2. Menu lateral → **Pages**
3. **Source**: Selecione `main`
4. **Save**
5. Aguarde 2-3 minutos
6. Acesse: `https://seu-usuario.github.io/blog-boxeadores-chile/`

---

## 🔑 Autenticação GitHub

Se pedir login ao fazer `git push`:

1. **Username**: Seu username do GitHub
2. **Password**: Use um **Personal Access Token** (não sua senha)

### Criar Personal Access Token:
1. GitHub → Settings → Developer settings
2. Personal access tokens → Tokens (classic)
3. Generate new token
4. Selecione escopo: `repo`
5. Copie o token e use como senha

---

## ✅ Status Atual

- ✅ Git inicializado
- ✅ Commit criado
- ✅ Arquivos prontos
- ⏳ Aguardando conexão com GitHub

---

**Pronto para conectar! Execute o script `conectar-github.ps1`** 🚀

