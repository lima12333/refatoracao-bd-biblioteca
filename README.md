# Sprint Agil - Tema 12: Biblioteca Universitaria

## Cenario
A tabela Emprestimos repetia nome do autor, editora e ISBN a cada retirada e nao possuia indice na data de devolucao.

## Solucao
- Separacao de Autores, Editoras, Livros, Exemplares e Alunos.
- Emprestimos passa a guardar apenas referencias por chaves estrangeiras.
- Criacao de chaves primarias e estrangeiras.
- Criacao do indice `idx_emprestimos_data_devolucao`.
- Scripts DDL, DML e consultas de teste.

## Arquivos
- `ddl.sql`: estrutura normalizada e indice.
- `dml.sql`: dados ficticios para teste.
- `consultas.sql`: consultas e EXPLAIN.
- `Relatorio_Sprint_Tema12.docx`: relatorio breve da Sprint.

## Integrantes
- Lucas Lima Rodrigues Santos
- [Nome do integrante 2]

## Ferramentas
Trello, GitHub, Git e MySQL.
