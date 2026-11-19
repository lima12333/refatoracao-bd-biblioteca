USE biblioteca_universitaria;

INSERT INTO Autores (nome) VALUES
('Machado de Assis'),
('George Orwell');

INSERT INTO Editoras (nome) VALUES
('Editora Exemplo A'),
('Editora Exemplo B');

INSERT INTO Livros (titulo, isbn, id_autor, id_editora) VALUES
('Dom Casmurro', '978000000001', 1, 1),
('1984', '978000000002', 2, 2);

INSERT INTO Exemplares (id_livro, codigo_tombo) VALUES
(1, 'TOMBO-001'),
(1, 'TOMBO-002'),
(2, 'TOMBO-003');

INSERT INTO Alunos (nome, matricula) VALUES
('Aluno Teste 1', '20260001'),
('Aluno Teste 2', '20260002');

INSERT INTO Emprestimos (id_aluno, id_exemplar, data_emprestimo, data_devolucao) VALUES
(1, 1, '2026-11-10', '2026-11-20'),
(2, 3, '2026-11-12', NULL);
