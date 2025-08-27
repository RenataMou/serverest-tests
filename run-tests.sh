#!/bin/bash

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 Iniciando testes ServeRest API...${NC}"

# Verificar se os arquivos existem
if [ ! -f "collections/serverest-collection.json" ]; then
    echo -e "${RED}❌ Arquivo collection não encontrado!${NC}"
    echo "Coloque o arquivo serverest-collection.json na pasta collections/"
    exit 1
fi

if [ ! -f "environments/serverest-environment.json" ]; then
    echo -e "${RED}❌ Arquivo environment não encontrado!${NC}"
    echo "Coloque o arquivo serverest-environment.json na pasta environments/"
    exit 1
fi

# Criar pasta reports se não existir
mkdir -p reports

# Timestamp para os arquivos
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

echo -e "${YELLOW}📊 Executando testes com Newman...${NC}"

# Executar newman com múltiplos reporters
newman run collections/serverest-collection.json \
  -e environments/serverest-environment.json \
  -r htmlextra,json,junit,cli \
  --reporter-htmlextra-export "reports/newman-report-${TIMESTAMP}.html" \
  --reporter-json-export "reports/newman-report-${TIMESTAMP}.json" \
  --reporter-junit-export "reports/newman-report-${TIMESTAMP}.xml" \
  --reporter-htmlextra-title "ServeRest API Tests - $(date '+%d/%m/%Y %H:%M:%S')" \
  --reporter-htmlextra-showOnlyFails \
  --reporter-htmlextra-skipSensitiveData \
  --timeout-request 10000 \
  --timeout-script 5000

# Verificar se os testes passaram
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Testes executados com sucesso!${NC}"
    echo -e "${GREEN}📁 Relatórios salvos em: reports/${NC}"
    
    # Abrir relatório HTML no navegador
    if command -v xdg-open > /dev/null; then
        echo -e "${BLUE}🌐 Abrindo relatório no navegador...${NC}"
        xdg-open "reports/newman-report-${TIMESTAMP}.html"
    fi
else
    echo -e "${RED}❌ Alguns testes falharam!${NC}"
    echo -e "${YELLOW}📄 Verifique os relatórios para mais detalhes.${NC}"
fi

echo -e "${BLUE}📋 Arquivos gerados:${NC}"
ls -la reports/newman-report-${TIMESTAMP}.*
