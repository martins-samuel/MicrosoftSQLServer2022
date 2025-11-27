# 📘 Capítulo 4 — Junções, Visões e Uniões

Neste capítulo foram exploradas técnicas essenciais para consultas avançadas no SQL Server 2022, incluindo junções entre tabelas, união de conjuntos de dados, subconsultas e criação de visões. Esses recursos são fundamentais para trabalhar com múltiplas tabelas e estruturar consultas profissionais.

---

## 🔹 1. O que são junções (JOINs)

Junções permitem combinar dados de duas ou mais tabelas usando colunas relacionadas. São a base de qualquer análise relacional.

**Exemplo de estrutura:**

```sql
SELECT *
FROM TABELA_A A
JOIN TABELA_B B ON A.ID = B.ID;
```

---

## 🔹 2. Usando INNER JOIN, LEFT JOIN e RIGHT JOIN

### **INNER JOIN**

Retorna apenas registros que possuem correspondência entre as tabelas.

```sql
SELECT *
FROM TABELA_DE_CLIENTES C
INNER JOIN NOTAS_FISCAIS N ON C.CPF = N.CPF;
```

### **LEFT JOIN**

Retorna todos os registros da tabela da esquerda e os correspondentes da direita.

```sql
SELECT *
FROM TABELA_DE_CLIENTES C
LEFT JOIN NOTAS_FISCAIS N ON C.CPF = N.CPF;
```

### **RIGHT JOIN**

Retorna todos os registros da tabela da direita e os correspondentes da esquerda.

```sql
SELECT *
FROM TABELA_DE_PRODUTOS P
RIGHT JOIN ITENS_NOTAS_FISCAIS I ON P.CODIGO = I.CODIGO_DO_PRODUTO;
```

---

## 🔹 3. Unindo resultados com **UNION**

Utilizado para unir saídas de duas consultas, eliminando duplicados.

```sql
SELECT NOME FROM TABELA_DE_CLIENTES
UNION
SELECT NOME FROM TABELA_DE_VENDEDORES;
```

Para manter duplicados: `UNION ALL`.

---

## 🔹 4. Subconsultas substituindo HAVING

Neste capítulo, aprendi a usar subconsultas para criar filtros mais flexíveis, sem depender exclusivamente do HAVING.

Exemplo de subconsulta:

```sql
SELECT NOME, LIMITE_DE_CREDITO
FROM TABELA_DE_CLIENTES
WHERE LIMITE_DE_CREDITO > (
    SELECT AVG(LIMITE_DE_CREDITO)
    FROM TABELA_DE_CLIENTES
);
```

---

## 🔹 5. Criando uma **Visão (VIEW)**

Visões são consultas salvas no banco, usadas como se fossem tabelas. Facilitam a reutilização de consultas complexas.

```sql
CREATE VIEW VW_CLIENTES_SP AS
SELECT *
FROM TABELA_DE_CLIENTES
WHERE ESTADO = 'SP';
```

Depois disso, basta consultar:

```sql
SELECT * FROM VW_CLIENTES_SP;
```

---

## 🎯 Resultado do Capítulo

No final deste módulo, desenvolvi competências importantes para análises relacionais:

* Compreensão e uso de JOINs
* União de tabelas com UNION
* Criação de subconsultas
* Manipulação e criação de visões

Essas técnicas expandem drasticamente a capacidade de analisar dados complexos e integrar múltiplas tabelas.

