
## **Criação de Esquemas e Tabelas em SQL**

A linguagem de definição de dados (DDL, Data Definition Language) no SQL é usada para criar e modificar a estrutura de banco de dados e tabelas. Abaixo estão exemplos de como utilizar os comandos DDL no MySQL, acompanhados do uso da IDE Workbench.

- `CREATE DATABASE`: para criar um novo banco de dados.
- `DROP DATABASE`: para excluir um banco de dados existente.
- `CREATE TABLE`: para criar novas tabelas dentro de um banco de dados.
- `ALTER TABLE`: para modificar a estrutura de uma tabela existente, como adicionar uma nova restrição de chave estrangeira.
- `PRIMARY KEY`: para definir a chave primária de uma tabela.
- `FOREIGN KEY`: para definir uma chave estrangeira, estabelecendo uma relação entre tabelas.
- `DROP TABLE`: para excluir uma tabela existente e todos os seus dados.
- `TRUNCATE TABLE`: para remover todos os registros de uma tabela sem excluir a tabela em si, permitindo a reutilização da estrutura da tabela.
- `RENAME TABLE`: para renomear uma tabela existente.
- `CREATE INDEX`: para melhorar a velocidade de busca/retrieval de dados, os índices podem ser criados em colunas específicas. 

### **Criação do Esquema**

O comando `CREATE DATABASE` é utilizado para criar um novo banco de dados. Por exemplo, para criar um banco de dados chamado EMPRESA, utilizamos o seguinte comando SQL:

```sql
CREATE DATABASE EMPRESA;
```

### **Deletando o Banco**

Para remover um banco de dados existente, utilizamos o comando `DROP DATABASE`. Este comando deletará o banco de dados EMPRESA e todos os seus dados:

```sql
DROP DATABASE EMPRESA;
```

### **Criação da Tabela FUNCIONARIO**

A tabela FUNCIONARIO armazena informações sobre os funcionários da empresa. O comando `CREATE TABLE` é usado para criar esta tabela dentro do banco de dados EMPRESA, definindo suas colunas e restrições:

```sql
CREATE TABLE EMPRESA.FUNCIONARIO (
    Pnome VARCHAR(15) NOT NULL,
    Minicial CHAR,
    Unome VARCHAR(15) NOT NULL,
    Cpf CHAR(11),
    Datanasc DATE,
    Endereco VARCHAR(255),
    Sexo CHAR,
    Salario DECIMAL(10,2),
    Cpf_supervisor CHAR(11),
    Dnr INT,
    PRIMARY KEY (Cpf),
    FOREIGN KEY (Cpf_supervisor) REFERENCES FUNCIONARIO(Cpf)
);
```

### **Tabela DEPARTAMENTO**

Esta tabela guarda informações sobre os departamentos da empresa. Cada departamento tem um gerente e uma data de início de gestão:

```sql
CREATE TABLE EMPRESA.DEPARTAMENTO (
    Dnome VARCHAR(15) NOT NULL,
    Dnumero INT,
    Cpf_gerente CHAR(11),
    Data_inicio_gerente DATE,
    PRIMARY KEY (Dnumero),
    UNIQUE (Dnome),
    FOREIGN KEY (Cpf_gerente) REFERENCES FUNCIONARIO(CPF)
);
```

### **Restrição Referencial em FUNCIONARIO de DEPARTAMENTO**

Adiciona uma restrição referencial à tabela FUNCIONARIO para estabelecer a relação com a tabela DEPARTAMENTO:

```sql
ALTER TABLE EMPRESA.FUNCIONARIO
ADD CONSTRAINT Dnr
FOREIGN KEY (Dnr) REFERENCES DEPARTAMENTO (Dnumero);
```

### **Tabela LOCALIZACAO_DEP**

Guarda a localização dos departamentos, permitindo que um departamento tenha múltiplas localizações:

```sql
CREATE TABLE EMPRESA.LOCALIZACAO_DEP (
    Dnumero INT NOT NULL,
    Dlocal VARCHAR (15) NOT NULL,
    PRIMARY KEY (Dnumero, Dlocal),
    FOREIGN KEY (Dnumero) REFERENCES DEPARTAMENTO (Dnumero)
);
```

### **Tabela PROJETO**

Armazena informações sobre os projetos em andamento, incluindo seu nome, número, localização e departamento responsável:

```sql
CREATE TABLE EMPRESA.PROJETO(
    Projnome VARCHAR (15) NOT NULL,
    Projnumero INT NOT NULL,
    Projlocal VARCHAR(15),
    Dnum INT,
    PRIMARY KEY (Projnumero),
    UNIQUE (Projnome),
    FOREIGN KEY (Dnum) REFERENCES DEPARTAMENTO (Dnumero)
);
```

### **Tabela TRABALHA_EM**

Registra as horas trabalhadas pelos funcionários em cada projeto:

```sql
CREATE TABLE EMPRESA.TRABALHA_EM(
    Fcpf CHAR(11) NOT NULL,
    Pnr INT NOT NULL,
    Horas DECIMAL (3,1) NOT NULL,
    PRIMARY KEY (Fcpf, Pnr),
    FOREIGN KEY (Fcpf) REFERENCES FUNCIONARIO (Cpf),
    FOREIGN KEY (Pnr) REFERENCES PROJETO(Projnumero)
);
```

### **Selecionando o Esquema para Criação da Tabela**

Antes de criar tabelas, é preciso selecionar o banco de dados (ou esquema) onde elas serão criadas:

```sql
USE EMPRESA;
```

### **Criação da Tabela DEPENDENTE**

Esta tabela armazena informações sobre os

 dependentes dos funcionários:

```sql
CREATE TABLE DEPENDENTE(
    Fcpf CHAR(11) NOT NULL,
    Nome_dependente VARCHAR(15) NOT NULL,
    Sexo CHAR,
    Datanasc DATE,
    Parentesco VARCHAR(8),
    PRIMARY KEY (Fcpf, Nome_dependente),
    FOREIGN KEY (Fcpf) REFERENCES FUNCIONARIO(Cpf)
);
```

### **Deletando uma Tabela (DROP TABLE)**

O comando `DROP TABLE` é utilizado para excluir uma tabela existente e todos os seus dados do banco de dados. Por exemplo, para remover a tabela DEPENDENTE do banco de dados EMPRESA:

```sql
DROP TABLE EMPRESA.DEPENDENTE;
```

### **Alterando Estrutura da Tabela (ALTER TABLE)**

O `ALTER TABLE` permite várias operações de modificação na tabela. Abaixo estão exemplos de adicionar e remover colunas, e modificar o tipo de dados de uma coluna existente.

#### Adicionando uma nova coluna:

Para adicionar uma nova coluna `Email` à tabela FUNCIONARIO:

```sql
ALTER TABLE EMPRESA.FUNCIONARIO
ADD Email VARCHAR(255);
```

#### Removendo uma coluna:

Para remover a coluna `Minicial` da tabela FUNCIONARIO:

```sql
ALTER TABLE EMPRESA.FUNCIONARIO
DROP COLUMN Minicial;
```

#### Modificando o tipo de uma coluna:

Para modificar o tipo de dados da coluna `Salario` de `DECIMAL(10,2)` para `FLOAT` na tabela FUNCIONARIO:

```sql
ALTER TABLE EMPRESA.FUNCIONARIO
MODIFY COLUMN Salario FLOAT;
```

### **Esvaziando uma Tabela (TRUNCATE TABLE)**

`TRUNCATE TABLE` é usado para deletar todos os dados de uma tabela sem remover a tabela em si. Isso é útil para redefinir tabelas em desenvolvimento ou testes. Por exemplo, para apagar todos os registros da tabela TRABALHA_EM:

```sql
TRUNCATE TABLE EMPRESA.TRABALHA_EM;
```

### **Renomeando uma Tabela (RENAME TABLE)**

O comando `RENAME TABLE` é utilizado para mudar o nome de uma tabela. Por exemplo, para renomear a tabela LOCALIZACAO_DEP para LOCAL_DEP:

```sql
RENAME TABLE EMPRESA.LOCALIZACAO_DEP TO EMPRESA.LOCAL_DEP;
```

### **Criando um Índice (CREATE INDEX)**

`CREATE INDEX` melhora a velocidade de consulta ao criar um índice em colunas específicas. Por exemplo, criar um índice na coluna `Datanasc` da tabela FUNCIONARIO pode acelerar as buscas por datas de nascimento:

```sql
CREATE INDEX idx_datanasc ON EMPRESA.FUNCIONARIO (Datanasc);
```

### Referências Recomendadas:

1. **W3Schools SQL Tutorial**
   - **URL:** [https://www.w3schools.com/sql/](https://www.w3schools.com/sql/)
   - **Descrição:** O W3Schools oferece tutoriais abrangentes sobre SQL, cobrindo desde conceitos básicos até recursos avançados, incluindo comandos DDL, DML, e DCL. É um recurso excelente para iniciantes devido à sua abordagem passo a passo e exemplos interativos.

2. **MySQL Official Documentation**
   - **URL:** [https://dev.mysql.com/doc/](https://dev.mysql.com/doc/)
   - **Descrição:** A documentação oficial do MySQL é uma fonte inestimável de informações para usuários do MySQL, cobrindo todos os aspectos do banco de dados, desde a instalação até referências avançadas de comandos SQL, incluindo DDL.

3. **PostgreSQL Documentation**
   - **URL:** [https://www.postgresql.org/docs/](https://www.postgresql.org/docs/)
   - **Descrição:** Para alunos interessados em PostgreSQL, este recurso oferece uma documentação completa sobre como utilizar SQL no PostgreSQL, incluindo seções detalhadas sobre DDL.

4. **SQLZoo**
   - **URL:** [https://sqlzoo.net/](https://sqlzoo.net/)
   - **Descrição:** SQLZoo é uma plataforma interativa de aprendizado que permite aos usuários praticar SQL online. Contém tutoriais e exercícios que cobrem uma vasta gama de tópicos SQL, incluindo comandos DDL.

5. **Stanford University Databases Course**
   - **URL:** [https://lagunita.stanford.edu/courses/DB/SQL/SelfPaced/about](https://lagunita.stanford.edu/courses/DB/SQL/SelfPaced/about)
   - **Descrição:** Este curso online gratuito oferecido pela Universidade de Stanford aborda conceitos fundamentais de bancos de dados, com uma boa parte dedicada ao SQL, incluindo comandos DDL. É ideal para estudantes que procuram uma compreensão teórica além das habilidades práticas.

6. **Oracle SQL Documentation**
   - **URL:** [https://docs.oracle.com/en/database/oracle/oracle-database/](https://docs.oracle.com/en/database/oracle/oracle-database/)
   - **Descrição:** Para estudantes que trabalham com Oracle Database, esta documentação oferece informações completas sobre SQL e DDL no contexto do Oracle DB.

