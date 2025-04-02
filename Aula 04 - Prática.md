
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
