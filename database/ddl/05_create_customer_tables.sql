/*
===========================================================
Projeto : InsightFlow AI
Tabela  : customer.customers
Descrição:
Cadastro de clientes
===========================================================
*/

CREATE TABLE customer.customers (

    customer_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    first_name VARCHAR(100) NOT NULL,

    last_name VARCHAR(100) NOT NULL,

    gender CHAR(1),

    birth_date DATE,

    email VARCHAR(255) UNIQUE,

    phone VARCHAR(30),

    city_id INTEGER NOT NULL,

    customer_type VARCHAR(20),

    registration_date DATE NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP,

    is_active BOOLEAN DEFAULT TRUE

);