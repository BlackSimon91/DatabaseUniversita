create database Universita;
use Universita;

CREATE TABLE Studente (
    Matricola numeric(6),
    Corso_Laurea varchar (20),
    Nome varchar(20) not null,
    Cognome varchar(20) not null,
    Data_nascita date not null,
    Codice_fiscale char(16),
    Foto blob,
    primary key (Matricola,Codice_fiscale)
);

insert into Studente (Matricola,Corso_Laurea,Nome,Cognome,Data_nascita,Codice_fiscale)
  values (100000,'Informatica','Luca','Toni','1995/12/24','tnlc24121995bari');
insert into Studente (Matricola,Corso_Laurea,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (100001,'Lettere','Marco','Tardelli','1993/01/01','trdllmrc01011993',null);
insert into Studente (Matricola,Corso_Laurea,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (100002,'Ingegneria','Gianluca','Zambrotta','1992/07/28','zmbrttgnl2807992',null);
insert into Studente (Matricola,Corso_Laurea,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (100003,'Informatica','Mauro','Camoranesi','1997/02/13','cmrnsmr13021997a',null);
insert into Studente (Matricola,Corso_Laurea,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (100004,'Ingegneria','Marco','Materazzi','1992/05/25','mtrmrc25051992l',null);
insert into Studente (Matricola,Corso_Laurea,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (100005,'Ingegneria','Alberto','Gilardino','1991/01/02','glralb02011991f',null);
insert into Studente (Matricola,Corso_Laurea,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (100006,'Lettere','Francesco','Totti','1997/02/13','tttfrn13021997r',null);
insert into Studente (Matricola,Corso_Laurea,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (100007,'Lettere','Alessandro','Del Piero','1990/11/10','dlpalx10111990v',null);
insert into Studente (Matricola,Corso_Laurea,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (100008,'Informatica','Christian','Vieri','1993/10/20','vrcrst13021997m',null);
insert into Studente (Matricola,Corso_Laurea,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (100009,'Lettere','Paolo','Maldini','1998/12/27','mldnplo27121998m',null);

create table Docente(
  Matricola numeric (6),
  Dipartimento varchar (20),
  Nome varchar (20) not null,
  Cognome varchar (20) not null,
  Data_nascita date not null,
  Codice_fiscale char (16),
  Foto blob,
  primary key (Matricola,Codice_fiscale)
);

insert into Docente (Matricola,Dipartimento,Nome,Cognome,Data_nascita,Codice_fiscale)
  values (000001,'Informatica','Valentino','Rossi','1983/03/12','rssvlntn12031983');
insert into Docente (Matricola,Dipartimento,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (000002,'Lettere','Flavia','Pennetta','1986/09/24','pnnttflv24091986',null);
insert into Docente (Matricola,Dipartimento,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (000003,'Ingegneria','Pietro','Mennea','1981/08/03','mnnptr03081981ba',null);
insert into Docente (Matricola,Dipartimento,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (000004,'Ingegneria','Federica','Pellegrini','1985/04/30','plgrnfdc30041985',null);
insert into Docente (Matricola,Dipartimento,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (000005,'Informatica','Roberto','Carlos','1977/01/21','crlsrbrt21011977',null);
insert into Docente (Matricola,Dipartimento,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (000006,'Lettere','Javier','Zanetti','1987/03/24','znttjvr24031987',null);
insert into Docente (Matricola,Dipartimento,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (000007,'Ingegneria','Marco','Van Basten','1985/04/30','plgrnfdc30041985',null);
insert into Docente (Matricola,Dipartimento,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (000008,'Lettere','Ernesto','Chevanton','1979/07/16','cvnrnt16071979',null);
insert into Docente (Matricola,Dipartimento,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (000009,'Informatica','Cristian','Riganò','1981/04/11','rgncrst11041981',null);
insert into Docente (Matricola,Dipartimento,Nome,Cognome,Data_nascita,Codice_fiscale,Foto)
  values (000010,'Lettere','Obafemi','Martins','1982/01/30','mrtnsb30011982',null);

create table Modulo(
  Codice numeric (10) primary key,
  Nome varchar (100) not null unique,
  Descrizione varchar (300),
  CFU numeric (5) check (CFU>0 and CFU<=12)
);

insert into Modulo (Codice,Nome,Descrizione,CFU)
  values (1,'Algoritmi','Orale',9);
insert into Modulo (Codice,Nome,Descrizione,CFU)
  values (2,'Fondamenti','Scritto',6);
insert into Modulo (Codice,Nome,Descrizione,CFU)
  values (3,'Filologia','Orale',6);
insert into Modulo (Codice,Nome,Descrizione,CFU)
  values (4,'Biblioteconomia','Orale',6);
insert into Modulo (Codice,Nome,Descrizione,CFU)
  values (5,'Storia Greca','Orale',9);
insert into Modulo (Codice,Nome,Descrizione,CFU)
  values (6,'Pedagogia','Orale',12);
insert into Modulo (Codice,Nome,Descrizione,CFU)
  values (7,'Fisica1','Scritto',9);
insert into Modulo (Codice,Nome,Descrizione,CFU)
  values (8,'Analisi1','Scritto',9);
insert into Modulo (Codice,Nome,Descrizione,CFU)
  values (9,'Chimica','Scritto',9);
insert into Modulo (Codice,Nome,Descrizione,CFU)
  values (10,'Linguaggi di programmazione','Scritto',6);

  create table Esame (
  Matricola_Studente numeric(6),
  Codice_Modulo numeric(10),
  Matricola_Docente numeric(6),
  Data_Esame date not null,
  Voto smallint check (Voto>=18 and Voto<=30),
  Lode char(4),
  Note varchar (200),
  check (Lode='' or Voto=30),
  foreign key (Matricola_Studente) references Studente (Matricola) on update cascade,
  foreign key (Codice_Modulo) references Modulo (Codice) on update cascade,
  foreign key (Matricola_Docente) references Docente (Matricola) on update cascade
);

insert into Esame (Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Note)
  values(100000,10,000005,'2020/04/07',27,'Scritto');  
insert into Esame (Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Note)
  values(100001,6,000006,'2020/03/31',24,'Orale');
insert into Esame (Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Note)
  values(100002,9,000004,'2020/02/13',20,'Scritto');
insert into Esame (Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Note)
  values(100003,1,000001,'2020/01/31',30,'Orale');
insert into Esame (Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Note) 
  values(100004,8,000007,'2020/02/05',29,'Scritto');
insert into Esame (Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Note) 
  values(100005,7,000003,'2020/02/27',30,'Scritto');
insert into Esame (Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Note) 
  values(100006,4,000002,'2020/01/12',25,'Orale');
insert into Esame (Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Note) 
  values(100007,3,000008,'2020/01/08',24,'Orale');
insert into Esame (Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Note) 
  values(100008,2,000009,'2020/02/16',20,'Scritto');
insert into Esame (Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Note) 
  values(100009,5,000010,'2020/02/28',18,'Orale');

create table Corso_Laurea(
  Codice numeric(10) primary key,
  Nome varchar(50) not null,
  Descrizione varchar(200)
);

insert into Corso_Laurea(Codice,Nome,Descrizione)
  values(1,'Informatica Triennale',null); 
insert into Corso_Laurea(Codice,Nome,Descrizione)
  values(2,'Ingegneria',null);
insert into Corso_Laurea(Codice,Nome,Descrizione)
  values(3,'Lettere',null);

create table Dipartimento(
  Codice numeric(10) primary key,	
  Nome varchar(20)
);

insert into Dipartimento(Codice,Nome)
  values(1,'Informatica');
insert into Dipartimento(Codice,Nome)
  values(2,'Politecnico');
insert into Dipartimento(Codice,Nome)
  values(3,'Lettere');

create table Sede(
  Codice numeric(10) primary key,
  Indirizzo varchar(50),
  Città varchar(20)
);

insert into Sede(Codice,Indirizzo,Città)
  values(1,'Piazza Umberto I,1','Bari');
insert into Sede(Codice,Indirizzo,Città)
  values(2,'Via Edoardo Orabona, 4','Bari');

create table Sede_Dipartimento(
  Codice_Sede numeric(10), 	
  Codice_Dipartimento numeric(10),		
  Note varchar(100),
  foreign key (Codice_Sede) references Sede (Codice) on update cascade,
  foreign key (Codice_Dipartimento) references Dipartimento (Codice) on update cascade
);

insert into Sede_Dipartimento(Codice_Sede,Codice_Dipartimento,Note)
  values(1,1,'');
insert into Sede_Dipartimento(Codice_Sede,Codice_Dipartimento,Note)
  values(2,2,'');
insert into Sede_Dipartimento(Codice_Sede,Codice_Dipartimento,Note)
  values(1,3,'');