# 🚀 ServeRest API Tests
![Node.js Version](https://img.shields.io/badge/node-%3E%3D16.0.0-brightgreen)
![Newman Version](https://img.shields.io/badge/newman-6.0.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)

Projeto de testes automatizados para a API ServeRest usando Newman (Postman CLI) com integração CI/CD via GitHub Actions.

## 📋 Funcionalidades
- ✅ **testes automatizados** cobrindo todos os endpoints
- 📊 **Relatórios HTML visuais** com gráficos detalhados
- 🤖 **CI/CD automatizado** via GitHub Actions
- 📈 **Relatórios XML/JSON** para integração com outras ferramentas
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
```

## 📚 Referência HTTP

### Verbos HTTP Testados
| Verbo | Uso | Endpoints Testados |
|-------|-----|-------------------|
| **GET** | Buscar dados | `/usuarios`, `/produtos`, `/carrinhos` |
| **POST** | Criar recursos | `/usuarios`, `/produtos`, `/carrinhos` |
| **PUT** | Atualizar completo | `/usuarios/{id}`, `/produtos/{id}` |
| **PATCH** | Atualizar parcial | `/usuarios/{id}`, `/produtos/{id}` |
| **DELETE** | Remover recursos | `/usuarios/{id}`, `/produtos/{id}` |

### Famílias de Status Codes

#### ✅ 2xx - Sucesso
- **200 OK** - Requisição bem-sucedida
- **201 Created** - Recurso criado com sucesso
- **204 No Content** - Deleção bem-sucedida

#### 🔄 3xx - Redirecionamento
- **301 Moved Permanently** - Recurso movido permanentemente
- **302 Found** - Redirecionamento temporário
- **304 Not Modified** - Recurso não modificado (cache)

#### ⚠️ 4xx - Erro do Cliente
- **400 Bad Request** - Dados inválidos
- **401 Unauthorized** - Token inválido/ausente
- **403 Forbidden** - Acesso negado
- **404 Not Found** - Recurso não encontrado
- **409 Conflict** - Email já cadastrado
- **422 Unprocessable Entity** - Dados válidos mas não processáveis

#### ❌ 5xx - Erro do Servidor
- **500 Internal Server Error** - Erro interno do servidor
- **502 Bad Gateway** - Erro de gateway
- **503 Service Unavailable** - Serviço indisponível

### Cenários de Teste
- ✅ Validação de todos os status codes esperados
- ✅ Testes de payload inválido (400)
- ✅ Testes de recursos inexistentes (404)
- ✅ Validação de autenticação (401)
- ✅ Diferenciação entre PUT (completo) e PATCH (parcial)
