drop table tbl_games_pr;
drop table tbl_games_nr;
drop table tbl_games;


CREATE TABLE tbl_games
(
  id serial not null,
  gameid character varying(1) NOT NULL,
  drawnr bigint NOT NULL,
  drawdate date NOT NULL,
  CONSTRAINT tbl_games_pk PRIMARY KEY (id)
);

CREATE TABLE tbl_games_nr
(
  id serial not null,
  id_master int not null,
  nr int not null,
  CONSTRAINT tbl_games_nr_pk PRIMARY KEY (id)
);

ALTER TABLE tbl_games_nr
  ADD CONSTRAINT tbl_games_nr_fk FOREIGN KEY (id_master) REFERENCES tbl_games (id)
   ON UPDATE NO ACTION ON DELETE NO ACTION;

CREATE TABLE tbl_games_pr
(
  id serial not null,
  id_master int not null,
  prize int not null,
  CONSTRAINT tbl_games_pr_pk PRIMARY KEY (id)
);

ALTER TABLE tbl_games_pr
  ADD CONSTRAINT tbl_games_pr_fk FOREIGN KEY (id_master) REFERENCES tbl_games (id)
   ON UPDATE NO ACTION ON DELETE NO ACTION;

  

insert into tbl_games (gameid,drawnr,drawdate) values('E',1,'2014-01-01');
insert into tbl_games (gameid,drawnr,drawdate) values('E',2,'2014-01-01');



GRANT ALL ON TABLE tbl_games TO public;
GRANT ALL ON TABLE tbl_games_nr TO public;
GRANT ALL ON TABLE tbl_games_pr TO public;



// Agregar los índices!!
