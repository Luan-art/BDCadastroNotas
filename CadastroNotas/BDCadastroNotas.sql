CREATE TABLE Aluno(
    ra varchar(5) not null, 
    cpf varchar(11) unique not null,
    nome varchar(50) not null,
    constraint pkAluno primary key (ra)
);
CREATE TABLE Disciplina(
    cod varchar(5) not null,
    nome varchar(30) not null,
    todasAula int not null,
    constraint pkDisciplina primary key (cod)
);
CREATE TABLE AlunoDisciplina(
    semestre varchar(6) not null,
    raAluno varchar(5) not null,
    codDisciplina varchar(5) not null,
    situacao char(1),
    faltas int,
    nota1 numeric (3,2),
    nota2 numeric (3,1),
    substitutiva numeric (3,1),
    media numeric (3,1),
    Constraint pkAlunoDisciplina PRIMARY KEY (semestre, raAluno, codDisciplina),
    FOREIGN KEY (raAluno) REFERENCES Aluno(ra),
    FOREIGN KEY (codDisciplina) REFERENCES Disciplina(cod)
);