CREATE TABLE alunos ( 
	id INTEGER PRIMARY KEY, 
	nome VARCHAR(60) NOT NULL,
	nota FLOAT NOT NULL,
	turma INTEGER NOT NULL DEFAULT 0
);

INSERT INTO alunos (nome, nota) VALUES ("Alan", 10);
INSERT INTO alunos (nome, nota) VALUES ("Alberto", 5);
INSERT INTO alunos (nome, nota, turma) VALUES ("Luciana", 5, 1);
INSERT INTO alunos (nome, nota, turma) VALUES ("Paula", 7, 1);
INSERT INTO alunos (nome, nota, turma) VALUES ("Fernanda", 8, 2);
