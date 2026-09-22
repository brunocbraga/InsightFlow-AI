# Database - InsightFlow AI

## Objetivo

Esta pasta contém toda a estrutura do banco de dados do projeto InsightFlow AI.

O banco foi organizado por módulos de negócio, permitindo maior organização, manutenção e escalabilidade.

---

# Estrutura

database/

├── ddl/
│   ├── 01_create_database.sql
│   ├── 02_create_schemas.sql
│   ├── 03_create_reference_tables.sql
│   ├── 04_create_product_tables.sql
│   ├── 05_create_customer_tables.sql
│   ├── 06_create_sales_tables.sql
│   ├── 07_create_finance_tables.sql
│   ├── 08_create_logistics_tables.sql
│   ├── 09_create_marketing_tables.sql
│   ├── 10_create_constraints.sql
│   ├── 11_create_indexes.sql
│   └── 12_create_views.sql
│
├── dml/
│
└── docs/

---

# Schemas

| Schema | Responsabilidade |
|---------|------------------|
| reference | Dados de referência (categorias, estados, cidades, canais) |
| customer | Clientes |
| sales | Pedidos, vendedores e itens |
| finance | Pagamentos |
| logistics | Entregas e estoque |
| marketing | Campanhas e leads |
| analytics | Views analíticas |
| staging | Dados temporários do ETL |

---

# Ordem de execução

1. Criar o banco de dados
2. Criar os Schemas
3. Criar as tabelas de referência
4. Criar as tabelas de produtos
5. Criar as tabelas de clientes
6. Criar as tabelas comerciais
7. Criar as tabelas financeiras
8. Criar as tabelas logísticas
9. Criar as tabelas de marketing
10. Criar constraints
11. Criar índices
12. Criar views

---

# Padrões adotados

- PostgreSQL 18
- Schemas separados por domínio de negócio
- Nomenclatura em inglês
- Chaves primárias utilizando GENERATED AS IDENTITY
- Versionamento completo via Git
- Scripts organizados por módulo

---

# Próximas etapas

- Implementar Data Warehouse
- Desenvolver ETL em Python
- Criar dashboards em Power BI
- Integrar IA para geração automática de insightsREADME