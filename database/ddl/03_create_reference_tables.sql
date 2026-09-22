/*
===========================================================
Projeto : InsightFlow AI
Arquivo : 03_create_reference_tables.sql

Descrição:
Criação das tabelas de referência do sistema.
===========================================================
*/

-------------------------------------------------------------
-- Categories
-------------------------------------------------------------

CREATE TABLE reference.categories (

    category_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    category_name VARCHAR(100) NOT NULL UNIQUE,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP,

    is_active BOOLEAN DEFAULT TRUE

);

-------------------------------------------------------------
-- Channels
-------------------------------------------------------------

CREATE TABLE reference.channels (

    channel_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    channel_name VARCHAR(50) NOT NULL UNIQUE,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP,

    is_active BOOLEAN DEFAULT TRUE

);

-------------------------------------------------------------
-- States
-------------------------------------------------------------

CREATE TABLE reference.states (

    state_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    state_code CHAR(2) NOT NULL UNIQUE,

    state_name VARCHAR(100) NOT NULL,

    region VARCHAR(20) NOT NULL

);

-------------------------------------------------------------
-- Cities
-------------------------------------------------------------

CREATE TABLE reference.cities (

    city_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    state_id INTEGER NOT NULL,

    city_name VARCHAR(120) NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP,

    is_active BOOLEAN DEFAULT TRUE,

    CONSTRAINT fk_city_state
        FOREIGN KEY (state_id)
        REFERENCES reference.states(state_id)

);