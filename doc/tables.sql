CREATE TABLE tbl_games_by_date
(
  gameid character varying(1) NOT NULL,
  drawnr bigint NOT NULL,
  drawdate date NOT NULL,
  CONSTRAINT tbl_games_by_date_pk PRIMARY KEY (gameid,drawnr)
);

