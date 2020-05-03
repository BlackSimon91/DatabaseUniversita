use universita;

insert into Studente (Matricola,Corso_Laurea,Nome,Cognome,Data_nascita,Codice_fiscale)
values (null,'Informatica','Carlo','Conti','1992/11/24','cntcrl24111992bri');     -- VINCOLO MATRICOLA 

insert into Docente (Matricola,Dipartimento,Nome,Cognome,Data_nascita,Codice_fiscale)
values (000001,'Informatica','Valentino','Rossi','1983/03/12',null);   -- VINCOLO CODICE FISCALE

insert into Modulo (Codice,Nome,Descrizione,CFU)
values (1,null,'Orale',9);                              -- VINCOLO NOME

insert into Esame (Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Note)
values(100000,1,000001,'2020/04/07',17,'Telematica');   -- VINCOLO VOTO

insert into Corso_Laurea(Codice,Nome,Descrizione)
values('uno','Informatica Triennale',null);             -- VINCOLO CODICE

insert into Dipartimento(Codice,Nome)
values(1,2);                                            -- VINCOLO NOME

insert into Sede(Codice,Indirizzo,Città)
values(null,'Piazza Umberto I,1','Bari');               -- VINCOLO CODICE

insert into Sede_Dipartimento(Codice_Sede,Codice_Dipartimento,Note)
values('uno',1,'');                                     -- VINCOLO CODICE_SEDE

