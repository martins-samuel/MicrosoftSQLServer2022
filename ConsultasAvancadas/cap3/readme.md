# 📘 Capítulo 3 — Trabalhando com Distinct, Ordenação, Agrupamento e Filtros Avançados

Neste capítulo foram estudadas consultas SQL essenciais para análise de dados, envolvendo deduplicação, filtros avançados, ordenação e agrupamento. Todas as práticas foram realizadas utilizando o banco **SUCOS_FRUTAS**, base estruturada nos capítulos anteriores.

---

## 🔹 1. Removendo duplicados com **DISTINCT**

Aprendi a utilizar a cláusula `DISTINCT` para retornar apenas valores únicos de uma coluna.

**Exemplo:**

```sql
SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS;
```

Essa consulta exibe todas as embalagens diferentes cadastradas.

---

## 🔹 2. Limitando resultados com **TOP** e filtragem com **WHERE**

Pratiquei a limitação da quantidade de linhas retornadas com `TOP`, em conjunto com filtros.

**Exemplo:**

```sql
SELECT TOP 5 * FROM NOTAS_FISCAIS WHERE ANO = 2016;
```

---

## 🔹 3. Ordenação com **ORDER BY**

Utilizei o `ORDER BY` para ordenar resultados em ordem crescente ou decrescente.

**Exemplo:**

```sql
SELECT NOME, LIMITE_DE_CREDITO
FROM TABELA_DE_CLIENTES
ORDER BY LIMITE_DE_CREDITO DESC;
```

---

## 🔹 4. Agrupamento com **GROUP BY**

Estudei a agregação de dados para análises estatísticas.

**Exemplo:**

```sql
SELECT EMBALAGEM, COUNT(*) AS TOTAL
FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM;
```

---

## 🔹 5. Filtros aplicados a resultados agregados com **HAVING**

Aprendi a usar `HAVING` para filtrar dados *após* o agrupamento.

**Exemplo:**

```sql
SELECT SABOR, COUNT(*) AS TOTAL
FROM TABELA_DE_PRODUTOS
GROUP BY SABOR
HAVING COUNT(*) > 5;
```

---

## 🔹 6. Classificação de campos

O capítulo também tratou da diferença entre classificação **numérica**, **alfabética**, **crescente**, **decrescente** e de como isso influencia consultas.

Exemplo rápido:

```sql
ORDER BY PRECO_DE_LISTA ASC;
```

---

## 🎯 Resultado do Capítulo

Ao finalizar este módulo, consolidei habilidades essenciais para análises SQL:

* Remover duplicidades
* Aplicar filtros avançados
* Ordenar dados de formas diferentes
* Agrupar e agregar valores
* Filtrar grupos com HAVING


