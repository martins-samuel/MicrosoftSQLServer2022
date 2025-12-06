
---

# 📘 Capítulo 3 — Inclusão e Importação de Dados

Neste capítulo eu aprendi a inserir dados no SQL Server, trabalhar com múltiplos registros, importar arquivos externos e entender como as restrições do banco afetam a inclusão de novas informações.

---

## 🔹 Inserindo dados na tabela

Aprendi a utilizar diferentes formas de inserir informações:

* `INSERT INTO` para adicionar um único registro
* `INSERT INTO (...) VALUES (...), (...), (...);` para inserir vários dados de uma vez
* `INSERT INTO ... SELECT` para carregar dados a partir de outra tabela

Essas técnicas são essenciais para alimentar a base de dados com eficiência.

---

## 🔹 Importação de dados externos (CSV)

Estudei como importar informações vindas de fontes externas, como:

* Arquivos **CSV**
* Planilhas
* Outras estruturas tabulares

Usei o **Assistente de Importação do SQL Server**, que facilita o processo sem exigir comandos SQL manuais.

---

## 🔹 Uso dos assistentes do SQL Server

Utilizei ferramentas gráficas como o:

* **Import Data Wizard**

Com ele, consegui configurar:

* A origem dos dados
* O mapeamento das colunas
* A definição dos tipos
* O tratamento de erros da importação

Tudo de forma simples e visual.

---

## 🔹 Restrições de integridade

Compreendi como as regras de integridade influenciam a inserção de dados:

* **PRIMARY KEY**
* **FOREIGN KEY**
* **NOT NULL**
* **CHECK**
* Tipos de dados definidos no projeto

Se os dados não atendem às regras, o SQL Server bloqueia a inclusão para manter a consistência do banco.

---

## 🔹 Lendo dados de outros bancos

Aprendi também a acessar dados de outras bases dentro do SQL Server utilizando:

* `OUTRO_BANCO.dbo.TABELA`
* Inserções usando `INSERT INTO ... SELECT` entre bancos diferentes
* Importações via assistentes

Isso me mostrou como integrar dados de diferentes fontes dentro do mesmo ambiente.

