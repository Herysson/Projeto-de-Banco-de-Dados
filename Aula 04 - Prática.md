
---

## 📘 Exemplo: **Departamento** e **Funcionário**

### 🔹 Entidades

1. **Departamento**
   - `id_departamento` (PK)
   - `nome_departamento`

2. **Funcionário**
   - `id_funcionario` (PK)
   - `nome_funcionario`
   - `cargo`
   - `id_departamento` (FK)

### 🔹 Relacionamento
- **Um Departamento pode ter muitos Funcionários**
(1:N)

---

### 💾 Modelagem SQL

```sql
CREATE TABLE Departamento (
    id_departamento INT PRIMARY KEY,
    nome_departamento VARCHAR(100)
);

CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY,
    nome_funcionario VARCHAR(100),
    cargo VARCHAR(50),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento)
);
```

### 📥 Inserindo dados

```sql
INSERT INTO Departamento VALUES (1, 'TI');
INSERT INTO Departamento VALUES (2, 'RH');

INSERT INTO Funcionario VALUES (101, 'Alice', 'Analista de Sistemas', 1);
INSERT INTO Funcionario VALUES (102, 'Bruno', 'Suporte Técnico', 1);
INSERT INTO Funcionario VALUES (103, 'Carla', 'Analista de RH', 2);
```

### 🔎 Consulta com JOIN

```sql
SELECT f.nome_funcionario, f.cargo, d.nome_departamento
FROM Funcionario f
JOIN Departamento d ON f.id_departamento = d.id_departamento;
```

---

## Exercícios:
Vamos praticar, abaixo estão alguns exercícios que podem ser desenvolvidos para fixação do conhecimento.


### **Exercício 1**
Considere o esquema textual abaixo. O esquema está incompleto, pois falta definir as chaves da tabela `empregado`. Nesta tabela, tanto `cod_empregado` quanto `NoPIS_PASEP` podem ser chave primária. Qual destas colunas você escolheria como chave primária? Justifique sua escolha.  

**Esquema:**
```
empregado (cod_empregado, nome, NoPIS_PASEP)
dependente ([cod_empregado, no_dependente], nome)
-- cod_empregado referencia empregado
```


### **Exercício 2**
Faça uma pesquisa sobre o tema **organização de arquivos** e veja o que significa **“chave secundária”**. Explique por que o conceito de chave secundária **não aparece na abordagem relacional (DER)**.  



### **Exercício 3**
Abaixo aparece um esquema parcial para um banco de dados relacional referente a uma universidade fictícia.
Identifique neste esquema as **chaves primárias** e **chaves estrangeiras**.

**Esquema:**
```
aluno (cod_al, nome, cod_cr)
curso (cod_cr, nome)
disciplina (cod_disc, nome, creditos, cod_depto)
curriculo (cod_cr, cod_disc, obrigatória_opcional)
conceito (cod_al, cod_disc, ano_semestre, conceito)
departamento (cod_depto, nome)
```



### **Exercício 4**
![image](https://github.com/user-attachments/assets/a8db1be4-9a94-4b73-8251-4a45672a22ea)

Considere o banco de dados cujo esquema diagramático é mostrado na acima.
No exemplo, os nomes das colunas são autoexplicativos, com exceção da sigla **CRM**, que representa o número do registro de um médico no Conselho Regional de Medicina.
Explique quais são as **verificações que o SGBD deve fazer para garantir a integridade referencial** nas seguintes situações:

- Uma linha é incluída na tabela `consulta`.
- Uma linha é excluída da tabela `paciente`.
- Um valor na coluna `CRM` em uma linha de `consulta` é alterado.
- Um valor na coluna `CRM` em uma linha de `médico` é alterado.  


### **Exercício 5** 
Usando a notação apresentada neste capítulo, construa um **esquema textual** para o banco de dados cujo esquema diagramático aparece na figura acima exercício 4:
