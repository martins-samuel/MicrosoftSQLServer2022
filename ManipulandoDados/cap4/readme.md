# 📘 Capítulo 4 — Alterando Dados no SQL Server

Este capítulo aborda as formas de modificar registros já existentes no banco de dados e explica como funcionam as transações, que permitem controlar e recuperar alterações quando necessário.

---

## ✏️ O que aprendo neste capítulo?

- Alterar registros utilizando **UPDATE**  
- Excluir registros com **DELETE**  
- Utilizar o comando **MERGE** para atualizar ou inserir dados conforme a existência do registro  
- Entender o funcionamento de uma **transação**  
- Reverter alterações indevidas com **ROLLBACK**  
- Confirmar mudanças permanentes com **COMMIT**  

---

## 🛠️ Exemplos Práticos

### 🔄 **Atualizando registros**
```sql
UPDATE CLIENTES
SET CIDADE = 'São Paulo'
WHERE CPF = '12345678900';
❌ Removendo registros
sql
Copiar código
DELETE FROM CLIENTES
WHERE CPF = '98765432100';
🔀 Usando MERGE para sincronizar dados
sql
Copiar código
MERGE CLIENTES AS destino
USING CLIENTES_TEMP AS origem
ON destino.CPF = origem.CPF
WHEN MATCHED THEN
    UPDATE SET destino.CIDADE = origem.CIDADE
WHEN NOT MATCHED THEN
    INSERT (NOME, CPF, CIDADE)
    VALUES (origem.NOME, origem.CPF, origem.CIDADE);
🔐 Trabalhando com Transações
As transações permitem testar alterações antes de confirmá-las.

🧪 Exemplo
sql
Copiar código
BEGIN TRANSACTION;

UPDATE CLIENTES
SET CIDADE = 'Curitiba'
WHERE CPF = '12345678900';

-- Se algo deu errado:
ROLLBACK;

-- Se tudo está correto:
-- COMMIT;