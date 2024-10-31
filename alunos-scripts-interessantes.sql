-- Script voltado para exibir as colunas nome, turma e uma adicional chamada "Quantidade de alunos na turma", que basicamente vai mostrar a quantidade de alunos que estão matriculados na turma do aluno
SELECT alunos.nome, alunos.turma, al.qtd_alunos AS "Quantidade de alunos na turma"
FROM alunos
JOIN (
	SELECT turma, COUNT(*) AS qtd_alunos
	FROM alunos
	GROUP BY turma
) al ON al.turma = alunos.turma;

-- Script voltado para exibir todos os dados acima, entretanto, adicionando a coluna "Média da turma"
SELECT alunos.nome, alunos.turma, al.qtd_alunos AS "Quantidade de alunos na turma", alunos.nota, al.md_turma AS "Média da turma"
FROM alunos
JOIN ( SELECT turma, COUNT(*) AS qtd_alunos, AVG(nota) AS md_turma
	FROM alunos
	GROUP BY turma
) al ON al.turma = alunos.turma;

