# Top 5 Boxeadores do Chile - React App

Aplicação React moderna e refatorada que apresenta os 5 maiores boxeadores chilenos de todos os tempos.

## 🚀 Estrutura do Projeto

```
react-app/
├── src/
│   ├── components/          # Componentes React reutilizáveis
│   │   ├── Hero.jsx        # Componente do cabeçalho hero
│   │   ├── BlogIntro.jsx   # Introdução do blog
│   │   ├── FighterCard.jsx # Card de cada boxeador
│   │   ├── Conclusion.jsx  # Seção de conclusão
│   │   └── Footer.jsx      # Rodapé
│   ├── data/
│   │   └── fighters.js     # Dados dos boxeadores
│   ├── App.jsx             # Componente principal
│   ├── main.jsx            # Ponto de entrada
│   └── index.css           # Estilos globais
└── index.html              # HTML principal com meta tags SEO
```

## ✨ Funcionalidades

- ✅ Componentes React modulares e reutilizáveis
- ✅ Gerenciamento de estado com React Hooks
- ✅ CSS modular por componente
- ✅ SEO otimizado com meta tags
- ✅ Responsivo para mobile e desktop
- ✅ Animações suaves e transições
- ✅ Fallback de imagens automático

## 🛠️ Tecnologias

- **React 18+** - Biblioteca JavaScript para interfaces
- **Vite** - Build tool moderna e rápida
- **CSS Modules** - Estilos organizados por componente

## 📦 Instalação e Uso

```bash
# Instalar dependências
npm install

# Executar em modo desenvolvimento
npm run dev

# Build para produção
npm run build

# Preview do build
npm run preview
```

## 🎯 Componentes Principais

### Hero
Componente do cabeçalho com título e subtítulo animados.

### BlogIntro
Seção introdutória do blog com data de publicação e texto descritivo.

### FighterCard
Componente reutilizável para cada boxeador, com:
- Imagem principal
- Descrição resumida
- Botão "Ler Mais" expansível
- Informações detalhadas

### Conclusion
Seção de conclusão com resumo e tópicos relacionados.

### Footer
Rodapé com informações de copyright e palavras-chave.

## 📊 Dados dos Boxeadores

Os dados estão organizados em `src/data/fighters.js` e incluem:
- Arturo Godoy
- Martín Vargas
- Godfrey Stevens
- Benedicto Villablanca
- Alfredo Cornejo

## 🎨 Estilização

CSS organizado por componente com:
- Variáveis CSS para cores e gradientes
- Animações e transições suaves
- Design responsivo
- Hover effects e interatividade

## 📝 SEO

A aplicação inclui:
- Meta tags completas (description, keywords)
- Open Graph tags para redes sociais
- Twitter Card tags
- Schema.org JSON-LD
- Canonical URL

## 🔄 Migração de HTML/CSS/JS para React

A aplicação foi completamente refatorada de HTML puro para React, mantendo:
- Todos os estilos visuais
- Funcionalidades interativas
- SEO otimizado
- Estrutura de conteúdo

## 📱 Responsividade

Totalmente responsivo com breakpoints:
- Desktop: > 768px
- Tablet: 768px - 480px
- Mobile: < 480px
