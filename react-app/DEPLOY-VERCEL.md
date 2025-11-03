# 🚀 Como Fazer Deploy no Vercel

## Método 1: Via Interface Web (Mais Fácil)

### Passo 1: Acesse o Vercel
1. Acesse [vercel.com](https://vercel.com)
2. Faça login com sua conta GitHub (ou crie uma conta se não tiver)

### Passo 2: Conecte o Repositório
1. Clique em **"Add New Project"** ou **"New Project"**
2. Selecione o repositório **BoxeadoresChile**
3. O Vercel detectará automaticamente que é um projeto Vite/React

### Passo 3: Configure o Build
O Vercel já deve detectar automaticamente:
- **Framework Preset**: Vite
- **Build Command**: `npm run build`
- **Output Directory**: `dist`
- **Install Command**: `npm install`

**IMPORTANTE**: Se o projeto React estiver na pasta `react-app`, você precisa ajustar:
- **Root Directory**: Selecione `react-app` na configuração

### Passo 4: Deploy
1. Clique em **"Deploy"**
2. Aguarde o build (geralmente 1-2 minutos)
3. Seu site estará online!

---

## Método 2: Via Vercel CLI (Linha de Comando)

### Passo 1: Instalar Vercel CLI
```bash
npm install -g vercel
```

### Passo 2: Login no Vercel
```bash
vercel login
```
Siga as instruções para fazer login.

### Passo 3: Navegar para a pasta do projeto
```bash
cd react-app
```

### Passo 4: Deploy
```bash
# Deploy de produção
vercel

# Ou deploy de produção diretamente
vercel --prod
```

### Passo 5: Configurações
Quando executar pela primeira vez, o CLI perguntará:
- **Set up and deploy?** → Y
- **Which scope?** → Selecione sua conta
- **Link to existing project?** → N (primeira vez)
- **What's your project's name?** → boxeadores-chile (ou o nome que preferir)
- **In which directory is your code located?** → `./` (ponto, pois já estamos na pasta react-app)
- **Want to override the settings?** → N (na primeira vez)

---

## Método 3: Via GitHub (Deploy Automático)

### Passo 1: Conectar Repositório
1. Acesse [vercel.com/dashboard](https://vercel.com/dashboard)
2. Clique em **"Add New Project"**
3. Selecione o repositório **BoxeadoresChile**
4. Configure o **Root Directory** como `react-app`

### Passo 2: Configurar Deploy Automático
1. O Vercel automaticamente faz deploy a cada push no `main`
2. Cada branch tem seu próprio preview URL
3. Pull Requests geram previews automáticos

### Passo 3: Configurações Avançadas (Opcional)
No painel do projeto, você pode configurar:
- **Environment Variables** (se necessário)
- **Custom Domains**
- **Analytics**

---

## ⚙️ Configurações Importantes

### Root Directory
Se o projeto React está na pasta `react-app`, você DEVE configurar:
- **Root Directory**: `react-app`

Isso garante que o Vercel construa o projeto correto.

### Build Settings
O arquivo `vercel.json` já está configurado com:
- Framework: Vite
- Build Command: `npm run build`
- Output Directory: `dist`

---

## 🔍 Verificar se Está Funcionando

Após o deploy:
1. Acesse o URL fornecido pelo Vercel (ex: `boxeadores-chile.vercel.app`)
2. Verifique se a página carrega corretamente
3. Teste os botões "Ler Mais"
4. Verifique a responsividade

---

## 📝 Troubleshooting

### Problema: Build falha
**Solução**: Verifique se o `package.json` tem o script `build`:
```json
"scripts": {
  "build": "vite build"
}
```

### Problema: Página em branco
**Solução**: Verifique se o `vite.config.js` está correto e se o `index.html` está na raiz do projeto.

### Problema: Rotas não funcionam
**Solução**: O arquivo `vercel.json` já inclui as rewrites necessárias para SPA.

---

## 🎉 Pronto!

Após o deploy, você terá:
- ✅ URL de produção (ex: `seu-projeto.vercel.app`)
- ✅ Deploy automático a cada push
- ✅ Preview de Pull Requests
- ✅ SSL automático (HTTPS)

