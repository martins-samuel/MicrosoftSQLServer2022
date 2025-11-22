# 📘 Capítulo 1 — Preparação do Ambiente e Carga Inicial do Banco de Dados

Este capítulo tem como objetivo preparar o ambiente e carregar os dados iniciais que serão usados ao longo do curso **SQL Server 2022: Consultas Avançadas**. Aqui você configura o banco **SUCOS_FRUTAS**, importa todos os scripts e garante que as tabelas estejam prontas para consulta.

---

## 🛠️ Passo a passo realizado

### **1. Download e organização dos arquivos**

* Baixei o arquivo **Arquivos.zip** fornecido pelo curso.
* Criei um diretório no computador e extraí/copiei todos os arquivos para dentro dele.
* Inspecionei os scripts disponíveis para entender a estrutura e a ordem de execução.

---

### **2. Criação do banco de dados**

1. No **SQL Server Management Studio (SSMS)**, conectei ao servidor.
2. Cliquei com o botão direito em **Banco de Dados > Novo Banco de Dados**.
3. Nomeei o banco como **SUCOS_FRUTAS** e finalizei clicando em **OK**.

---

## 🧱 Execução dos scripts do projeto

### **🔹 Script 1 — Cria_Banco.sql**

* Abri o arquivo via **Arquivo > Abrir > Arquivo**.
* Comentei todas as instruções **DROP TABLE** para evitar exclusões indesejadas.
* Confirmei se o banco selecionado era o *SUCOS_FRUTAS*.
* Executei o script.

### **🔹 Script 2 — Carga_Cadastros.sql**

* Abri o script e executei para carregar as tabelas de cadastro.

### **🔹 Script 3 — Carga_Notas.sql**

* Executei o script responsável por inserir notas fiscais.

### **🔹 Script 4 — Carga_Itens_Notas.sql**

* Executei o script final para carregar os itens das notas fiscais.

---

## ✔️ Verificação da carga de dados

Após executar todos os scripts, verifiquei se a carga foi realizada corretamente usando:

```sql
SELECT COUNT(*) FROM TABELA_DE_CLIENTES;
SELECT COUNT(*) FROM TABELA_DE_PRODUTOS;
SELECT COUNT(*) FROM TABELA_DE_VENDEDORES;
SELECT COUNT(*) FROM NOTAS_FISCAIS;
SELECT COUNT(*) FROM ITENS_NOTAS_FISCAIS;
```

Essas consultas confirmam se cada tabela recebeu a quantidade esperada de registros.

---

## 🎯 Resultado

Ao final deste capítulo, o ambiente ficou totalmente configurado e o banco **SUCOS_FRUTAS** está pronto para ser explorado nas consultas avançadas dos próximos capítulos.


