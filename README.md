# 🚀 ServeRest API Tests

![Node.js Version](https://img.shields.io/badge/node-%3E%3D16.0.0-brightgreen)
![Newman Version](https://img.shields.io/badge/newman-6.0.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)

Projeto de testes automatizados para a API ServeRest usando Newman (Postman CLI) com integração CI/CD via GitHub Actions.

## 📋 Funcionalidades

- ✅ **135+ testes automatizados** cobrindo todos os endpoints
- 🔄 **Execução em múltiplos ambientes** (dev, staging, production)
- 📊 **Relatórios HTML visuais** com gráficos detalhados
- 🤖 **CI/CD automatizado** via GitHub Actions
- 📈 **Relatórios XML/JSON** para integração com outras ferramentas
- 🐳 **Suporte Docker** para execução isolada
- ⚡ **Scripts otimizados** para diferentes cenários

## 🛠️ Pré-requisitos

- Node.js >= 16.0.0
- npm >= 8.0.0
- Git

## 🚀 Instalação Rápida

```bash
# Clonar repositório
git clone https://github.com/seu-usuario/serverest-api-tests.git
cd serverest-api-tests

# Instalar dependências
npm install

# Configurar scripts
npm run setup

# Executar testes
npm test
