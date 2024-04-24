
# **Criação de Esquemas e Tabelas em SQL**

A linguagem de definição de dados (DDL, Data Definition Language) no SQL é usada para criar e modificar a estrutura de banco de dados e tabelas. Abaixo estão exemplos de como utilizar os comandos DDL no MySQL, acompanhados do uso da IDE Workbench.

- `CREATE DATABASE`: para criar um novo banco de dados.
- `DROP DATABASE`: para excluir um banco de dados existente.
- `CREATE TABLE`: para criar novas tabelas dentro de um banco de dados.
- `DROP TABLE`: para excluir uma tabela existente e todos os seus dados.
- `TRUNCATE TABLE`: para remover todos os registros de uma tabela sem excluir a tabela em si.
- `RENAME TABLE`: para renomear uma tabela existente.
- `ALTER TABLE`: para modificar a estrutura de uma tabela existente, como adicionar uma nova restrição de chave estrangeira.
- `PRIMARY KEY`: para definir a chave primária de uma tabela.
- `FOREIGN KEY`: para definir uma chave estrangeira, estabelecendo uma relação entre tabelas.
- `CREATE INDEX`: para melhorar a velocidade de busca/retrieval de dados, os índices podem ser criados em colunas específicas. 

## `CREATE DATABASE`

O comando `CREATE DATABASE` é utilizado para criar um novo banco de dados. Por exemplo, para criar um banco de dados chamado EMPRESA, utilizamos o seguinte comando SQL:

```sql
CREATE DATABASE EMPRESA;
```

## `DROP DATABASE`

Para remover um banco de dados existente, utilizamos o comando `DROP DATABASE`. Este comando deletará o banco de dados EMPRESA e todos os seus dados:

```sql
DROP DATABASE EMPRESA;
```
O comando `CREATE TABLE` no SQL é fundamental para a estruturação de bancos de dados relacionais. Ele permite a criação de tabelas para armazenar dados estruturados. Cada tabela é composta por linhas e colunas, onde as colunas definem o tipo de dado (como texto, número, data, entre outros), e as linhas representam os registros individuais que contêm os dados efetivos.

## `CREATE TABLE`

```sql
CREATE TABLE nome_da_tabela (
    nome_coluna1 tipo_de_dado1 restricoes,
    nome_coluna2 tipo_de_dado2 restricoes,
    ...
);
```

- **nome_da_tabela**: O nome que você deseja dar para a tabela no banco de dados.
- **nome_coluna**: O nome da coluna dentro da tabela.
- **tipo_de_dado**: O tipo de dado que a coluna irá armazenar, como INT (para números inteiros), VARCHAR (para strings de texto variável), DATE (para datas), entre outros.
- **restricoes**: Define regras adicionais para os dados da coluna, como NOT NULL (impede valores nulos), UNIQUE (valores únicos), PRIMARY KEY (chave primária), entre outros.

- **Chave Primária (PRIMARY KEY)**: Identificador único para cada registro na tabela. Garante que cada valor na coluna seja único e não nulo.
- **Restrições de Unicidade (UNIQUE)**: Garante que todos os valores na coluna sejam únicos, evitando duplicatas.
- **NOT NULL**: Assegura que a coluna não possa ter um valor nulo, ou seja, cada registro deve ter um valor válido para essa coluna.

O comando `CREATE TABLE` é apenas o início da definição da estrutura de um banco de dados. Após criar as tabelas, outros comandos DDL podem ser usados para alterá-las (`ALTER TABLE`), excluí-las (`DROP TABLE`), ou para criar relações entre elas (definindo chaves estrangeiras com `FOREIGN KEY`).

O comando `ALTER TABLE` no SQL é usado para modificar a estrutura de uma tabela existente após sua criação. Esse comando é extremamente versátil e permite uma ampla gama de operações, como adicionar ou remover colunas, mudar o tipo de dado de uma coluna, adicionar ou remover restrições e modificar chaves primárias ou estrangeiras. Essas modificações são essenciais durante o ciclo de vida de um banco de dados para adaptá-lo a mudanças nos requisitos de dados da aplicação.

### Tipos de Dados 

Cada coluna em uma tabela de banco de dados deve ter um nome e um tipo de dado.

Um desenvolvedor SQL deve decidir que tipo de dado será armazenado em cada coluna ao criar uma tabela. O tipo de dado é uma orientação para o SQL entender que tipo de dado é esperado em cada coluna, e também identifica como o SQL interagirá com os dados armazenados.

No MySQL, existem três principais tipos de dados: string, numérico e data e hora. 

***Dados do Tipo String***

Descrição dos principais tipos de dados de string suportados pelo MySQL, incluindo detalhes sobre o tamanho e uso de cada tipo.

| Tipo de Dado   | Descrição |
|----------------|-----------|
| `CHAR(tamanho)` | Uma string de comprimento fixo (pode conter letras, números e caracteres especiais). O parâmetro `tamanho` especifica o comprimento da coluna em caracteres - pode ser de 0 a 255. O padrão é 1. |
| `VARCHAR(tamanho)` | Uma string de comprimento variável (pode conter letras, números e caracteres especiais). O parâmetro `tamanho` especifica o comprimento máximo da coluna em caracteres - pode ser de 0 a 65535. |
| `BINARY(tamanho)` | Equivalente ao `CHAR()`, mas armazena strings de bytes binários. O parâmetro `tamanho` especifica o comprimento da coluna em bytes. O padrão é 1. |
| `VARBINARY(tamanho)` | Equivalente ao `VARCHAR()`, mas armazena strings de bytes binários. O parâmetro `tamanho` especifica o comprimento máximo da coluna em bytes. |
| `TINYBLOB` | Para BLOBs (Objetos Binários Grandes). Comprimento máximo: 255 bytes. |
| `TINYTEXT` | Armazena uma string com comprimento máximo de 255 caracteres. |
| `TEXT(tamanho)` | Armazena uma string com comprimento máximo de 65,535 bytes. |
| `BLOB(tamanho)` | Para BLOBs (Objetos Binários Grandes). Armazena até 65,535 bytes de dados. |
| `MEDIUMTEXT` | Armazena uma string com comprimento máximo de 16,777,215 caracteres. |
| `MEDIUMBLOB` | Para BLOBs (Objetos Binários Grandes). Armazena até 16,777,215 bytes de dados. |
| `LONGTEXT` | Armazena uma string com comprimento máximo de 4,294,967,295 caracteres. |
| `LONGBLOB` | Para BLOBs (Objetos Binários Grandes). Armazena até 4,294,967,295 bytes de dados. |
| `ENUM(val1, val2, val3, ...)` | Um objeto de string que pode ter apenas um valor, escolhido de uma lista de valores possíveis. Você pode listar até 65535 valores em uma lista ENUM. Se um valor for inserido que não está na lista, um valor em branco será inserido. Os valores são classificados na ordem em que você os insere. |
| `SET(val1, val2, val3, ...)` | Um objeto de string que pode ter 0 ou mais valores, escolhidos de uma lista de valores possíveis. Você pode listar até 64 valores em uma lista SET. |

***Dados do Tipo Numerico***

Descrição dos tipos de dados numéricos suportados pelo MySQL, explicando o intervalo de valores e as especificações de cada tipo.

| Tipo de Dado          | Descrição |
|-----------------------|-----------|
| `BIT(tamanho)`        | Tipo de valor de bit. O número de bits por valor é especificado em `tamanho`. O parâmetro `tamanho` pode conter um valor de 1 a 64. O valor padrão para `tamanho` é 1. |
| `TINYINT(tamanho)`    | Um inteiro muito pequeno. O intervalo com sinal vai de -128 a 127. O intervalo sem sinal vai de 0 a 255. O parâmetro `tamanho` especifica a largura máxima de exibição (que é 255). |
| `BOOL`                | Zero é considerado como falso, valores não zero são considerados como verdadeiros. |
| `BOOLEAN`             | Equivalente a `BOOL`. |
| `SMALLINT(tamanho)`   | Um pequeno inteiro. O intervalo com sinal vai de -32768 a 32767. O intervalo sem sinal vai de 0 a 65535. O parâmetro `tamanho` especifica a largura máxima de exibição (que é 255). |
| `MEDIUMINT(tamanho)`  | Um inteiro médio. O intervalo com sinal vai de -8388608 a 8388607. O intervalo sem sinal vai de 0 a 16777215. O parâmetro `tamanho` especifica a largura máxima de exibição (que é 255). |
| `INT(tamanho)`        | Um inteiro médio. O intervalo com sinal vai de -2147483648 a 2147483647. O intervalo sem sinal vai de 0 a 4294967295. O parâmetro `tamanho` especifica a largura máxima de exibição (que é 255). |
| `INTEGER(tamanho)`    | Equivalente a `INT(tamanho)`. |
| `BIGINT(tamanho)`     | Um grande inteiro. O intervalo com sinal vai de -9223372036854775808 a 9223372036854775807. O intervalo sem sinal vai de 0 a 18446744073709551615. O parâmetro `tamanho` especifica a largura máxima de exibição (que é 255). |
| `FLOAT(tamanho, d)`   | Um número de ponto flutuante. O número total de dígitos é especificado em `tamanho`. O número de dígitos após o ponto decimal é especificado no parâmetro `d`. Esta sintaxe está obsoleta no MySQL 8.0.17 e será removida em versões futuras do MySQL. |
| `FLOAT(p)`            | Um número de ponto flutuante. O MySQL usa o valor `p` para determinar se usa `FLOAT` ou `DOUBLE` para o tipo de dado resultante. Se `p` for de 0 a 24, o tipo de dado se torna `FLOAT()`. Se `p` for de 25 a 53, o tipo de dado se torna `DOUBLE()`. |
| `DOUBLE(tamanho, d)`  | Um número de ponto flutuante de tamanho normal. O número total de dígitos é especificado em `tamanho`. O número de dígitos após o ponto decimal é especificado no parâmetro `d`. |
| `DOUBLE PRECISION(tamanho, d)` | Igual a `DOUBLE(tamanho, d)`. |
| `DECIMAL(tamanho, d)` | Um número de ponto fixo exato. O número total de dígitos é especificado em `tamanho`. O número de dígitos após o ponto decimal é especificado no parâmetro `d`. O número máximo para `tamanho` é 65. O número máximo para `d` é 30. O valor padrão para `tamanho` é 10. O valor padrão para `d` é 0. |
| `DEC(tamanho, d)`     | Equivalente a `DECIMAL(tamanho,d)`. |


***Dados do Tipo Data***

Descrição dos tipos de dados de data e hora suportados pelo MySQL, detalhando o formato e o intervalo de valores suportados.

| Tipo de Dado    | Descrição |
|-----------------|-----------|
| `DATE`          | Armazena uma data. Formato: `YYYY-MM-DD`. O intervalo suportado é de '1000-01-01' a '9999-12-31'. |
| `DATETIME(fsp)` | Combinação de data e hora. Formato: `YYYY-MM-DD hh:mm:ss`. O intervalo suportado é de '1000-01-01 00:00:00' a '9999-12-31 23:59:59'. Adicionando `DEFAULT` e `ON UPDATE` na definição da coluna para obter inicialização automática e atualização para a data e hora atuais. |
| `TIMESTAMP(fsp)`| Um carimbo de data/hora. Os valores de `TIMESTAMP` são armazenados como o número de segundos desde a época Unix ('1970-01-01 00:00:00' UTC). Formato: `YYYY-MM-DD hh:mm:ss`. O intervalo suportado é de '1970-01-01 00:00:01' UTC a '2038-01-19 03:14:07' UTC. A inicialização automática e atualização para a data e hora atuais podem ser especificadas usando `DEFAULT CURRENT_TIMESTAMP` e `ON UPDATE CURRENT_TIMESTAMP` na definição da coluna. |
| `TIME(fsp)`     | Armazena um horário. Formato: `hh:mm:ss`. O intervalo suportado é de '-838:59:59' a '838:59:59'. |
| `YEAR`          | Armazena um ano em formato de quatro dígitos. Valores permitidos no formato de quatro dígitos: de 1901 a 2155, e 0000. O MySQL 8.0 não suporta o formato de ano com dois dígitos. |

Estes tipos de dados são essenciais para o gerenciamento eficaz de informações relacionadas a datas e horários, permitindo uma ampla gama de funcionalidades, desde o agendamento simples até complexas funções de controle temporal em

### Tipos Restrições - MySQL Constraints

As restrições SQL são usadas para especificar regras para os dados em uma tabela.

Restrições são usadas para limitar o tipo de dados que podem ser inseridos em uma tabela. Isso garante a precisão e a confiabilidade dos dados na tabela. Se houver qualquer violação entre a restrição e a ação de dados, a ação é abortada.

As seguintes restrições são comumente usadas em SQL:

- `NOT NULL` - Garante que uma coluna não possa ter um valor NULL
- `UNIQUE` - Garante que todos os valores em uma coluna sejam diferentes
- `PRIMARY KEY` - Uma combinação de `NOT NULL` e `UNIQUE`. Identifica de forma única cada linha em uma tabela
- `FOREIGN KEY` - Impede ações que destruiriam as ligações entre tabelas
- `CHECK` - Garante que os valores em uma coluna satisfaçam uma condição específica
- `DEFAULT` - Define um valor padrão para uma coluna se nenhum valor for especificado
- `AUTO INCREMENT` - Incrementa automaticamente o valor da coluna para cada nova linha inserida, geralmente usado com chaves primárias
- `CREATE INDEX` - Usado para criar e recuperar dados do banco de dados muito rapidamente.

## `DROP TABLE`

O comando `DROP TABLE` é utilizado para excluir uma tabela existente e todos os seus dados do banco de dados. 
```sql
DROP TABLE table_name;
```

## `TRUNCATE TABLE`

`TRUNCATE TABLE` é usado para deletar todos os dados de uma tabela sem remover a tabela em si. Isso é útil para redefinir tabelas em desenvolvimento ou testes. 

```sql
TRUNCATE TABLE table_name;
```
## `RENAME TABLE`

O comando `RENAME TABLE` é utilizado para alterar o nome de uma tabela existente em um banco de dados.

```sql
RENAME TABLE table_name TO new_table_name;
```

## `ALTER TABLE`

O comando `ALTER TABLE` pode assumir várias formas, dependendo da operação que você deseja realizar. Aqui estão alguns exemplos das operações mais comuns:

### Adicionar uma Nova Coluna

```sql
ALTER TABLE nome_da_tabela
ADD nome_da_nova_coluna tipo_de_dado restricoes;
```

### Remover uma Coluna

```sql
ALTER TABLE nome_da_tabela
DROP COLUMN nome_da_coluna;
```

### Modificar o Tipo de Dado de uma Coluna

```sql
ALTER TABLE nome_da_tabela
MODIFY COLUMN nome_da_coluna novo_tipo_de_dado;
```

### Adicionar uma Restrição de Chave Estrangeira

```sql
ALTER TABLE nome_da_tabela
ADD CONSTRAINT nome_da_restricao
FOREIGN KEY (nome_da_coluna) REFERENCES outra_tabela(nome_da_coluna_na_outra_tabela);
```

### Adicionar uma Chave Primária

```sql
ALTER TABLE nome_da_tabela
ADD PRIMARY KEY (nome_da_coluna);
```

- O `ALTER TABLE` é um comando poderoso que deve ser usado com cautela, especialmente em tabelas com grandes volumes de dados, pois algumas operações podem ser custosas em termos de processamento e podem impactar o desempenho.
- Sempre que possível, planeje a estrutura de suas tabelas com antecedência para minimizar a necessidade de usar `ALTER TABLE` extensivamente.
- Operações de `ALTER TABLE` podem requerer privilégios específicos no banco de dados, dependendo do sistema de gerenciamento de banco de dados (SGBD) que você está utilizando.

O comando `ALTER TABLE` é uma ferramenta essencial para o desenvolvimento e manutenção de um esquema de banco de dados flexível e adaptável às necessidades em constante mudança de uma aplicação.

Os comandos `PRIMARY KEY` e `FOREIGN KEY` são fundamentais na definição de relações entre tabelas em um banco de dados relacional, garantindo a integridade dos dados através de restrições de chave.

## `PRIMARY KEY`

A `PRIMARY KEY` é uma restrição que identifica de forma única cada registro em uma tabela de banco de dados. Cada tabela deve ter uma chave primária, e nenhum valor da chave primária pode ser `NULL`, pois a chave primária é o meio pelo qual as linhas da tabela são identificadas de forma única.

- **Unicidade**: Garante que cada valor na coluna ou conjunto de colunas da chave primária seja único em toda a tabela.
- **Não nulidade**: Garante que cada registro na tabela tenha um valor na coluna ou conjunto de colunas da chave primária, isto é, não permite valores `NULL`.

### Exemplo de Uso:

```sql
CREATE TABLE Funcionario (
    FuncionarioID INT NOT NULL,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    PRIMARY KEY (FuncionarioID)
);
```

Neste exemplo, `FuncionarioID` é definido como a chave primária da tabela `Funcionario`, o que significa que cada funcionário terá um `FuncionarioID` único.

## `FOREIGN KEY`

Uma `FOREIGN KEY` é uma restrição usada para estabelecer uma relação de "chave estrangeira" entre duas tabelas. Ela é uma coluna ou conjunto de colunas que faz referência à chave primária ou a uma chave única de outra tabela. As chaves estrangeiras efetivamente estabelecem uma ligação entre os dados em duas tabelas, garantindo a integridade referencial dos dados.

- **Integridade Referencial**: Garante que as relações entre as tabelas permaneçam consistentes. Ou seja, se uma tabela tem uma chave estrangeira que faz referência a outra tabela, todos os valores da chave estrangeira devem corresponder a um valor existente na tabela referenciada.

- **Chaves Compostas**: Tanto `PRIMARY KEY` quanto `FOREIGN KEY` podem consistir em mais de uma coluna. Quando múltiplas colunas são usadas, elas são conhecidas como chaves compostas.
- **Ações em Cascata**: Ao definir restrições de chave estrangeira, você pode especificar ações em cascata para atualizações e exclusões, como `CASCADE`, `SET NULL`, ou `NO ACTION`, que determinam o que acontece com as linhas referenciadas quando os dados são alterados ou excluídos na tabela de referência.

O uso adequado de `PRIMARY KEY` e `FOREIGN KEY` não só garante a integridade dos dados dentro de um banco de dados mas também define claramente as relações entre diferentes conjuntos de dados, facilitando a realização de consultas complexas e a manutenção da consistência dos dados.


## Exemplo
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

## **Deletando uma Tabela (DROP TABLE)**

Para remover a tabela DEPENDENTE do banco de dados EMPRESA:

```sql
DROP TABLE EMPRESA.DEPENDENTE;
```


## **Esvaziando uma Tabela (TRUNCATE TABLE)**

Ppara apagar todos os registros da tabela TRABALHA_EM:

```sql
TRUNCATE TABLE EMPRESA.TRABALHA_EM;
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

## Referências Recomendadas:

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

