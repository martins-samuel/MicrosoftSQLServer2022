# 📘 Capítulo 2 — Consultando Dados em uma Tabela

Este capítulo marca o início da exploração dos dados do banco **SUCOS_FRUTAS**, utilizando consultas SQL fundamentais e intermediárias. Aqui foram abordadas as principais formas de recuperar, filtrar e analisar informações a partir de tabelas.

---

## 🔍 O que foi estudado neste capítulo

### **1. Consulta simples em uma tabela**

Aprendi a usar o comando básico:

```sql
SELECT * FROM nome_da_tabela;
```

Para listar todos os registros de uma tabela.

---

### **2. Listando dados da tabela**

Prática de selecionar colunas específicas para obter apenas os dados necessários.
Exemplo:

```sql
SELECT NOME, CPF FROM TABELA_DE_CLIENTES;
```

---

### **3. Consultas com filtro (WHERE)**

Uso de expressões condicionais para refinar resultados.
Exemplo:

```sql
SELECT * FROM TABELA_DE_PRODUTOS
WHERE SABOR = 'Laranja';
```

---

### **4. Filtros quantitativos**

Aplicação de comparações numéricas como `>`, `<`, `>=` e `<=`.
Exemplo:

```sql
SELECT * FROM NOTAS_FISCAIS
WHERE QUANTIDADE >= 10;
```

---

### **5. Expressões lógicas (AND, OR, NOT)**

Combinação de filtros para criar consultas mais completas.
Exemplo:

```sql
SELECT * FROM TABELA_DE_VENDEDORES
WHERE ESTADO = 'SP' AND PERCENTUAL_COMISSAO > 0.1;
```

Atividade prática com exercícios para identificar corretamente expressões lógicas.

---

### **6. Usando LIKE para buscas textuais**

Uso de curingas `%` e `_` para encontrar padrões.
Exemplos:

```sql
-- Clientes cujo nome começa com A
SELECT * FROM TABELA_DE_CLIENTES
WHERE NOME LIKE 'A%';

-- Clientes contendo "son"
SELECT * FROM TABELA_DE_CLIENTES
WHERE NOME LIKE '%son%';
```

---

## 🎯 Resultado do capítulo

Ao final deste capítulo, ficou consolidada a base de consultas essenciais para explorar tabelas individuais, incluindo:

* Seleção simples
* Filtragem de dados
* Expressões lógicas
* Busca textual avançada com `LIKE`

Tudo isso será fundamental para consultas mais avançadas nos próximos módulos.

