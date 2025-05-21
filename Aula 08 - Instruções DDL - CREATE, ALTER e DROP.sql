-- Cria a database caso ela não exista
CREATE DATABASE IF NOT EXISTS Biblioteca_aula7;

-- Coloca a database em uso
USE Biblioteca_aula7; 

-- Tabela AUTOR
CREATE TABLE Autor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50),
    ano_nascimento INT
);

CREATE TABLE Livro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    ano_publicacao YEAR,
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES Autor(id)
);



-- Adicionar coluna genero ao livro 
ALTER TABLE Livro
ADD genero VARCHAR(30);

-- Remover a coluna genero
ALTER TABLE Livro
DROP COLUMN genero;

-- Modificar o tipo da coluna nacionalidade
ALTER TABLE Autor
MODIFY COLUMN nacionalidade CHAR(2);

-- Modificar o nome e tipo da coluna id de Livro para isbn
ALTER TABLE Livro
CHANGE id isbn char(13);

--  Adicionar restrição de chave estrangeira com ON DELETE e ON UPDATE
-- veririca o código de crição da tabela Livo para ver o nome da constraint criada 'Livro_ibfk_1'
SHOW CREATE TABLE Livro;
-- remover a constraint criada
ALTER TABLE Livro
DROP FOREIGN KEY Livro_ibfk_1;

ALTER TABLE Livro
ADD CONSTRAINT fk_livro_autor
FOREIGN KEY (id_autor) REFERENCES Autor(id)
ON DELETE SET NULL
ON UPDATE CASCADE;

-- Criação da Tabela
CREATE TABLE Editora (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(50),
    site VARCHAR(100),
    fundacao YEAR
);

-- Adicionar a chave estrangeira editora_id na tabela Livro
ALTER TABLE Livro
ADD editora_id INT;

ALTER TABLE Livro
ADD CONSTRAINT fk_livro_editora
FOREIGN KEY (editora_id) REFERENCES Editora(id)
ON DELETE SET NULL
ON UPDATE CASCADE;

-- Restrições Adicionais com CHECK e NOT NULL
ALTER TABLE Autor
MODIFY COLUMN nacionalidade CHAR(2) NOT NULL;

ALTER TABLE Autor
ADD CONSTRAINT chk_nascimento
CHECK (ano_nascimento BETWEEN 1900 AND 2025);

