# FIAP - Faculdade de Informática e Administração Paulista

<p align="center">
<a href= "https://www.fiap.com.br/"><img src="assets/logo-fiap.png" alt="FIAP - Faculdade de Informática e Admnistração Paulista" border="0" width=40% height=40%></a>
</p>

<br>

# Explorando SQL e tipos de dados na Oracle

## Nome do grupo

## 👨‍🎓 Integrantes:

- <a href="https://www.linkedin.com/company/">Edmar Ferreira Souza</a>
- <a href="https://www.linkedin.com/company/">Thiago Lima Bernardes</a>
- <a href="https://www.linkedin.com/company/">Alexandre Oliveira Mantovani</a>
- <a href="https://www.linkedin.com/company/">Ricardo Lourenço Coube</a>

## 👩‍🏫 Professores:

### Tutor(a)

- <a href="https://www.linkedin.com/in/lucas-gomes-moreira-15a8452a/">Lucas Gomes Moreira</a>

### Coordenador(a)

- <a href="https://www.linkedin.com/in/profandregodoi/">André Godoi</a>

## 📜 Descrição

Este projeto envolve a modelagem e análise de dados de produção agrícola, visando organizar e estruturar informações sobre safras, regiões, unidades federativas (UF) e volumes de produção. O objetivo principal é construir um banco de dados relacional que suporte consultas relevantes para monitoramento e análise da produção agrícola ao longo do tempo, por cultura e por localização geográfica.

## 📁 Estrutura de pastas

Dentre os arquivos e pastas presentes na raiz do projeto, definem-se:

- <b>assets</b>: aqui estão os arquivos relacionados a elementos não-estruturados deste repositório, como imagens.

- <b>content</b>: aqui estão os arquivos relacionados a estrutura do projeto, como sql, tabelas e pdfs.

- <b>README.md</b>: arquivo que serve como guia e explicação geral sobre o projeto (o mesmo que você está lendo agora).

### Funcionalidades

Modelagem e Organização de Dados Agrícolas: O sistema foi projetado para armazenar e organizar dados relacionados à produção agrícola, incluindo informações sobre safras, regiões e produção por unidades federativas (UF). O banco de dados relacional facilita o armazenamento e a consulta eficiente dessas informações.

Conexão com Banco de Dados para Armazenamento e Consulta: O projeto se conecta a um banco de dados relacional para armazenar, consultar e gerenciar dados agrícolas. A estrutura do banco permite o fácil acesso aos registros históricos de produção e as informações regionais, possibilitando consultas complexas para análise de dados.

CRUD de Produção Agrícola: Este módulo permite registrar, consultar, atualizar e remover informações de produção agrícola, organizando dados por safra e unidade federativa, com detalhamento de quantidade produzida por cada cultura.

Consultas SQL para Análise Agrícola: Várias consultas SQL foram criadas para oferecer uma visão detalhada dos dados de produção agrícola, incluindo:

- Produção total de uma cultura específica por estado em uma safra determinada.
- Evolução da área plantada ao longo dos anos, mostrando o crescimento ou diminuição da produção.
- Ranking de estados com maior produtividade em uma cultura específica, permitindo comparações entre regiões.

Documentação do Dicionário de Dados: O projeto inclui um dicionário de dados detalhado que descreve cada tabela, coluna e suas restrições. Esse documento ajuda a entender a estrutura e funcionalidade de cada componente do banco de dados, facilitando a manutenção e a escalabilidade.

Diagrama do Modelo Relacional: Um diagrama do modelo relacional foi incluído para ilustrar visualmente os relacionamentos entre as tabelas principais do banco de dados, ajudando na compreensão da arquitetura do sistema e seus relacionamentos chave.

Funções Principais

criar_tabelas(): Executa o código SQL para criar todas as tabelas do banco de dados, definindo chaves primárias, estrangeiras e restrições.
inserir_producao(id_uf, id_safra, qt_produzida): Insere um novo registro de produção agrícola, detalhando o volume produzido em determinada safra e UF.
consultar_producao_por_estado(id_cultura, ano): Consulta a produção total de uma cultura em um ano específico por estado.
exportar_relatorio(): Exporta os dados para um arquivo CSV, possibilitando análises e visualizações em outras ferramentas analíticas.

## 🗃 Histórico de lançamentos

- 1.0.0 - 10/11/2024

## 📋 Licença

<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/agodoi/template">MODELO GIT FIAP</a> por <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://fiap.com.br">Fiap</a> está licenciado sobre <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution 4.0 International</a>.</p>
