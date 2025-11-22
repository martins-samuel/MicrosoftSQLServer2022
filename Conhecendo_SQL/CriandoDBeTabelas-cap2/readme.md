# 📍 Capítulo 2 — Trabalhando com Banco de Dados e Tabelas

Este README documenta todo o conteúdo estudado no **Capítulo 2** do curso *Microsoft SQL Server 2022: Conhecendo SQL*, incluindo criação de bancos, tabelas e primeiros comandos essenciais para estruturar um ambiente SQL.

---

## 🎯 Objetivo do Capítulo

Aprender a criar, excluir e gerenciar bancos de dados, além de criar e alterar tabelas utilizando comandos SQL fundamentais.

---

# 🗃️ Conteúdo do Capítulo

## **1️⃣ Criando um Banco de Dados**

No SQL Server, utilizamos o comando `CREATE DATABASE` para criar um banco.

Exemplo básico:

```sql
CREATE DATABASE Frutally;
```

---

## **2️⃣ Outros Parâmetros Importantes (opcional)**

É possível definir:

* tamanho inicial do banco;
* tamanho do log;
* crescimento automático;
* arquivos físicos (.mdf e .ldf).

Exemplo com parâmetros:

```sql
CREATE DATABASE Frutally
ON PRIMARY
(
    NAME = FrutallyDB,
    FILENAME = 'C:\\SQLSERVER22\\Frutally.mdf',
    SIZE = 10MB,
    MAXSIZE = 100MB,
    FILEGROWTH = 5MB
)
LOG ON
(
    NAME = FrutallyLog,
    FILENAME = 'C:\\SQLSERVER22\\Frutally.ldf',
    SIZE = 5MB,
    FILEGROWTH = 1MB
);
```

---

## **3️⃣ Excluindo um Banco de Dados**

```sql
DROP DATABASE Frutally;
```

> Importante: só é possível excluir bancos que não estão sendo usados.

---

# 📦 Trabalhando com Tabelas

## **4️⃣ Criando Tabelas — Parte 1**

A estrutura básica de criação de tabela usa:

```sql
CREATE TABLE nome_da_tabela (
    coluna tipo,
    coluna tipo
);
```

---

## **5️⃣ Criando Tabelas — Parte 2**

Aqui aprendemos sobre:

* PRIMARY KEY
* NOT NULL
* DEFAULT
* Identidade (IDENTITY)

Exemplo:

```sql
CREATE TABLE Categorias (
    id INT IDENTITY PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);
```

---

## **6️⃣ Criando a Tabela de Produtos**

A tabela mais importante da Frutally:

```sql
CREATE TABLE Produtos (
    id INT IDENTITY PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES Categorias(id)
);
```

---

## **7️⃣ Tipos de Dados (Para Saber Mais)**

Os principais tipos usados no SQL Server:

* `INT` → números inteiros
* `DECIMAL(p,s)` → valores numéricos com casas
* `VARCHAR(n)` → textos variáveis
* `DATE` → datas
* `BIT` → booleano (0/1)
* `FLOAT` → números com precisão variável

---

## **8️⃣ Alterando Tabelas**

Para adicionar uma coluna:

```sql
ALTER TABLE Produtos
ADD data_cadastro DATE;
```

Para modificar uma coluna:

```sql
ALTER TABLE Produtos
ALTER COLUMN nome VARCHAR(100);
```

Para remover uma coluna:

```sql
ALTER TABLE Produtos
DROP COLUMN data_cadastro;
```

---

