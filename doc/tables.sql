drop table tbl_games_pr;
drop table tbl_games_nr;
drop table tbl_games;


CREATE TABLE tbl_games
(
  gameid character varying(1) NOT NULL,
  drawnr bigint NOT NULL,
  drawdate date NOT NULL,
  CONSTRAINT tbl_games_pk PRIMARY KEY (gameid, drawnr)
);

CREATE TABLE tbl_games_nr
(
  gameid character varying(1) NOT NULL,
  drawnr bigint NOT NULL,
  nrorder int not null,
  nr int not null,
  CONSTRAINT tbl_games_nr_pk PRIMARY KEY (gameid, drawnr,nrorder)
);

ALTER TABLE tbl_games_nr
  ADD CONSTRAINT tbl_games_nr_fk FOREIGN KEY (gameid, drawnr) REFERENCES tbl_games (gameid, drawnr)
   ON UPDATE NO ACTION ON DELETE NO ACTION;

CREATE TABLE tbl_games_pr
(
  gameid character varying(1) NOT NULL,
  drawnr bigint NOT NULL,
  prorder int not null,
  prize int not null,
  CONSTRAINT tbl_games_pr_pk PRIMARY KEY (gameid, drawnr,prorder)
);

ALTER TABLE tbl_games_pr
  ADD CONSTRAINT tbl_games_pr_fk FOREIGN KEY (gameid, drawnr) REFERENCES tbl_games (gameid, drawnr)
   ON UPDATE NO ACTION ON DELETE NO ACTION;



GRANT ALL ON TABLE tbl_games TO public;
GRANT ALL ON TABLE tbl_games_nr TO public;
GRANT ALL ON TABLE tbl_games_pr TO public;


