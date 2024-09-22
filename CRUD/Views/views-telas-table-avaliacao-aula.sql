CREATE VIEW View_Alunos AS
SELECT
    u.p_nome,
    u.s_nome,
    u.uk_matricula as matricula, 
	am.fk_turma as matriculado_em
FROM
    Usuario u join aluno_matriculado am
ON am.fk_aluno=u.id
WHERE
    usr_role = 'ALUNO';


CREATE VIEW View_Aulas AS
SELECT
	a.id,
    a.descricao AS descricao,
    a.data_ocorreu,
	a.fk_turma as cod_turma
FROM
    Aula a
order by a.fk_turma asc;

CREATE VIEW View_avaliacoes_aulas AS
SELECT
	a.fk_aula as aula_avaliada,
	u.uk_matricula as matricula_aluno,
	a.nota,
    a.descricao,
    a.data_avaliacao as data_avaliada
FROM avaliacao_aula_aluno a JOIN usuario u
ON a.fk_aluno_matriculado=u.id
order by a.fk_aula asc;

