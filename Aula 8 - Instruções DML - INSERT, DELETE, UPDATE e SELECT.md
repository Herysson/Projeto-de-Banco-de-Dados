

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
```markdown
| Operator | Description                   | Example                           |
|----------|-------------------------------|-----------------------------------|
| =        | Equal                         | `WHERE coluna = valor`            |
| >        | Greater than                  | `WHERE coluna > valor`            |
| <        | Less than                     | `WHERE coluna < valor`            |
| >=       | Greater than or equal         | `WHERE coluna >= valor`           |
| <=       | Less than or equal            | `WHERE coluna <= valor`           |
| <>       | Not equal. Note: In some versions of SQL, this operator may be written as != | `WHERE coluna <> valor` |
| BETWEEN  | Between a certain range       | `WHERE coluna BETWEEN valor1 AND valor2` |
| LIKE     | Search for a pattern          | `WHERE coluna LIKE 'padrão%'`     |
| IN       | To specify multiple possible values for a column | `WHERE coluna IN (valor1, valor2)` |
```

Essa tabela em Markdown organiza claramente os operadores usados na cláusula `WHERE` junto com suas descrições e exemplos de uso prático, tornando-a uma referência útil para qualquer pessoa aprendendo ou revisando SQL.
## `SELECT DISTINCT`
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

---

Esta seção abrange os aspectos fundamentais da consulta de dados usando SQL, introduzindo os alunos a técnicas básicas e avançadas para manipulação e filtragem de dados. Se você deseja adicionar mais exemplos práticos ou precisar de ajustes adicionais, estou à disposição para ajudar!
