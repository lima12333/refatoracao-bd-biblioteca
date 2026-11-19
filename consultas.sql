USE biblioteca_universitaria;

-- Consulta completa dos emprestimos sem duplicar autor, editora e ISBN na tabela Emprestimos.
SELECT
    e.id_emprestimo,
    a.nome AS aluno,
    l.titulo AS livro,
    l.isbn,
    au.nome AS autor,
    ed.nome AS editora,
    e.data_emprestimo,
    e.data_devolucao
FROM Emprestimos e
JOIN Alunos a ON a.id_aluno = e.id_aluno
JOIN Exemplares ex ON ex.id_exemplar = e.id_exemplar
JOIN Livros l ON l.id_livro = ex.id_livro
JOIN Autores au ON au.id_autor = l.id_autor
JOIN Editoras ed ON ed.id_editora = l.id_editora
ORDER BY e.data_emprestimo DESC;

-- Teste do indice de data de devolucao.
EXPLAIN
SELECT *
FROM Emprestimos
WHERE data_devolucao = '2026-11-20';

-- Emprestimos ainda nao devolvidos.
SELECT *
FROM Emprestimos
WHERE data_devolucao IS NULL;
