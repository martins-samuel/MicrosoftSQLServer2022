

---

# 📘 Capítulo 2 — Manipulando Dados

Este capítulo apresenta os fundamentos para estruturar um banco de dados no SQL Server 2022, incluindo criação de bancos, tabelas, chaves primárias e relacionamentos.

---

## 🔹 Criar um banco de dados

Aprendemos a criar um banco de dados definindo seu nome e preparando o ambiente para receber tabelas e registros.

---

## 🔹 Criar tabelas

Estudamos como definir a estrutura das tabelas, escolhendo:

* Nome das colunas
* Tipos de dados
* Possibilidade de valores nulos
* Restrições básicas

---

## 🔹 Chaves primárias

Vimos como declarar **PRIMARY KEY**, garantindo que cada registro seja único e mantendo a integridade da tabela.

Uma chave primária pode ser:

* Simples (uma coluna)
* Composta (duas colunas ou mais)

---

## 🔹 Relacionamentos entre tabelas

Aprendemos a transportar o modelo do **DER (Diagrama Entidade-Relacionamento)** para o banco físico através das **FOREIGN KEY**, garantindo integridade referencial entre tabelas.

---

# 📝 Exemplo de exercício do capítulo

```sql
CREATE TABLE ITENS_VENDIDOS(
    NUMERO VARCHAR(5) NOT NULL,
    CODIGO VARCHAR(10) NOT NULL,
    QUANTIDADE INTEGER NULL,
    PRECO FLOAT NULL,
    PRIMARY KEY (NUMERO, CODIGO)
);

ALTER TABLE ITENS_VENDIDOS
ADD CONSTRAINT FK_TABELA_DE_VENDAS 
FOREIGN KEY (NUMERO) REFERENCES TABELA_DE_VENDAS (NUMERO);
```

