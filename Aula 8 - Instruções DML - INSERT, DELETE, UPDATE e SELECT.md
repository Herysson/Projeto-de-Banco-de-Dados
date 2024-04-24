
# Introdução à Linguagem de Manipulação de Dados (DML)

A Linguagem de Manipulação de Dados (DML, Data Manipulation Language) é uma família de sintaxes utilizada em sistemas de gerenciamento de banco de dados SQL para manipular dados dentro de tabelas. Essas operações permitem que os usuários insiram, consultem, atualizem e excluam dados - tarefas essenciais para a manutenção e análise de bases de dados. Diferente da Linguagem de Definição de Dados (DDL), que lida com a estrutura e esquema do banco de dados, a DML foca na manipulação dos dados contidos nas estruturas existentes. Essas operações são cruciais para o dia a dia dos desenvolvedores, analistas de dados e administradores de bancos de dados, pois proporcionam a flexibilidade e o poder necessários para manter os dados precisos e úteis.

- `INSERT`: para inserir novos registros em uma tabela.
- `UPDATE`: para modificar registros existentes em uma tabela, com base em condições específicas.
- `DELETE`: para remover registros de uma tabela, com opções para deletar registros específicos ou todos os registros.
- `SELECT`: para consultar dados de uma tabela, permitindo especificar colunas particulares ou todas as colunas.
- `WHERE`: para filtrar registros em comandos `SELECT`, `UPDATE`, e `DELETE`, baseando-se em condições definidas.
- `DISTINCT`: para retornar apenas valores distintos (não duplicados) em uma consulta.
- `ANY`: para verificar se qualquer valor em um subconjunto atende a uma condição.
- `ALL`: para verificar se todos os valores em um subconjunto atendem a uma condição.
- `LIKE`: para buscar registros que correspondam a um padrão especificado.
- `BETWEEN`: para selecionar registros dentro de um intervalo específico de valores.
- `ORDER BY`: para ordenar os registros retornados por uma consulta, em ordem ascendente ou descendente.

## `INSERT`
O comando `INSERT INTO` é utilizado para adicionar novos registros a uma tabela no MySQL. Há duas maneiras principais de utilizar este comando:

### **1. Especificando os nomes das colunas e os valores a serem inseridos:**
Você pode especificar explicitamente quais colunas receberão os dados e fornecer os valores correspondentes. Isso é útil quando você não deseja inserir valores para todas as colunas da tabela.

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, coluna3, ...)
VALUES (valor1, valor2, valor3, ...);
```

### **Exemplo prático: Inserindo valores no Departamento**
Para inserir informações em uma tabela `Departamento` com as colunas `Dnome` (nome do departamento) e `Dnumero` (número do departamento):

```sql
INSERT INTO DEPARTAMENTO (Dnome, Dnumero)
VALUES('Matriz', 1);
```

### **2. Inserindo valores para todas as colunas da tabela:**
Se você estiver adicionando valores para todas as colunas da tabela, pode omitir os nomes das colunas na consulta SQL. No entanto, é crucial que a ordem dos valores corresponda à ordem das colunas na definição da tabela.

```sql
INSERT INTO nome_da_tabela
VALUES (valor1, valor2, valor3, ...);
```

### **Exemplo prático: Inserindo funcionários com cargo de gerência**
Se a tabela `Funcionario` incluir colunas como nome, inicial do segundo nome, sobrenome, CPF, data de nascimento, endereço, sexo, salário, número do supervisor e número do departamento, respectivamente, você poderia inserir um registro assim:

```sql
INSERT INTO FUNCIONARIO
VALUES ('Jorge', 'E', 'Brito', '88866555576', '1937-11-10', 'Rua do Horto, 35, São Paulo, SP', 'M', 55000, NULL, 1);
```

Vamos elaborar a seção sobre o comando `UPDATE` com base nas informações fornecidas, incluindo o exemplo específico para atualização na tabela `Departamento`. A estrutura seguirá o modelo apresentado, com detalhamento da sintaxe e um aviso sobre a importância do uso da cláusula `WHERE`.

---

## `UPDATE`
O comando `UPDATE` é utilizado para modificar registros existentes em uma tabela. Este comando é particularmente poderoso e deve ser usado com cuidado para evitar alterações não intencionais.

### **Sintaxe do UPDATE**
A sintaxe básica para o comando `UPDATE` é:

```sql
UPDATE nome_da_tabela
SET coluna1 = valor1, coluna2 = valor2, ...
WHERE condição;
```

**Nota:** Tenha cuidado ao atualizar registros em uma tabela! Observe a cláusula `WHERE` no comando `UPDATE`. A cláusula `WHERE` especifica quais registros devem ser atualizados. Se você omitir a cláusula `WHERE`, todos os registros na tabela serão atualizados!

### **Exemplo prático: Atualizando informações do departamento**
Suponha que você queira atualizar o CPF do gerente e a data de início de um gerente específico em um departamento. Usando a tabela `Departamento`, você pode especificar o número do departamento na cláusula `WHERE` para garantir que apenas o departamento correto seja atualizado.

```sql
UPDATE DEPARTAMENTO
SET Cpf_gerente = '88866555576', Data_inicio_gerente = '1981-06-19'
WHERE Dnumero = 1;
```

Este comando atualiza o `Cpf_gerente` e `Data_inicio_gerente` para o departamento com `Dnumero` igual a 1. É fundamental incluir a cláusula `WHERE` para assegurar que somente o departamento desejado seja afetado pela atualização.

Com base nas orientações fornecidas, vamos criar a seção sobre o comando `DELETE` para a aula de SQL, enfatizando o uso correto da cláusula `WHERE` e apresentando o exemplo específico de exclusão de um registro de funcionário chamado Juca. Aqui está o conteúdo:

---

## `DELETE`
O comando `DELETE` é utilizado para excluir registros existentes de uma tabela. Este comando deve ser manuseado com extremo cuidado para evitar exclusões não intencionais de dados.

### **Sintaxe do DELETE**
A sintaxe básica para o comando `DELETE` é:

```sql
DELETE FROM nome_da_tabela WHERE condição;
```

**Nota:** Tenha cuidado ao deletar registros em uma tabela! Observe a cláusula `WHERE` no comando `DELETE`. A cláusula `WHERE` especifica quais registros devem ser deletados. Se você omitir a cláusula `WHERE`, todos os registros na tabela serão deletados!

### **Excluir Todos os Registros**
É possível excluir todas as linhas em uma tabela sem deletar a tabela em si. Isso significa que a estrutura da tabela, atributos e índices permanecerão intactos:

```sql
DELETE FROM nome_da_tabela;
```

### **Exemplo prático: Deletando registros específicos**
Para excluir um registro específico, como um funcionário chamado Juca com CPF `00000000000`, você usaria:

```sql
DELETE FROM Funcionario
WHERE nome = 'Juca' AND cpf = '00000000000';
```

Este comando garante que apenas o registro do funcionário chamado Juca com o CPF especificado seja deletado, evitando a exclusão de outros dados.

Vamos elaborar a seção sobre o comando `SELECT` de acordo com as instruções fornecidas, abordando sua sintaxe básica, o uso de cláusulas como `WHERE`, `DISTINCT`, operadores `ANY` e `ALL`, além de outras funcionalidades importantes como `LIKE`, `BETWEEN` e `ORDER BY`.

---

## `SELECT`
O comando `SELECT` é utilizado para selecionar dados de um banco de dados.

Os dados retornados são armazenados em uma tabela de resultado, chamada de conjunto de resultados (result-set).

### **Sintaxe do SELECT**
```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela;
```

Aqui, `coluna1`, `coluna2`, ... são os nomes dos campos da tabela dos quais você deseja selecionar dados. Se você deseja selecionar todos os campos disponíveis na tabela, use a seguinte sintaxe:
```sql
SELECT * FROM nome_da_tabela;
```

## `WHERE`
### **Cláusula WHERE**
A cláusula `WHERE` é usada para filtrar registros, sendo utilizada para extrair apenas aqueles registros que satisfazem uma condição especificada.

#### **Sintaxe do WHERE**
```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
WHERE condição;
```
### **Operadores**

| Operador | Descrição                                | Exemplo                                     |
|----------|------------------------------------------|---------------------------------------------|
| =        | Igual                                    | `WHERE coluna = valor`                      |
| >        | Maior que                                | `WHERE coluna > valor`                      |
| <        | Menor que                                | `WHERE coluna < valor`                      |
| >=       | Maior ou igual                           | `WHERE coluna >= valor`                     |
| <=       | Menor ou igual                           | `WHERE coluna <= valor`                     |
| <>       | Diferente. Obs.: Em algumas versões de SQL, este operador pode ser escrito como != | `WHERE coluna <> valor`   |
| BETWEEN  | Entre um determinado intervalo           | `WHERE coluna BETWEEN valor1 E valor2`      |
| LIKE     | Buscar por um padrão                     | `WHERE coluna LIKE 'padrão%'`               |
| IN       | Para especificar múltiplos valores possíveis para uma coluna | `WHERE coluna IN (valor1, valor2)` |


Essa tabela em Markdown organiza claramente os operadores usados na cláusula `WHERE` junto com suas descrições e exemplos de uso prático, tornando-a uma referência útil para qualquer pessoa aprendendo ou revisando SQL.

## `DISTINCT`
### **O comando SELECT DISTINCT**
O comando `SELECT DISTINCT` é usado para retornar apenas valores distintos (diferentes).

#### **Sintaxe do SELECT DISTINCT**
```sql
SELECT DISTINCT coluna1, coluna2, ...
FROM nome_da_tabela;
```

## Operadores `ANY` e `ALL`
### **ANY**
O operador `ANY` retorna `TRUE` se QUALQUER um dos valores da subconsulta atender à condição.

#### **Sintaxe do ANY**
```sql
SELECT nome_coluna(s)
FROM nome_da_tabela
WHERE nome_coluna operador ANY
  (SELECT nome_coluna
   FROM nome_da_tabela
   WHERE condição);
```

### **ALL**
O operador `ALL` retorna `TRUE` se TODOS os valores da subconsulta atenderem à condição.

#### **Sintaxe do ALL**
```sql
SELECT ALL nome_coluna(s)
FROM nome_da_tabela
WHERE condição;
```

## `LIKE`
### **Operador LIKE**
O operador `LIKE` é usado em uma cláusula `WHERE` para buscar um padrão especificado em uma coluna.

#### **Sintaxe do LIKE**
```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
WHERE colunaN LIKE padrão;
```

## `BETWEEN`
### **Operador BETWEEN**
O operador `BETWEEN` seleciona valores dentro de um intervalo dado. Os valores podem ser números, textos ou datas.

#### **Sintaxe do BETWEEN**
```sql
SELECT nome_coluna(s)
FROM nome_da_tabela
WHERE nome_coluna BETWEEN valor1 E valor2;
```

## `ORDER BY`
### **Palavra-chave ORDER BY**
A palavra-chave `ORDER BY` é usada para ordenar o conjunto de resultados em ordem ascendente ou descendente.

#### **Sintaxe do ORDER BY**
```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
ORDER BY coluna1, coluna2, ... ASC|DESC;
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


