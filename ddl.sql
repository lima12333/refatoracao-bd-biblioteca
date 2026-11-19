CREATE DATABASE IF NOT EXISTS biblioteca_universitaria;
USE biblioteca_universitaria;

CREATE TABLE Autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL
);

CREATE TABLE Editoras (
    id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL
);

CREATE TABLE Livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    isbn VARCHAR(20) NOT NULL UNIQUE,
    id_autor INT NOT NULL,
    id_editora INT NOT NULL,
    CONSTRAINT fk_livro_autor FOREIGN KEY (id_autor) REFERENCES Autores(id_autor),
    CONSTRAINT fk_livro_editora FOREIGN KEY (id_editora) REFERENCES Editoras(id_editora)
);

CREATE TABLE Exemplares (
    id_exemplar INT AUTO_INCREMENT PRIMARY KEY,
    id_livro INT NOT NULL,
    codigo_tombo VARCHAR(40) NOT NULL UNIQUE,
    CONSTRAINT fk_exemplar_livro FOREIGN KEY (id_livro) REFERENCES Livros(id_livro)
);

CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    matricula VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Emprestimos (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_exemplar INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE NULL,
    CONSTRAINT fk_emprestimo_aluno FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    CONSTRAINT fk_emprestimo_exemplar FOREIGN KEY (id_exemplar) REFERENCES Exemplares(id_exemplar)
);

CREATE INDEX idx_emprestimos_data_devolucao
ON Emprestimos(data_devolucao);
