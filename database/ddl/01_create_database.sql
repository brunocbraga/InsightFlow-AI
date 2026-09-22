/*
===========================================================
Projeto : InsightFlow AI
Arquivo : 01_create_database.sql
Autor   : Bruno Braga
Descrição:
Criação do banco de dados principal do projeto.
===========================================================

IMPORTANTE

Este script deve ser executado conectado ao banco "postgres".

Após a criação do banco "insightflow_ai",
conecte-se a ele para executar os demais scripts.

Ordem de execução:

01_create_database.sql
02_create_schemas.sql
03_create_reference_tables.sql
04_create_product_tables.sql
05_create_customer_tables.sql
06_create_sales_tables.sql
07_create_finance_tables.sql
08_create_logistics_tables.sql
09_create_marketing_tables.sql
10_create_constraints.sql
11_create_indexes.sql
12_create_views.sql
*/

CREATE DATABASE insightflow_ai
WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    TEMPLATE = template0;