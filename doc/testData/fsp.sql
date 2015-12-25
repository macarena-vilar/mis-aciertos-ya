CREATE TABLE fsp_inp_divisions (
    gameid character(1) NOT NULL,
    drawnr bigint NOT NULL,
    vendorid character(1) NOT NULL,
    divnr integer NOT NULL,
    winnersq bigint NOT NULL,
    winnersamount numeric(20,2) NOT NULL
);


--
-- TOC entry 2823 (class 0 OID 0)
-- Dependencies: 171
-- Name: COLUMN fsp_inp_divisions.divnr; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_inp_divisions.divnr IS 'Div number (1 ... n)';


--
-- TOC entry 2824 (class 0 OID 0)
-- Dependencies: 171
-- Name: COLUMN fsp_inp_divisions.winnersq; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_inp_divisions.winnersq IS 'Quantity of winners division "n"';


--
-- TOC entry 2825 (class 0 OID 0)
-- Dependencies: 171
-- Name: COLUMN fsp_inp_divisions.winnersamount; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_inp_divisions.winnersamount IS 'Amount to pay to winners of division "n"';


--
-- TOC entry 169 (class 1259 OID 18903)
-- Name: fsp_inp_header; Type: TABLE; Schema: dba; Owner: -
--

CREATE TABLE fsp_inp_header (
    gameid character(1) NOT NULL,
    drawnr bigint NOT NULL,
    drawdate date NOT NULL
);


--
-- TOC entry 2826 (class 0 OID 0)
-- Dependencies: 169
-- Name: COLUMN fsp_inp_header.gameid; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_inp_header.gameid IS 'One character gameID: ''E'' -> ELEGI2 , ''P'' -> Premio';


--
-- TOC entry 2827 (class 0 OID 0)
-- Dependencies: 169
-- Name: COLUMN fsp_inp_header.drawnr; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_inp_header.drawnr IS 'Sequential game Nr.';


--
-- TOC entry 2828 (class 0 OID 0)
-- Dependencies: 169
-- Name: COLUMN fsp_inp_header.drawdate; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_inp_header.drawdate IS 'Date of the game';


--
-- TOC entry 170 (class 1259 OID 18908)
-- Name: fsp_inp_totals; Type: TABLE; Schema: dba; Owner: -
--

CREATE TABLE fsp_inp_totals (
    gameid character(1) NOT NULL,
    drawnr bigint NOT NULL,
    vendorid character(1) NOT NULL,
    salestotalq bigint NOT NULL,
    salestotalamount numeric(20,2) NOT NULL,
    canceledtotalq bigint NOT NULL,
    canceledtotalamount numeric(20,2) NOT NULL
);


--
-- TOC entry 2829 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN fsp_inp_totals.vendorid; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_inp_totals.vendorid IS 'One character vendor ID: ''G'' -> Gtech , ''D'' -> DTP';


--
-- TOC entry 2830 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN fsp_inp_totals.salestotalq; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_inp_totals.salestotalq IS 'Total quantity of non canceled sold tickets';


--
-- TOC entry 2831 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN fsp_inp_totals.salestotalamount; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_inp_totals.salestotalamount IS 'Total amount of non canceled sold tickets';


--
-- TOC entry 2832 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN fsp_inp_totals.canceledtotalq; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_inp_totals.canceledtotalq IS 'Total quantity of canceled tickets';


--
-- TOC entry 2833 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN fsp_inp_totals.canceledtotalamount; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_inp_totals.canceledtotalamount IS 'Total amountof canceled tickets';


--
-- TOC entry 172 (class 1259 OID 18918)
-- Name: fsp_out_data; Type: TABLE; Schema: dba; Owner: -
--

CREATE TABLE fsp_out_data (
    gameid character(1) NOT NULL,
    drawnr bigint NOT NULL,
    drawdate date NOT NULL,
    salestotalq bigint NOT NULL,
    salestotalamount numeric(20,2) NOT NULL,
    canceledtotalq bigint NOT NULL,
    canceledtotalamount numeric(20,2) NOT NULL,
    totalaccum numeric(20,2) DEFAULT 0 NOT NULL
);


--
-- TOC entry 2834 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fsp_out_data.gameid; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_out_data.gameid IS 'One character gameID: ''E'' -> ELEGI2 , ''P'' -> Premio';


--
-- TOC entry 2835 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fsp_out_data.drawnr; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_out_data.drawnr IS 'Sequential game Nr.';


--
-- TOC entry 2836 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fsp_out_data.drawdate; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_out_data.drawdate IS 'Date of the game';


--
-- TOC entry 2837 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fsp_out_data.salestotalq; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_out_data.salestotalq IS 'Total quantity of non canceled sold tickets';


--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fsp_out_data.salestotalamount; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_out_data.salestotalamount IS 'Total amount of non canceled sold tickets';


--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fsp_out_data.canceledtotalq; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_out_data.canceledtotalq IS 'Total quantity of canceled tickets';


--
-- TOC entry 2840 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fsp_out_data.canceledtotalamount; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_out_data.canceledtotalamount IS 'Total amount of canceled tickets';


--
-- TOC entry 2841 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fsp_out_data.totalaccum; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_out_data.totalaccum IS 'Accumulated Jackpot';


--
-- TOC entry 173 (class 1259 OID 18924)
-- Name: fsp_out_divisions; Type: TABLE; Schema: dba; Owner: -
--

CREATE TABLE fsp_out_divisions (
    divnr integer NOT NULL,
    winnersq bigint NOT NULL,
    winnersamount numeric(20,2) NOT NULL,
    gameid character(1) NOT NULL,
    drawnr integer NOT NULL
);


--
-- TOC entry 2842 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN fsp_out_divisions.divnr; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_out_divisions.divnr IS 'Div number (1..n)';


--
-- TOC entry 2843 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN fsp_out_divisions.winnersq; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_out_divisions.winnersq IS 'Quantity of winners division "n"';


--
-- TOC entry 2844 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN fsp_out_divisions.winnersamount; Type: COMMENT; Schema: dba; Owner: -
--

COMMENT ON COLUMN fsp_out_divisions.winnersamount IS 'Amount to pay to winners of division "n"';


--
-- TOC entry 2813 (class 0 OID 18913)
-- Dependencies: 171
-- Data for Name: fsp_inp_divisions; Type: TABLE DATA; Schema: dba; Owner: -
--

INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1043, 'T', 2, 10, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1043, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1043, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1044, 'T', 2, 4, 200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1044, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1044, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1045, 'T', 2, 17, 300000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 129, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 129, 'T', 4, 5, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 129, 'G', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 129, 'G', 2, 1, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 129, 'G', 4, 13, 26000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 129, 'G', 1, 0, 26400000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1045, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1045, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1046, 'T', 2, 9, 160000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1047, 'T', 2, 5, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1048, 'T', 2, 8, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1049, 'T', 2, 13, 230000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1050, 'T', 2, 11, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1051, 'T', 2, 4, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1052, 'T', 2, 7, 280000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1046, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1046, 'G', 2, 9, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1047, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1047, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1048, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1048, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1049, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1049, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1050, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1050, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1051, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1051, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1052, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1052, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 130, 'T', 4, 8, 16000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 130, 'G', 3, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 130, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 130, 'G', 4, 19, 38000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 130, 'G', 1, 0, 26500000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1053, 'T', 2, 6, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1053, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1053, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1054, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1054, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1054, 'T', 2, 7, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1055, 'T', 2, 19, 380000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1056, 'T', 2, 3, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1055, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1055, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1056, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1056, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 131, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 131, 'T', 4, 10, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 131, 'G', 4, 18, 36000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 131, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 131, 'G', 3, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 131, 'G', 1, 0, 26600000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 132, 'T', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 132, 'T', 4, 14, 28000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 132, 'G', 4, 16, 32000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 132, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 132, 'G', 3, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 132, 'G', 1, 0, 26700000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1057, 'T', 2, 7, 130000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1058, 'T', 2, 4, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1059, 'T', 2, 4, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1060, 'T', 2, 3, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1061, 'T', 2, 14, 230000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1062, 'T', 2, 9, 220000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 133, 'T', 4, 12, 24000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 133, 'G', 4, 11, 22000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 133, 'G', 2, 2, 200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 133, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 133, 'G', 1, 0, 26800000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1057, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1057, 'G', 2, 8, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1058, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1058, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1059, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1059, 'G', 2, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1060, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1060, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1061, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1061, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1062, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1062, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1063, 'T', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1064, 'T', 2, 13, 230000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1065, 'T', 2, 4, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1066, 'T', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1063, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1063, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1064, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1064, 'G', 2, 23, 230000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1065, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1065, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1066, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1066, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1067, 'T', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1068, 'T', 2, 7, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1067, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1067, 'G', 2, 12, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1068, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1068, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1070, 'T', 2, 8, 140000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 134, 'G', 4, 28, 56000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 134, 'G', 2, 1, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 134, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1069, 'T', 2, 21, 280000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 134, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 134, 'T', 4, 7, 14000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 134, 'G', 1, 0, 26900000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1069, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1069, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1070, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1070, 'G', 2, 13, 130000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1071, 'T', 2, 8, 150000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1072, 'T', 2, 4, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1071, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1071, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1072, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1072, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1073, 'T', 2, 7, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1074, 'T', 2, 5, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1073, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1073, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1074, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1074, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 135, 'T', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 135, 'T', 4, 7, 14000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 135, 'G', 4, 13, 26000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 135, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 135, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 135, 'G', 1, 0, 27000000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1075, 'T', 2, 5, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1076, 'T', 2, 5, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1077, 'T', 1, 2, 2000000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1077, 'T', 2, 8, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1078, 'T', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1075, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1075, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1076, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1076, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1077, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1077, 'G', 2, 7, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1078, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1078, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1079, 'T', 2, 4, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1080, 'T', 2, 3, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1079, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1079, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1080, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1080, 'G', 2, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 136, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 136, 'T', 4, 12, 24000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 139, 'T', 1, 0, 27400000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 136, 'G', 4, 14, 28000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 136, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 136, 'G', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 136, 'T', 1, 0, 27100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 136, 'G', 1, 0, 27100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1081, 'T', 2, 6, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1082, 'T', 2, 4, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1081, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1081, 'G', 2, 12, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1082, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1082, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1083, 'T', 2, 6, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1084, 'T', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1083, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1083, 'G', 2, 10, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1084, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1084, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 137, 'G', 4, 16, 32000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 137, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 137, 'G', 3, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 139, 'G', 1, 0, 27400000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 137, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 137, 'T', 4, 6, 12000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 137, 'G', 1, 0, 27200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 138, 'T', 3, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 138, 'T', 4, 9, 18000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1093, 'T', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 138, 'G', 4, 19, 38000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 138, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 138, 'G', 3, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 138, 'T', 1, 0, 27300000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 138, 'G', 1, 0, 27300000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1085, 'T', 2, 10, 180000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1086, 'T', 2, 4, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1085, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1085, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1086, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1086, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1087, 'T', 2, 4, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1088, 'T', 2, 9, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1089, 'T', 2, 10, 220000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1090, 'T', 2, 2, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1091, 'T', 2, 7, 240000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1092, 'T', 2, 4, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1087, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1087, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1088, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1088, 'G', 2, 9, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1089, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1089, 'G', 2, 8, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1091, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1091, 'G', 2, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1092, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1092, 'G', 2, 11, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 139, 'T', 4, 4, 8000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1096, 'T', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 139, 'G', 4, 13, 26000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 139, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 139, 'G', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1094, 'T', 2, 9, 160000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1093, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1093, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1094, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1094, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1095, 'T', 2, 4, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1090, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1090, 'G', 2, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1095, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1095, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1096, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1096, 'G', 2, 12, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1097, 'T', 2, 4, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1098, 'T', 2, 8, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 140, 'T', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 140, 'T', 4, 11, 22000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1097, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1097, 'G', 2, 16, 160000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1098, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1098, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 140, 'G', 4, 17, 34000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 140, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 140, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 140, 'G', 1, 0, 27500000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 141, 'T', 4, 11, 22000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 141, 'G', 4, 11, 22000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 141, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 141, 'G', 3, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 141, 'G', 1, 0, 27600000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1099, 'T', 2, 3, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1100, 'T', 2, 11, 160000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1099, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1099, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1100, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1100, 'G', 2, 12, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1101, 'T', 2, 5, 130000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1102, 'T', 2, 6, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1104, 'T', 2, 3, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1103, 'T', 2, 2, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1101, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1101, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1102, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1102, 'G', 2, 18, 180000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1103, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1103, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1104, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1104, 'G', 2, 13, 130000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 142, 'G', 4, 20, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 142, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 142, 'G', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 145, 'T', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 142, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 142, 'T', 4, 7, 14000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 142, 'G', 1, 0, 27700000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1105, 'T', 2, 10, 160000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1106, 'T', 2, 4, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1107, 'T', 2, 6, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1108, 'T', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1109, 'T', 2, 5, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1110, 'T', 2, 2, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1105, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1105, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1106, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1106, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1107, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1107, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1108, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1108, 'G', 2, 11, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1109, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1109, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1110, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1110, 'G', 2, 12, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1111, 'T', 2, 3, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1112, 'T', 2, 4, 150000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1111, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1111, 'G', 2, 12, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1112, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1112, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 143, 'T', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 143, 'T', 4, 7, 14000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 145, 'T', 4, 3, 6000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 143, 'G', 4, 18, 36000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 143, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 143, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 143, 'T', 1, 0, 27800000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 143, 'G', 1, 0, 27800000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1113, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1113, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1114, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1114, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1113, 'T', 2, 4, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1114, 'T', 2, 7, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1115, 'T', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1116, 'T', 2, 4, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 144, 'T', 3, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 144, 'T', 4, 5, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 144, 'G', 4, 22, 44000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 144, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 144, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 144, 'G', 1, 0, 27900000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1115, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1115, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1116, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1116, 'G', 2, 7, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1117, 'T', 2, 6, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1118, 'T', 2, 7, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1117, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1117, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1118, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1118, 'G', 2, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1119, 'T', 2, 7, 140000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1120, 'T', 2, 1, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1119, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1119, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1120, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1120, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1121, 'T', 2, 1, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1122, 'T', 2, 1, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1121, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1121, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1122, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1122, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 145, 'G', 4, 19, 38000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 145, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 145, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 145, 'G', 1, 0, 28000000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1123, 'T', 2, 3, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1124, 'T', 2, 2, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1123, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1123, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1124, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1124, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1125, 'T', 2, 6, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1126, 'T', 2, 6, 150000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1125, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1125, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1126, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1126, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 146, 'T', 4, 3, 6000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 146, 'G', 4, 21, 42000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 146, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 146, 'G', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 146, 'G', 1, 0, 28100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1127, 'T', 1, 1, 1000000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1127, 'T', 2, 4, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1128, 'T', 2, 7, 190000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1127, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1127, 'G', 2, 15, 150000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1128, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1128, 'G', 2, 10, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 147, 'T', 4, 6, 12000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 147, 'G', 4, 18, 36000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 147, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 147, 'G', 3, 7, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 147, 'G', 1, 0, 28200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1129, 'T', 2, 5, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1130, 'T', 2, 6, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1131, 'T', 2, 8, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1132, 'T', 2, 5, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1133, 'T', 2, 10, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1134, 'T', 2, 5, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1129, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1129, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1130, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1130, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1131, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1131, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1132, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1132, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1133, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1133, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1134, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1134, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1135, 'T', 2, 5, 170000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1136, 'T', 2, 3, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1135, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1135, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1136, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1136, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1145, 'T', 2, 14, 270000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1146, 'T', 2, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1147, 'T', 2, 7, 170000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1148, 'T', 2, 2, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1143, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1143, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1144, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 148, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 148, 'T', 4, 6, 12000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1144, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1145, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 148, 'G', 4, 10, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 148, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 148, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 148, 'G', 1, 0, 28300000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 148, 'T', 1, 0, 28300000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1137, 'T', 2, 5, 130000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1138, 'T', 2, 6, 610000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1137, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1137, 'G', 2, 20, 200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1138, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1138, 'G', 2, 10, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1139, 'T', 2, 5, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1140, 'T', 2, 6, 270000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1139, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1139, 'G', 2, 11, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1140, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1140, 'G', 2, 8, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 149, 'T', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 149, 'T', 4, 4, 8000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1145, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 149, 'G', 4, 19, 38000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 149, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 149, 'G', 3, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 149, 'G', 1, 0, 28400000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 149, 'T', 1, 0, 28400000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1141, 'T', 2, 9, 170000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1142, 'T', 2, 4, 140000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1141, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1141, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1142, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1142, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 150, 'T', 4, 12, 24000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 150, 'G', 4, 25, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 150, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 150, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 150, 'G', 1, 0, 28500000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1143, 'T', 2, 11, 320000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1144, 'T', 2, 7, 200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1146, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1146, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1147, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1147, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1148, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1148, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1149, 'T', 2, 6, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1150, 'T', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1149, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1149, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1150, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1150, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 151, 'T', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 151, 'T', 4, 10, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1151, 'T', 2, 2, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 151, 'G', 4, 17, 34000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 151, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 151, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 151, 'G', 1, 0, 28600000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 151, 'T', 1, 0, 28600000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1152, 'T', 2, 6, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1151, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1151, 'G', 2, 8, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1152, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1152, 'G', 2, 7, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1153, 'T', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1154, 'T', 2, 3, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1153, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1153, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1154, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1154, 'G', 2, 20, 200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 152, 'T', 4, 11, 22000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 152, 'T', 2, 1, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 152, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1173, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 152, 'G', 4, 16, 32000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 152, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 152, 'G', 3, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 152, 'G', 1, 0, 28700000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 152, 'T', 1, 0, 28700000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1155, 'T', 2, 13, 360000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1156, 'T', 2, 10, 250000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1155, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1155, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1156, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1156, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 153, 'T', 4, 11, 22000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 153, 'T', 2, 1, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 153, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1173, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 153, 'G', 4, 21, 42000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 153, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 153, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 153, 'G', 1, 0, 28800000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 153, 'T', 1, 0, 28800000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1157, 'T', 2, 8, 130000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1158, 'T', 2, 5, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1159, 'T', 2, 16, 310000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1160, 'T', 2, 4, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1161, 'T', 2, 6, 190000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1162, 'T', 2, 8, 200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1157, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1157, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1158, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1158, 'G', 2, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1159, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1159, 'G', 2, 12, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1160, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1160, 'G', 2, 13, 130000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1161, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1161, 'G', 2, 7, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1162, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1162, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1163, 'T', 2, 2, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1163, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1163, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 154, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 154, 'T', 4, 4, 8000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1174, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 154, 'G', 4, 13, 26000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 154, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 154, 'G', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 154, 'G', 1, 0, 28900000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 154, 'T', 1, 0, 28900000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1164, 'T', 1, 1, 3000000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1164, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1164, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1165, 'T', 2, 5, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1166, 'T', 2, 3, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1165, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1165, 'G', 2, 7, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1166, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1166, 'G', 2, 10, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1167, 'T', 2, 4, 160000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1168, 'T', 1, 1, 10000000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1168, 'T', 2, 8, 150000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1167, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1167, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1168, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1168, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 155, 'T', 3, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 155, 'T', 4, 5, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 155, 'G', 4, 28, 56000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 155, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 155, 'G', 3, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 155, 'G', 1, 0, 29000000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1169, 'T', 2, 5, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1170, 'T', 2, 6, 200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1169, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1169, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1170, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1170, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 156, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 156, 'T', 4, 8, 16000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 156, 'G', 4, 14, 28000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 156, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 156, 'G', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 156, 'G', 1, 0, 29100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1171, 'T', 2, 6, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1172, 'T', 2, 3, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1173, 'T', 2, 11, 240000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1174, 'T', 2, 10, 250000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1175, 'T', 2, 4, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1176, 'T', 2, 8, 150000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1171, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1171, 'G', 2, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1172, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1172, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1174, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1175, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1175, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1176, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1176, 'G', 2, 12, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1177, 'T', 2, 2, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1178, 'T', 2, 5, 140000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1177, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1177, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1178, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1178, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 157, 'T', 4, 6, 12000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 157, 'G', 4, 14, 28000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 157, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 157, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 157, 'G', 1, 0, 29200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1179, 'T', 2, 3, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1180, 'T', 2, 4, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1179, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1179, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1180, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1180, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1181, 'T', 2, 7, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1182, 'T', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1181, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1181, 'G', 2, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1182, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1182, 'G', 2, 25, 250000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 158, 'T', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 158, 'T', 4, 21, 42000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 158, 'G', 4, 23, 46000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 158, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 158, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 158, 'G', 1, 0, 29300000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 158, 'T', 1, 0, 29300000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1183, 'T', 2, 4, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1184, 'T', 2, 4, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1183, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1183, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1184, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1184, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 159, 'T', 3, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 159, 'T', 4, 7, 14000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 159, 'G', 4, 19, 38000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 159, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 159, 'G', 3, 7, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 159, 'G', 1, 0, 29400000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1185, 'T', 2, 3, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1186, 'T', 2, 2, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1187, 'T', 2, 5, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1188, 'T', 2, 9, 220000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1189, 'T', 2, 9, 160000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1190, 'T', 2, 3, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1191, 'T', 2, 4, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1192, 'T', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 160, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 160, 'T', 4, 3, 6000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 160, 'G', 4, 11, 22000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 160, 'G', 2, 1, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 160, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 160, 'G', 1, 0, 29500000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1185, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1185, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1186, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1186, 'G', 2, 20, 200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1187, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1187, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1188, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1188, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1189, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1189, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1190, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1190, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1191, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1191, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1192, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1192, 'G', 2, 12, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1193, 'T', 2, 9, 140000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1194, 'T', 2, 6, 230000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1195, 'T', 2, 6, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1196, 'T', 2, 2, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1193, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1193, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1194, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1194, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1195, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1195, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1196, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1196, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 161, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 161, 'T', 4, 4, 8000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 161, 'G', 4, 14, 28000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 161, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 161, 'G', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 161, 'G', 1, 0, 29600000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1197, 'T', 2, 5, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1198, 'T', 2, 4, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1199, 'T', 2, 5, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1200, 'T', 2, 10, 260000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1201, 'T', 2, 5, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1202, 'T', 2, 5, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1203, 'T', 2, 10, 160000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1204, 'T', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1197, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1197, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1198, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1198, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1199, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1199, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1200, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1200, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1201, 'G', 1, 1, 1000000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1201, 'G', 2, 45, 450000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1202, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1202, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1203, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1203, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1204, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1204, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 162, 'T', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 162, 'T', 4, 3, 6000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 163, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 163, 'T', 4, 5, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 162, 'G', 4, 19, 38000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 162, 'G', 2, 1, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 162, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 162, 'G', 1, 0, 29700000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 163, 'G', 4, 12, 24000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 163, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 163, 'G', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 163, 'G', 1, 0, 29800000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1205, 'T', 2, 2, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1206, 'T', 2, 2, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1207, 'T', 1, 1, 5000000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1207, 'T', 2, 4, 160000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1208, 'T', 2, 5, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1205, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1205, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1206, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1206, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1207, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1207, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1208, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1208, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 164, 'T', 4, 5, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1231, 'T', 2, 3, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 164, 'G', 4, 20, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 164, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 164, 'G', 3, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 164, 'G', 1, 0, 29900000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 164, 'T', 1, 0, 29900000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1209, 'T', 2, 5, 280000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1210, 'T', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1211, 'T', 2, 3, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1212, 'T', 2, 9, 290000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1213, 'T', 2, 4, 120000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1214, 'T', 1, 1, 1000000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1214, 'T', 2, 6, 130000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1215, 'T', 2, 5, 140000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1216, 'T', 2, 8, 280000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1217, 'T', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1218, 'T', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1209, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1209, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1210, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1210, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1211, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1211, 'G', 2, 21, 210000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1212, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1212, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1213, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1213, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1214, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1214, 'G', 2, 10, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1215, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1215, 'G', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1216, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1216, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1217, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1217, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1218, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1218, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 165, 'T', 2, 1, 100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 165, 'T', 3, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 165, 'T', 4, 8, 16000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 165, 'G', 4, 10, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 165, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 165, 'G', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 165, 'G', 1, 0, 30000000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1219, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1219, 'G', 2, 7, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1220, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1220, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1221, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1221, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1222, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1222, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1219, 'T', 2, 1, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1220, 'T', 2, 5, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1221, 'T', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1222, 'T', 2, 1, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 166, 'T', 4, 4, 8000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 166, 'G', 4, 10, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 166, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 166, 'G', 3, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 166, 'G', 1, 0, 30100000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1223, 'T', 2, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1224, 'T', 2, 2, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1223, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1223, 'G', 2, 4, 40000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1224, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1224, 'G', 2, 14, 140000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1225, 'T', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1226, 'T', 2, 7, 180000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1225, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1225, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1226, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1226, 'G', 2, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 167, 'T', 4, 5, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1232, 'T', 2, 3, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 167, 'G', 4, 12, 24000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 167, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 167, 'G', 3, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 167, 'G', 1, 0, 30200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 167, 'T', 1, 0, 30200000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1227, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1227, 'G', 2, 9, 90000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1228, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1228, 'G', 2, 11, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1227, 'T', 2, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1228, 'T', 2, 7, 150000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1229, 'T', 2, 1, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1230, 'T', 2, 4, 80000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1229, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1229, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1230, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1230, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1231, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1231, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1232, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1232, 'G', 2, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 168, 'T', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 168, 'T', 4, 2, 4000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1233, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 168, 'G', 4, 11, 22000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 168, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 168, 'G', 3, 3, 30000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 168, 'G', 1, 0, 30300000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 168, 'T', 1, 0, 30300000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1233, 'G', 2, 7, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1234, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1234, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1233, 'T', 2, 8, 180000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1234, 'T', 2, 7, 110000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1235, 'T', 2, 3, 70000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1236, 'T', 2, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1235, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1235, 'G', 2, 5, 50000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1236, 'G', 1, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('E', 1236, 'G', 2, 6, 60000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 169, 'T', 3, 1, 10000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 169, 'T', 4, 6, 12000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 169, 'G', 4, 12, 24000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 169, 'G', 2, 0, 0.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 169, 'G', 3, 2, 20000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 169, 'G', 1, 0, 30400000.00);
INSERT INTO fsp_inp_divisions (gameid, drawnr, vendorid, divnr, winnersq, winnersamount) VALUES ('P', 169, 'T', 1, 0, 30400000.00);


--
-- TOC entry 2811 (class 0 OID 18903)
-- Dependencies: 169
-- Data for Name: fsp_inp_header; Type: TABLE DATA; Schema: dba; Owner: -
--

INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1157, '2015-11-12');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1043, '2015-09-16');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1044, '2015-09-16');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1045, '2015-09-17');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 129, '2015-09-17');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1046, '2015-09-17');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1047, '2015-09-18');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1048, '2015-09-18');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1049, '2015-09-19');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1050, '2015-09-19');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1051, '2015-09-20');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1052, '2015-09-20');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 130, '2015-09-19');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1053, '2015-09-21');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1054, '2015-09-21');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1055, '2015-09-22');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1056, '2015-09-22');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 131, '2015-09-22');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 132, '2015-09-24');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1057, '2015-09-23');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1058, '2015-09-23');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1059, '2015-09-24');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1060, '2015-09-24');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1061, '2015-09-25');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1062, '2015-09-25');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1064, '2015-09-26');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1063, '2015-09-26');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 133, '2015-09-26');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1065, '2015-09-27');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1066, '2015-09-27');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1067, '2015-09-28');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1068, '2015-09-28');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1069, '2015-09-29');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1070, '2015-09-29');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 134, '2015-09-29');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1071, '2015-09-30');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1072, '2015-09-30');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1073, '2015-10-01');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1074, '2015-10-01');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 135, '2015-10-01');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1075, '2015-10-02');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1076, '2015-10-02');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1077, '2015-10-03');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1078, '2015-10-03');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1079, '2015-10-04');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1080, '2015-10-04');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 136, '2015-10-03');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1081, '2015-10-05');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1082, '2015-10-05');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1083, '2015-10-06');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1084, '2015-10-06');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 137, '2015-10-06');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 138, '2015-10-08');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1085, '2015-10-07');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1086, '2015-10-07');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1087, '2015-10-08');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1088, '2015-10-08');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1089, '2015-10-09');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1090, '2015-10-09');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1091, '2015-10-10');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1092, '2015-10-10');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 139, '2015-10-10');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1093, '2015-10-11');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1094, '2015-10-11');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1095, '2015-10-12');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1096, '2015-10-12');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1097, '2015-10-13');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1098, '2015-10-13');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 140, '2015-10-13');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 141, '2015-10-15');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1099, '2015-10-14');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1100, '2015-10-14');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1101, '2015-10-15');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1102, '2015-10-15');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1104, '2015-10-16');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1103, '2015-10-16');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 142, '2015-10-17');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1105, '2015-10-17');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1106, '2015-10-17');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1107, '2015-10-18');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1108, '2015-10-18');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1109, '2015-10-19');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1110, '2015-10-19');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1111, '2015-10-20');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1112, '2015-10-20');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 143, '2015-10-20');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1113, '2015-10-21');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1114, '2015-10-21');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1115, '2015-10-22');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1116, '2015-10-22');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 144, '2015-10-22');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1117, '2015-10-23');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1118, '2015-10-23');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1119, '2015-10-24');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1120, '2015-10-24');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1121, '2015-10-25');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1122, '2015-10-25');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 145, '2015-10-24');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1123, '2015-10-26');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1124, '2015-10-26');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1125, '2015-10-27');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1126, '2015-10-27');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 146, '2015-10-27');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1127, '2015-10-28');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1128, '2015-10-28');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 147, '2015-10-29');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1129, '2015-10-29');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1130, '2015-10-29');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1131, '2015-10-30');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1132, '2015-10-30');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1133, '2015-10-31');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1134, '2015-10-31');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1135, '2015-11-01');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1136, '2015-11-01');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 148, '2015-10-31');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1137, '2015-11-02');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1138, '2015-11-02');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1139, '2015-11-03');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1140, '2015-11-03');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 149, '2015-11-03');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1141, '2015-11-04');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1142, '2015-11-04');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 150, '2015-11-05');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1143, '2015-11-05');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1144, '2015-11-05');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1145, '2015-11-06');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1146, '2015-11-06');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1147, '2015-11-07');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1148, '2015-11-07');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1149, '2015-11-08');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1150, '2015-11-08');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 151, '2015-11-07');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1151, '2015-11-09');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1152, '2015-11-09');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1153, '2015-11-10');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1154, '2015-11-10');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 152, '2015-11-10');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1155, '2015-11-11');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1156, '2015-11-11');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 153, '2015-11-12');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1158, '2015-11-12');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1159, '2015-11-13');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1160, '2015-11-13');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1161, '2015-11-14');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1162, '2015-11-14');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1163, '2015-11-15');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1164, '2015-11-15');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 154, '2015-11-14');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1165, '2015-11-16');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1166, '2015-11-16');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1167, '2015-11-17');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1168, '2015-11-17');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 155, '2015-11-17');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1169, '2015-11-18');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1170, '2015-11-18');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 156, '2015-11-19');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1171, '2015-11-19');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1172, '2015-11-19');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1173, '2015-11-20');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1174, '2015-11-20');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1175, '2015-11-21');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1176, '2015-11-21');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1177, '2015-11-22');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1178, '2015-11-22');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 157, '2015-11-21');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1179, '2015-11-23');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1180, '2015-11-23');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1181, '2015-11-24');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1182, '2015-11-24');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 158, '2015-11-24');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1183, '2015-11-25');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1184, '2015-11-25');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 159, '2015-11-26');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1185, '2015-11-26');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1186, '2015-11-26');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1187, '2015-11-27');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1188, '2015-11-27');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1189, '2015-11-28');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1190, '2015-11-28');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1191, '2015-11-29');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1192, '2015-11-29');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 160, '2015-11-28');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1193, '2015-11-30');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1194, '2015-11-30');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1195, '2015-12-01');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1196, '2015-12-01');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 161, '2015-12-01');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1197, '2015-12-02');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1198, '2015-12-02');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1199, '2015-12-03');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1200, '2015-12-03');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1201, '2015-12-04');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1202, '2015-12-04');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1203, '2015-12-05');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1204, '2015-12-05');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 162, '2015-12-03');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 163, '2015-12-05');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1205, '2015-12-06');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1206, '2015-12-06');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1207, '2015-12-07');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1208, '2015-12-07');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1209, '2015-12-09');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1211, '2015-12-10');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1212, '2015-12-10');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1213, '2015-12-11');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1214, '2015-12-11');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 164, '2015-12-10');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1210, '2015-12-09');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1215, '2015-12-12');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1216, '2015-12-12');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1217, '2015-12-13');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1218, '2015-12-13');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 165, '2015-12-12');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1219, '2015-12-14');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1220, '2015-12-14');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1221, '2015-12-15');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1222, '2015-12-15');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 166, '2015-12-15');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1223, '2015-12-16');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1224, '2015-12-16');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1225, '2015-12-17');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1226, '2015-12-17');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 167, '2015-12-17');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1227, '2015-12-18');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1228, '2015-12-18');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1229, '2015-12-19');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1230, '2015-12-19');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1231, '2015-12-20');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1232, '2015-12-20');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 168, '2015-12-19');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1233, '2015-12-21');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1234, '2015-12-21');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1235, '2015-12-22');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('E', 1236, '2015-12-22');
INSERT INTO fsp_inp_header (gameid, drawnr, drawdate) VALUES ('P', 169, '2015-12-22');


--
-- TOC entry 2812 (class 0 OID 18908)
-- Dependencies: 170
-- Data for Name: fsp_inp_totals; Type: TABLE DATA; Schema: dba; Owner: -
--

INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1043, 'T', 79, 235000.00, 1, 1000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1043, 'G', 46, 95000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1044, 'T', 60, 207000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1044, 'G', 52, 83000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1045, 'T', 117, 342000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1045, 'G', 46, 96000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 129, 'T', 35, 92000.00, 3, 6000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 129, 'G', 57, 216000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1046, 'T', 100, 352000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1047, 'T', 144, 364000.00, 1, 1000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1048, 'T', 128, 406000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1049, 'T', 124, 372000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1050, 'T', 94, 330000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1051, 'T', 46, 195000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1052, 'T', 43, 201000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1046, 'G', 89, 167000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1047, 'G', 62, 126000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1048, 'G', 44, 90000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1049, 'G', 23, 63000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1050, 'G', 33, 80000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1051, 'G', 11, 22000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1052, 'G', 19, 54000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 130, 'T', 40, 126000.00, 1, 2000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 130, 'G', 76, 222000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1053, 'T', 107, 361000.00, 1, 1000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1054, 'T', 90, 304000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1053, 'G', 55, 121000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1054, 'G', 65, 117000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1055, 'T', 118, 401000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1056, 'T', 95, 308000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1055, 'G', 59, 132000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1056, 'G', 126, 238000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 131, 'T', 46, 120000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 131, 'G', 48, 178000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 132, 'T', 50, 122000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 132, 'G', 66, 200000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1057, 'T', 109, 314000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1058, 'T', 89, 320000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1059, 'T', 110, 344000.00, 1, 1000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1060, 'T', 85, 276000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1061, 'T', 91, 310000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1062, 'T', 85, 313000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1063, 'T', 88, 313000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 133, 'T', 31, 88000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 133, 'G', 60, 194000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1057, 'G', 107, 191000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1058, 'G', 93, 151000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1059, 'G', 89, 184000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1060, 'G', 65, 148000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1061, 'G', 66, 135000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1062, 'G', 70, 162000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1063, 'G', 57, 140000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1064, 'G', 62, 154000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1064, 'T', 65, 229000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1065, 'T', 42, 195000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1066, 'T', 47, 203000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1065, 'G', 41, 101000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1066, 'G', 34, 74000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1067, 'T', 70, 238000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1068, 'T', 62, 233000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1067, 'G', 66, 152000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1068, 'G', 49, 125000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1069, 'T', 91, 318000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1070, 'T', 74, 266000.00, 1, 1000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 134, 'G', 66, 214000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 134, 'T', 40, 106000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1069, 'G', 57, 105000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1070, 'G', 87, 187000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1071, 'T', 81, 279000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1072, 'T', 79, 294000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1071, 'G', 72, 174000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1072, 'G', 62, 152000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1073, 'T', 95, 311000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1074, 'T', 92, 330000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1073, 'G', 71, 120000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1074, 'G', 54, 172000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 135, 'T', 37, 104000.00, 1, 2000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 135, 'G', 53, 190000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1075, 'T', 87, 297000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1076, 'T', 76, 291000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1077, 'T', 76, 287000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1078, 'T', 64, 236000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1075, 'G', 77, 184000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1076, 'G', 77, 185000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1077, 'G', 45, 91000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1078, 'G', 47, 111000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1079, 'T', 29, 112000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1080, 'T', 28, 118000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1079, 'G', 28, 47000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1080, 'G', 15, 22000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 136, 'T', 53, 132000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 136, 'G', 58, 178000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1081, 'T', 101, 315000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1082, 'T', 95, 296000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1081, 'G', 70, 126000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1082, 'G', 57, 168000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1083, 'T', 73, 282000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1084, 'T', 80, 287000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1083, 'G', 89, 162000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1084, 'G', 76, 172000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 137, 'G', 56, 192000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 137, 'T', 34, 90000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 138, 'T', 34, 102000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 138, 'G', 50, 168000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1085, 'T', 87, 299000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1086, 'T', 87, 299000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1085, 'G', 62, 134000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1086, 'G', 49, 124000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1087, 'T', 106, 327000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1088, 'T', 84, 248000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1089, 'T', 68, 250000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1090, 'T', 69, 220000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1091, 'T', 75, 271000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1092, 'T', 69, 234000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1087, 'G', 83, 140000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1088, 'G', 44, 148000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1089, 'G', 47, 105000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1090, 'G', 59, 146000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1091, 'G', 54, 148000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1092, 'G', 53, 173000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 139, 'T', 27, 64000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 139, 'G', 49, 160000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1093, 'T', 29, 129000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1094, 'T', 52, 181000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1093, 'G', 32, 66000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1094, 'G', 32, 65000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1095, 'T', 87, 332000.00, 1, 1000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1096, 'T', 79, 237000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1095, 'G', 56, 162000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1096, 'G', 59, 119000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1097, 'T', 90, 331000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1098, 'T', 70, 249000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 140, 'T', 38, 94000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1097, 'G', 72, 177000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1098, 'G', 98, 269000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 140, 'G', 55, 200000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 141, 'T', 24, 80000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 141, 'G', 53, 186000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1099, 'T', 72, 261000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1100, 'T', 78, 263000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1099, 'G', 82, 170000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1100, 'G', 61, 171000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1101, 'T', 93, 321000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1102, 'T', 71, 224000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1104, 'T', 71, 250000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1103, 'T', 86, 283000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1101, 'G', 81, 182000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1102, 'G', 76, 203000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1103, 'G', 91, 188000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1104, 'G', 112, 264000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 142, 'T', 36, 106000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 142, 'G', 61, 210000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1105, 'T', 69, 234000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1106, 'T', 56, 257000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1107, 'T', 33, 141000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1108, 'T', 38, 169000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1109, 'T', 69, 216000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1110, 'T', 68, 269000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1105, 'G', 58, 118000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1106, 'G', 66, 185000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1107, 'G', 30, 59000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1108, 'G', 25, 53000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1109, 'G', 47, 159000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1110, 'G', 66, 183000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1111, 'T', 81, 259000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1112, 'T', 84, 308000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1111, 'G', 61, 139000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1112, 'G', 96, 191000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 143, 'T', 32, 74000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 143, 'G', 52, 192000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1113, 'G', 67, 134000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1114, 'G', 81, 139000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1113, 'T', 80, 265000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1114, 'T', 67, 255000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1115, 'T', 67, 239000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1116, 'T', 74, 271000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 144, 'T', 27, 70000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 144, 'G', 57, 218000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1115, 'G', 82, 176000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1116, 'G', 57, 138000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1117, 'T', 81, 259000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1118, 'T', 73, 267000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1117, 'G', 97, 191000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1118, 'G', 98, 205000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1119, 'T', 70, 256000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1120, 'T', 64, 244000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1119, 'G', 82, 158000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1120, 'G', 52, 118000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1121, 'T', 30, 147000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1122, 'T', 31, 137000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1121, 'G', 27, 79000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1122, 'G', 33, 53000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 145, 'T', 34, 78000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 145, 'G', 53, 202000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1123, 'T', 61, 268000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1124, 'T', 69, 300000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1123, 'G', 38, 80000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1124, 'G', 50, 115000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1125, 'T', 75, 278000.00, 2, 9000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1126, 'T', 70, 298000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1125, 'G', 84, 165000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1126, 'G', 72, 143000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 146, 'T', 30, 70000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 146, 'G', 62, 234000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1127, 'T', 83, 294000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1128, 'T', 83, 268000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1127, 'G', 73, 149000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1128, 'G', 48, 134000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 147, 'T', 20, 52000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 147, 'G', 65, 224000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1129, 'T', 66, 301000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1130, 'T', 79, 290000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1131, 'T', 74, 297000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1132, 'T', 71, 324000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1133, 'T', 72, 312000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1134, 'T', 59, 221000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1129, 'G', 78, 132000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1130, 'G', 66, 119000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1131, 'G', 71, 178000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1132, 'G', 57, 104000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1133, 'G', 27, 50000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1134, 'G', 23, 37000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1135, 'T', 33, 116000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1136, 'T', 25, 107000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1135, 'G', 19, 28000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1136, 'G', 5, 5000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 148, 'T', 35, 94000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 148, 'G', 38, 124000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1137, 'T', 62, 259000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1138, 'T', 65, 337000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1137, 'G', 20, 55000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1138, 'G', 42, 138000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1139, 'T', 72, 295000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1140, 'T', 65, 358000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1139, 'G', 59, 216000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1140, 'G', 77, 209000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 149, 'T', 34, 76000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 149, 'G', 58, 200000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1141, 'T', 69, 290000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1142, 'T', 87, 504000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1141, 'G', 81, 168000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1142, 'G', 84, 190000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 150, 'T', 47, 116000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 150, 'G', 78, 332000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1143, 'T', 89, 386000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1144, 'T', 110, 505000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1145, 'T', 93, 404000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1146, 'T', 107, 451000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1147, 'T', 87, 352000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1148, 'T', 78, 357000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1143, 'G', 84, 140000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1144, 'G', 85, 215000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1145, 'G', 76, 157000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1146, 'G', 80, 175000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1147, 'G', 79, 130000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1148, 'G', 49, 137000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1149, 'T', 39, 187000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1150, 'T', 30, 206000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1149, 'G', 16, 27000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1150, 'G', 41, 68000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 151, 'T', 56, 142000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 151, 'G', 60, 198000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1151, 'T', 88, 302000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1152, 'T', 98, 329000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1151, 'G', 63, 108000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1152, 'G', 54, 120000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1153, 'T', 98, 349000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1154, 'T', 86, 281000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1153, 'G', 52, 109000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1154, 'G', 68, 172000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 152, 'T', 62, 172000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 152, 'G', 49, 174000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1155, 'T', 100, 375000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1156, 'T', 108, 429000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1155, 'G', 52, 125000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1156, 'G', 59, 97000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 153, 'T', 59, 134000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 153, 'G', 52, 184000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1157, 'T', 113, 403000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1158, 'T', 110, 373000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1159, 'T', 107, 392000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1160, 'T', 108, 434000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1161, 'T', 94, 355000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1162, 'T', 86, 375000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1157, 'G', 52, 134000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1158, 'G', 50, 106000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1159, 'G', 68, 147000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1160, 'G', 66, 159000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1161, 'G', 51, 111000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1162, 'G', 49, 131000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1163, 'T', 27, 142000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1164, 'T', 26, 153000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1163, 'G', 20, 56000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1164, 'G', 10, 14000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 154, 'T', 31, 80000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 154, 'G', 50, 170000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1165, 'T', 66, 295000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1166, 'T', 80, 351000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1165, 'G', 53, 99000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1166, 'G', 43, 124000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1167, 'T', 81, 343000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1168, 'T', 78, 336000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1167, 'G', 46, 110000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1168, 'G', 78, 174000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 155, 'T', 39, 86000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 155, 'G', 51, 198000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1169, 'T', 94, 396000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1170, 'T', 98, 397000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1169, 'G', 61, 127000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1170, 'G', 69, 164000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 156, 'T', 36, 88000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 156, 'G', 49, 202000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1171, 'T', 99, 424000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1172, 'T', 81, 351000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1173, 'T', 103, 432000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1174, 'T', 88, 356000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1175, 'T', 94, 375000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1176, 'T', 105, 356000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1171, 'G', 77, 149000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1172, 'G', 45, 91000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1173, 'G', 49, 104000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1174, 'G', 57, 160000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1175, 'G', 61, 162000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1176, 'G', 52, 122000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1177, 'T', 37, 166000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1178, 'T', 38, 205000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1177, 'G', 21, 30000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1178, 'G', 16, 29000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 157, 'T', 50, 116000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 157, 'G', 38, 164000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1179, 'T', 87, 322000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1180, 'T', 70, 295000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1179, 'G', 76, 127000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1180, 'G', 46, 91000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1181, 'T', 73, 266000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1182, 'T', 94, 348000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1181, 'G', 52, 69000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1182, 'G', 64, 168000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 158, 'T', 61, 158000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 158, 'G', 50, 164000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1183, 'T', 102, 413000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1184, 'T', 83, 301000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1183, 'G', 46, 99000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1184, 'G', 52, 106000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 159, 'T', 41, 102000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 159, 'G', 57, 202000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1185, 'T', 73, 238000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1186, 'T', 84, 332000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1187, 'T', 65, 216000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1188, 'T', 76, 320000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1189, 'T', 58, 269000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1190, 'T', 65, 353000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1191, 'T', 46, 290000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1192, 'T', 27, 155000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 160, 'T', 31, 82000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 160, 'G', 56, 206000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1185, 'G', 60, 134000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1186, 'G', 53, 121000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1187, 'G', 41, 74000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1188, 'G', 47, 109000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1189, 'G', 30, 54000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1190, 'G', 40, 93000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1191, 'G', 24, 45000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1192, 'G', 15, 24000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1193, 'T', 82, 305000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1194, 'T', 84, 364000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1195, 'T', 112, 478000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1196, 'T', 110, 433000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1193, 'G', 39, 76000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1194, 'G', 29, 69000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1195, 'G', 32, 89000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1196, 'G', 74, 227000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 161, 'T', 47, 110000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 161, 'G', 45, 184000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1197, 'T', 87, 337000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1198, 'T', 70, 285000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1199, 'T', 92, 385000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1200, 'T', 79, 342000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1201, 'T', 57, 221000.00, 1, 1000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1202, 'T', 48, 198000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1203, 'T', 75, 264000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1204, 'T', 63, 308000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1197, 'G', 49, 90000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1198, 'G', 40, 92000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1199, 'G', 46, 77000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1200, 'G', 43, 151000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1201, 'G', 38, 158000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1202, 'G', 65, 169000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1203, 'G', 41, 68000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1204, 'G', 28, 83000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 162, 'T', 29, 86000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 163, 'T', 31, 74000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 162, 'G', 49, 204000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 163, 'G', 35, 146000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1205, 'T', 37, 166000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1206, 'T', 27, 124000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1207, 'T', 67, 264000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1208, 'T', 47, 225000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1205, 'G', 14, 19000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1206, 'G', 14, 36000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1207, 'G', 48, 96000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1208, 'G', 43, 118000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1209, 'T', 66, 302000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1211, 'T', 75, 317000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1212, 'T', 69, 294000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1213, 'T', 80, 325000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1214, 'T', 73, 311000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 164, 'T', 22, 60000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 164, 'G', 51, 190000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1210, 'T', 0, 0.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1215, 'T', 66, 280000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1216, 'T', 68, 329000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1217, 'T', 29, 146000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1218, 'T', 38, 199000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1209, 'G', 58, 173000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1210, 'G', 21, 43000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1211, 'G', 45, 117000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1212, 'G', 33, 104000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1213, 'G', 46, 129000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1214, 'G', 60, 154000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1215, 'G', 69, 111000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1216, 'G', 42, 91000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1217, 'G', 21, 25000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1218, 'G', 9, 9000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 165, 'T', 38, 86000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 165, 'G', 46, 158000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1219, 'G', 30, 62000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1220, 'G', 23, 60000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1221, 'G', 41, 81000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1222, 'G', 51, 120000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1219, 'T', 49, 223000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1220, 'T', 62, 295000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1221, 'T', 59, 313000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1222, 'T', 66, 284000.00, 2, 2000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 166, 'T', 35, 80000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 166, 'G', 47, 170000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1223, 'T', 74, 321000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1224, 'T', 76, 377000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1223, 'G', 47, 89000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1224, 'G', 45, 142000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1225, 'T', 69, 330000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1226, 'T', 67, 351000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1225, 'G', 55, 165000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1226, 'G', 52, 128000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 167, 'T', 27, 68000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 167, 'G', 43, 170000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1227, 'G', 64, 115000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1228, 'G', 67, 175000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1227, 'T', 59, 270000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1228, 'T', 66, 337000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1229, 'T', 44, 192000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1230, 'T', 65, 280000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1229, 'G', 44, 97000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1230, 'G', 38, 143000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1231, 'T', 29, 136000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1232, 'T', 23, 120000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1231, 'G', 11, 29000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1232, 'G', 8, 37000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 168, 'T', 33, 92000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 168, 'G', 30, 126000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1233, 'G', 49, 104000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1234, 'G', 48, 124000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1233, 'T', 47, 182000.00, 1, 1000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1234, 'T', 66, 355000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1235, 'T', 63, 318000.00, 1, 1000.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1236, 'T', 62, 287000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1235, 'G', 62, 133000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('E', 1236, 'G', 71, 166000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 169, 'G', 35, 128000.00, 0, 0.00);
INSERT INTO fsp_inp_totals (gameid, drawnr, vendorid, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount) VALUES ('P', 169, 'T', 40, 92000.00, 0, 0.00);


--
-- TOC entry 2814 (class 0 OID 18918)
-- Dependencies: 172
-- Data for Name: fsp_out_data; Type: TABLE DATA; Schema: dba; Owner: -
--

INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1078, '2015-10-03', 111, 347000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 147, '2015-10-29', 85, 276000.00, 0, 0.00, 992958.20);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 134, '2015-09-29', 106, 320000.00, 0, 0.00, 178955.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1079, '2015-10-04', 57, 159000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1043, '2015-09-16', 125, 330000.00, 1, 1000.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1080, '2015-10-04', 43, 140000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1044, '2015-09-16', 112, 290000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1192, '2015-11-29', 42, 179000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 136, '2015-10-03', 111, 310000.00, 0, 0.00, 227048.20);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 129, '2015-09-17', 92, 308000.00, 3, 6000.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1045, '2015-09-17', 163, 438000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1081, '2015-10-05', 171, 441000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1082, '2015-10-05', 152, 464000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1083, '2015-10-06', 162, 444000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1046, '2015-09-17', 189, 519000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1047, '2015-09-18', 206, 490000.00, 1, 1000.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1048, '2015-09-18', 172, 496000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1049, '2015-09-19', 147, 435000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1050, '2015-09-19', 127, 410000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1051, '2015-09-20', 57, 217000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1052, '2015-09-20', 62, 255000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1084, '2015-10-06', 156, 459000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1069, '2015-09-29', 148, 423000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 130, '2015-09-19', 116, 348000.00, 1, 2000.00, 5902.20);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 139, '2015-10-10', 76, 224000.00, 0, 0.00, 387166.40);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1053, '2015-09-21', 162, 482000.00, 1, 1000.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1054, '2015-09-21', 155, 421000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 137, '2015-10-06', 90, 282000.00, 0, 0.00, 321239.20);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1055, '2015-09-22', 177, 533000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1056, '2015-09-22', 221, 546000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1070, '2015-09-29', 161, 453000.00, 1, 1000.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 131, '2015-09-22', 94, 298000.00, 0, 0.00, 137392.80);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 138, '2015-10-08', 84, 270000.00, 0, 0.00, 368419.40);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 132, '2015-09-24', 116, 322000.00, 0, 0.00, 231150.60);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1085, '2015-10-07', 149, 433000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1086, '2015-10-07', 136, 423000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 133, '2015-09-26', 91, 282000.00, 0, 0.00, 293774.80);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1057, '2015-09-23', 216, 505000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1058, '2015-09-23', 182, 471000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1059, '2015-09-24', 199, 528000.00, 1, 1000.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1060, '2015-09-24', 150, 424000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1061, '2015-09-25', 157, 445000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1062, '2015-09-25', 155, 475000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1087, '2015-10-08', 189, 467000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1088, '2015-10-08', 128, 396000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1089, '2015-10-09', 115, 355000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1091, '2015-10-10', 129, 419000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1092, '2015-10-10', 122, 407000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1063, '2015-09-26', 145, 453000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1064, '2015-09-26', 127, 383000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1065, '2015-09-27', 83, 296000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1066, '2015-09-27', 81, 277000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1067, '2015-09-28', 136, 390000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1068, '2015-09-28', 111, 358000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1093, '2015-10-11', 61, 195000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1094, '2015-10-11', 84, 246000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1071, '2015-09-30', 153, 453000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1072, '2015-09-30', 141, 446000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1090, '2015-10-09', 128, 366000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1073, '2015-10-01', 166, 431000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1074, '2015-10-01', 146, 502000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1095, '2015-10-12', 143, 494000.00, 1, 1000.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1096, '2015-10-12', 138, 356000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 135, '2015-10-01', 90, 294000.00, 1, 2000.00, 150507.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1075, '2015-10-02', 164, 481000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1076, '2015-10-02', 153, 476000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1077, '2015-10-03', 121, 378000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1097, '2015-10-13', 162, 508000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1098, '2015-10-13', 168, 518000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 140, '2015-10-13', 93, 294000.00, 0, 0.00, 463252.80);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 141, '2015-10-15', 77, 266000.00, 0, 0.00, 524866.20);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1099, '2015-10-14', 154, 431000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1100, '2015-10-14', 139, 434000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1101, '2015-10-15', 174, 503000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1102, '2015-10-15', 147, 427000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1103, '2015-10-16', 177, 471000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1104, '2015-10-16', 183, 514000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 142, '2015-10-17', 97, 316000.00, 0, 0.00, 623468.80);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1105, '2015-10-17', 127, 352000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1106, '2015-10-17', 122, 442000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1107, '2015-10-18', 63, 200000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1108, '2015-10-18', 63, 222000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1109, '2015-10-19', 116, 375000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1110, '2015-10-19', 134, 452000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1111, '2015-10-20', 142, 398000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1112, '2015-10-20', 180, 499000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 143, '2015-10-20', 84, 266000.00, 0, 0.00, 718876.40);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1113, '2015-10-21', 147, 399000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1114, '2015-10-21', 148, 394000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1115, '2015-10-22', 149, 415000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 144, '2015-10-22', 84, 288000.00, 0, 0.00, 771479.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1116, '2015-10-22', 131, 409000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1117, '2015-10-23', 178, 450000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1118, '2015-10-23', 171, 472000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1119, '2015-10-24', 152, 414000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1120, '2015-10-24', 116, 362000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1193, '2015-11-30', 121, 381000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1195, '2015-12-01', 144, 567000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1121, '2015-10-25', 57, 226000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1122, '2015-10-25', 64, 190000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1129, '2015-10-29', 144, 433000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 145, '2015-10-24', 87, 280000.00, 0, 0.00, 821875.80);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1130, '2015-10-29', 145, 409000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1131, '2015-10-30', 145, 475000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1123, '2015-10-26', 99, 348000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1124, '2015-10-26', 119, 415000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1132, '2015-10-30', 128, 428000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1133, '2015-10-31', 99, 362000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1125, '2015-10-27', 159, 443000.00, 2, 9000.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1126, '2015-10-27', 142, 441000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1134, '2015-10-31', 82, 258000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 146, '2015-10-27', 92, 304000.00, 0, 0.00, 887983.80);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1135, '2015-11-01', 52, 144000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1127, '2015-10-28', 156, 443000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1128, '2015-10-28', 131, 402000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1136, '2015-11-01', 30, 112000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1197, '2015-12-02', 136, 427000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1199, '2015-12-03', 138, 462000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1201, '2015-12-04', 95, 379000.00, 1, 1000.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1153, '2015-11-10', 150, 458000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1203, '2015-12-05', 116, 332000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1154, '2015-11-10', 154, 453000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 162, '2015-12-03', 78, 290000.00, 0, 0.00, 1773635.60);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 148, '2015-10-31', 73, 218000.00, 0, 0.00, 1022921.80);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1137, '2015-11-02', 82, 314000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1138, '2015-11-02', 107, 475000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1139, '2015-11-03', 131, 511000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1140, '2015-11-03', 142, 567000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 149, '2015-11-03', 92, 276000.00, 0, 0.00, 1077791.60);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1141, '2015-11-04', 150, 458000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1142, '2015-11-04', 171, 694000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 152, '2015-11-10', 111, 346000.00, 0, 0.00, 1394202.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 150, '2015-11-05', 125, 448000.00, 0, 0.00, 1159755.20);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1143, '2015-11-05', 173, 526000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1144, '2015-11-05', 195, 720000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1145, '2015-11-06', 169, 561000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1146, '2015-11-06', 187, 626000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1147, '2015-11-07', 166, 482000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1148, '2015-11-07', 127, 494000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1149, '2015-11-08', 55, 214000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1150, '2015-11-08', 71, 274000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 151, '2015-11-07', 116, 340000.00, 0, 0.00, 1305928.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1151, '2015-11-09', 151, 410000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1152, '2015-11-09', 152, 449000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1155, '2015-11-11', 152, 500000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1156, '2015-11-11', 167, 526000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 153, '2015-11-12', 111, 318000.00, 0, 0.00, 1375692.60);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1157, '2015-11-12', 165, 537000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1158, '2015-11-12', 160, 479000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1159, '2015-11-13', 175, 539000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1160, '2015-11-13', 174, 593000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1161, '2015-11-14', 145, 466000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1162, '2015-11-14', 135, 506000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1163, '2015-11-15', 47, 198000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1167, '2015-11-17', 127, 453000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 154, '2015-11-14', 81, 250000.00, 0, 0.00, 1352172.40);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1164, '2015-11-15', 36, 167000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1165, '2015-11-16', 119, 394000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1166, '2015-11-16', 123, 475000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1168, '2015-11-17', 156, 510000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1173, '2015-11-20', 152, 536000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 155, '2015-11-17', 90, 284000.00, 0, 0.00, 1432197.40);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1169, '2015-11-18', 155, 523000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1170, '2015-11-18', 167, 561000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1174, '2015-11-20', 145, 516000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 156, '2015-11-19', 85, 290000.00, 0, 0.00, 1458449.80);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1171, '2015-11-19', 176, 573000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1172, '2015-11-19', 126, 442000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1175, '2015-11-21', 155, 537000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1176, '2015-11-21', 157, 478000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1177, '2015-11-22', 58, 196000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1178, '2015-11-22', 54, 234000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1182, '2015-11-24', 158, 516000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 157, '2015-11-21', 88, 280000.00, 0, 0.00, 1549918.80);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1179, '2015-11-23', 163, 449000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1180, '2015-11-23', 116, 386000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1181, '2015-11-24', 125, 335000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1183, '2015-11-25', 148, 512000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 158, '2015-11-24', 111, 322000.00, 0, 0.00, 1640026.80);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1184, '2015-11-25', 135, 407000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 159, '2015-11-26', 98, 304000.00, 0, 0.00, 1684651.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 160, '2015-11-28', 87, 288000.00, 0, 0.00, 1675625.40);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1185, '2015-11-26', 133, 372000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1186, '2015-11-26', 137, 453000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1187, '2015-11-27', 106, 290000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1188, '2015-11-27', 123, 429000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1189, '2015-11-28', 88, 323000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1190, '2015-11-28', 105, 446000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1191, '2015-11-29', 70, 335000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1194, '2015-11-30', 113, 433000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1196, '2015-12-01', 184, 660000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 161, '2015-12-01', 92, 294000.00, 0, 0.00, 1672022.20);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1198, '2015-12-02', 110, 377000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1200, '2015-12-03', 122, 493000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1202, '2015-12-04', 113, 367000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1204, '2015-12-05', 91, 391000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 163, '2015-12-05', 66, 220000.00, 0, 0.00, 1745104.60);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1205, '2015-12-06', 51, 185000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1206, '2015-12-06', 41, 160000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1207, '2015-12-07', 115, 360000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1208, '2015-12-07', 90, 343000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 167, '2015-12-17', 70, 238000.00, 0, 0.00, 1953905.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 164, '2015-12-10', 73, 250000.00, 0, 0.00, 1809046.60);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1209, '2015-12-09', 124, 475000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1210, '2015-12-09', 21, 43000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1211, '2015-12-10', 120, 434000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1212, '2015-12-10', 102, 398000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1213, '2015-12-11', 126, 454000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1214, '2015-12-11', 133, 465000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1215, '2015-12-12', 135, 391000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1216, '2015-12-12', 110, 420000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1217, '2015-12-13', 50, 171000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1218, '2015-12-13', 47, 208000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 165, '2015-12-12', 84, 244000.00, 0, 0.00, 1893071.60);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1219, '2015-12-14', 79, 285000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1220, '2015-12-14', 85, 355000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1221, '2015-12-15', 100, 394000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1222, '2015-12-15', 117, 404000.00, 2, 2000.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 166, '2015-12-15', 82, 250000.00, 0, 0.00, 1847880.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1223, '2015-12-16', 121, 410000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1224, '2015-12-16', 121, 519000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1225, '2015-12-17', 124, 495000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1226, '2015-12-17', 119, 479000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1227, '2015-12-18', 123, 385000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1228, '2015-12-18', 133, 512000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1229, '2015-12-19', 88, 289000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1230, '2015-12-19', 103, 423000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1231, '2015-12-20', 40, 165000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1232, '2015-12-20', 31, 157000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 168, '2015-12-19', 63, 218000.00, 0, 0.00, 2047496.80);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1233, '2015-12-21', 96, 286000.00, 1, 1000.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1234, '2015-12-21', 114, 479000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1235, '2015-12-22', 125, 451000.00, 1, 1000.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('E', 1236, '2015-12-22', 133, 453000.00, 0, 0.00, 0.00);
INSERT INTO fsp_out_data (gameid, drawnr, drawdate, salestotalq, salestotalamount, canceledtotalq, canceledtotalamount, totalaccum) VALUES ('P', 169, '2015-12-22', 75, 220000.00, 0, 0.00, 2088366.60);


--
-- TOC entry 2815 (class 0 OID 18924)
-- Dependencies: 173
-- Data for Name: fsp_out_divisions; Type: TABLE DATA; Schema: dba; Owner: -
--

INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 170000.00, 'E', 1071);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1071);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 110000.00, 'E', 1072);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1072);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 4, 90000.00, 'E', 1065);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 110000.00, 'E', 1197);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 1, 1000000.00, 'E', 1127);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 120000.00, 'E', 1073);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1073);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1065);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 80000.00, 'E', 1074);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1043);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 100000.00, 'E', 1043);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1074);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1044);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 220000.00, 'E', 1044);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 19, 240000.00, 'E', 1127);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 135);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 4, 40000.00, 'P', 135);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 2, 20000.00, 'P', 129);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 18, 36000.00, 'P', 129);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 1, 100000.00, 'P', 129);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 26400000.00, 'P', 129);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1045);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 19, 320000.00, 'E', 1045);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 20, 40000.00, 'P', 135);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 27000000.00, 'P', 135);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1046);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 18, 250000.00, 'E', 1046);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1047);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 60000.00, 'E', 1047);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 90000.00, 'E', 1048);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1048);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 13, 230000.00, 'E', 1049);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1049);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 120000.00, 'E', 1050);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1050);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 4, 110000.00, 'E', 1051);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1051);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 280000.00, 'E', 1052);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1052);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 9, 140000.00, 'E', 1075);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 27, 54000.00, 'P', 130);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 0, 0.00, 'P', 130);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 130);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 26500000.00, 'P', 130);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1075);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 110000.00, 'E', 1076);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 9, 130000.00, 'E', 1053);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1053);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1076);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 2, 2000000.00, 'E', 1077);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 100000.00, 'E', 1054);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1054);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 15, 150000.00, 'E', 1077);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 4, 40000.00, 'E', 1078);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 22, 410000.00, 'E', 1055);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1055);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 70000.00, 'E', 1056);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1056);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1078);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 1, 10000.00, 'P', 131);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 28, 56000.00, 'P', 131);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 131);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 26600000.00, 'P', 131);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 100000.00, 'E', 1079);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 5, 50000.00, 'P', 132);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 30, 60000.00, 'P', 132);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 132);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 26700000.00, 'P', 132);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1079);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 130000.00, 'E', 1080);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1080);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 16, 200000.00, 'E', 1083);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 2, 20000.00, 'P', 136);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 23, 46000.00, 'P', 133);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 2, 20000.00, 'P', 133);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 2, 200000.00, 'P', 133);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 26800000.00, 'P', 133);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 15, 210000.00, 'E', 1057);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1057);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 80000.00, 'E', 1058);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1058);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 9, 100000.00, 'E', 1059);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1059);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 120000.00, 'E', 1060);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1060);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 15, 240000.00, 'E', 1061);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1061);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 230000.00, 'E', 1062);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1062);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 26, 52000.00, 'P', 136);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 136);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 27100000.00, 'P', 136);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 18, 210000.00, 'E', 1081);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1081);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 60000.00, 'E', 1082);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1082);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 1, 10000.00, 'E', 1063);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1063);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 36, 460000.00, 'E', 1064);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1064);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 60000.00, 'E', 1066);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1066);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 12, 120000.00, 'E', 1067);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1067);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 80000.00, 'E', 1068);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1068);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1083);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 50000.00, 'E', 1084);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1084);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 35, 70000.00, 'P', 134);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 3, 30000.00, 'P', 134);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 1, 100000.00, 'P', 134);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 26900000.00, 'P', 134);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 22, 290000.00, 'E', 1069);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1069);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 21, 270000.00, 'E', 1070);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1070);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 22, 44000.00, 'P', 137);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 6, 60000.00, 'P', 137);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 137);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 27200000.00, 'P', 137);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 7, 70000.00, 'P', 138);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 138);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 28, 56000.00, 'P', 138);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 27300000.00, 'P', 138);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 14, 220000.00, 'E', 1085);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1085);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 90000.00, 'E', 1086);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1086);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 1, 10000.00, 'P', 146);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 120000.00, 'E', 1087);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1087);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 18, 200000.00, 'E', 1088);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1088);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 18, 300000.00, 'E', 1089);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1089);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 146);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 12, 290000.00, 'E', 1091);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1091);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 15, 180000.00, 'E', 1092);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1092);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 24, 48000.00, 'P', 146);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 28100000.00, 'P', 146);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1114);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 17, 34000.00, 'P', 139);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 1, 10000.00, 'P', 139);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 139);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 27400000.00, 'P', 139);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 17, 290000.00, 'E', 1128);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'E', 1093);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1093);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 170000.00, 'E', 1094);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1094);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1128);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 7, 70000.00, 'P', 147);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 90000.00, 'E', 1090);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1090);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 90000.00, 'E', 1095);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1095);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 12, 120000.00, 'E', 1096);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1096);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 24, 48000.00, 'P', 147);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 147);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 28200000.00, 'P', 147);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 20, 210000.00, 'E', 1097);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1097);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 14, 180000.00, 'E', 1098);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1098);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 140);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 4, 40000.00, 'P', 140);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 28, 56000.00, 'P', 140);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 27500000.00, 'P', 140);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 22, 44000.00, 'P', 141);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 0, 0.00, 'P', 141);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 141);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 27600000.00, 'P', 141);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 90000.00, 'E', 1099);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1099);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 23, 280000.00, 'E', 1100);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1100);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 9, 130000.00, 'E', 1129);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1129);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 12, 150000.00, 'E', 1130);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1130);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 9, 170000.00, 'E', 1101);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1101);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 24, 260000.00, 'E', 1102);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1102);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 3, 70000.00, 'E', 1103);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1103);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 16, 170000.00, 'E', 1104);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1104);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 130000.00, 'E', 1131);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1131);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 70000.00, 'E', 1132);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1132);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 12, 120000.00, 'E', 1133);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1133);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 130000.00, 'E', 1114);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 27, 54000.00, 'P', 142);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 2, 20000.00, 'P', 142);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 142);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 27700000.00, 'P', 142);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 130000.00, 'E', 1134);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1134);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 230000.00, 'E', 1135);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 14, 200000.00, 'E', 1105);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1105);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 90000.00, 'E', 1106);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1106);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 110000.00, 'E', 1107);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1107);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 12, 120000.00, 'E', 1108);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1108);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 120000.00, 'E', 1109);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1109);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 14, 160000.00, 'E', 1110);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1110);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 15, 170000.00, 'E', 1111);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1111);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 170000.00, 'E', 1112);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1112);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 25, 50000.00, 'P', 143);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 143);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 4, 40000.00, 'P', 143);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 27800000.00, 'P', 143);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1113);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 60000.00, 'E', 1113);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 144);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 5, 50000.00, 'P', 144);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 27, 54000.00, 'P', 144);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 27900000.00, 'P', 144);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 50000.00, 'E', 1115);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1115);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 160000.00, 'E', 1116);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1116);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 130000.00, 'E', 1117);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1117);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 12, 120000.00, 'E', 1118);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1118);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 13, 200000.00, 'E', 1119);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1119);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 3, 50000.00, 'E', 1120);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1120);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 2, 40000.00, 'E', 1121);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1121);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 2, 30000.00, 'E', 1122);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1122);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 22, 44000.00, 'P', 145);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 145);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 4, 40000.00, 'P', 145);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 28000000.00, 'P', 145);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 4, 80000.00, 'E', 1123);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1123);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 100000.00, 'E', 1124);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1124);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 80000.00, 'E', 1125);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1125);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 190000.00, 'E', 1126);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1126);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1135);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 3, 50000.00, 'E', 1136);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1136);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 16, 310000.00, 'E', 1156);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1156);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 3, 30000.00, 'P', 148);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 16, 32000.00, 'P', 148);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 148);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 28300000.00, 'P', 148);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 25, 330000.00, 'E', 1137);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1137);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 16, 710000.00, 'E', 1138);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1138);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 16, 200000.00, 'E', 1139);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1139);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 14, 350000.00, 'E', 1140);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1140);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 149);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 2, 20000.00, 'P', 149);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 23, 46000.00, 'P', 149);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 28400000.00, 'P', 149);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 15, 230000.00, 'E', 1141);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1141);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 160000.00, 'E', 1142);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1142);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 150);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 2, 20000.00, 'P', 150);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 37, 74000.00, 'P', 150);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 28500000.00, 'P', 150);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1143);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 13, 340000.00, 'E', 1143);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1144);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 9, 220000.00, 'E', 1144);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 17, 300000.00, 'E', 1145);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1145);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 110000.00, 'E', 1146);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1146);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 210000.00, 'E', 1147);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1147);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 3, 60000.00, 'E', 1148);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1148);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 120000.00, 'E', 1149);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1149);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 50000.00, 'E', 1150);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1150);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 4, 40000.00, 'P', 151);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 27, 54000.00, 'P', 151);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 151);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 28600000.00, 'P', 151);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 120000.00, 'E', 1151);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1151);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 13, 170000.00, 'E', 1152);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1152);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 70000.00, 'E', 1153);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1153);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 23, 260000.00, 'E', 1154);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1154);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 1, 100000.00, 'P', 152);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 5, 50000.00, 'P', 152);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 27, 54000.00, 'P', 152);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 28700000.00, 'P', 152);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 19, 420000.00, 'E', 1155);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1155);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 1, 100000.00, 'P', 153);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 3, 30000.00, 'P', 153);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 32, 64000.00, 'P', 153);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 28800000.00, 'P', 153);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 150000.00, 'E', 1157);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1157);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 160000.00, 'E', 1158);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1158);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 28, 430000.00, 'E', 1159);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1159);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 17, 230000.00, 'E', 1160);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1160);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 13, 260000.00, 'E', 1161);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1161);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 14, 260000.00, 'E', 1162);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1162);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 2, 60000.00, 'E', 1163);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1163);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 154);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 2, 20000.00, 'P', 154);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 17, 34000.00, 'P', 154);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 28900000.00, 'P', 154);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 1, 3000000.00, 'E', 1164);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'E', 1164);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 12, 150000.00, 'E', 1165);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1165);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 13, 170000.00, 'E', 1166);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1166);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 220000.00, 'E', 1167);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1167);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 1, 10000000.00, 'E', 1168);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 150000.00, 'E', 1168);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 33, 66000.00, 'P', 155);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 155);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 6, 60000.00, 'P', 155);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 29000000.00, 'P', 155);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 120000.00, 'E', 1169);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1169);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 210000.00, 'E', 1170);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1170);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 2, 20000.00, 'P', 156);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 156);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 22, 44000.00, 'P', 156);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 29100000.00, 'P', 156);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 160000.00, 'E', 1171);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1171);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 4, 80000.00, 'E', 1172);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1172);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1173);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 13, 260000.00, 'E', 1173);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1174);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 12, 270000.00, 'E', 1174);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 4, 110000.00, 'E', 1175);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1175);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 20, 270000.00, 'E', 1176);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1176);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 2, 70000.00, 'E', 1177);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1177);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 140000.00, 'E', 1178);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1178);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 2, 20000.00, 'P', 157);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 20, 40000.00, 'P', 157);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 157);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 29200000.00, 'P', 157);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 100000.00, 'E', 1179);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1179);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 60000.00, 'E', 1180);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1180);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 12, 130000.00, 'E', 1181);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1181);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 27, 270000.00, 'E', 1182);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1182);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1197);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 90000.00, 'E', 1198);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1198);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 130000.00, 'E', 1199);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 44, 88000.00, 'P', 158);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 158);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 4, 40000.00, 'P', 158);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 29300000.00, 'P', 158);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1199);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 270000.00, 'E', 1200);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 4, 70000.00, 'E', 1183);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1183);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 120000.00, 'E', 1184);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1184);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1200);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 50, 530000.00, 'E', 1201);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 159);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 12, 120000.00, 'P', 159);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 26, 52000.00, 'P', 159);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 29400000.00, 'P', 159);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 1, 1000000.00, 'E', 1201);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 70000.00, 'E', 1202);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1202);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 170000.00, 'E', 1203);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1203);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 3, 30000.00, 'E', 1204);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1204);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 3, 30000.00, 'P', 160);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 14, 28000.00, 'P', 160);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 1, 100000.00, 'P', 160);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 29500000.00, 'P', 160);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 70000.00, 'E', 1185);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1185);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 22, 270000.00, 'E', 1186);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1186);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 90000.00, 'E', 1187);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1187);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 12, 250000.00, 'E', 1188);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1188);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 9, 160000.00, 'E', 1189);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1189);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 3, 100000.00, 'E', 1190);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1190);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 150000.00, 'E', 1191);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1191);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 14, 140000.00, 'E', 1192);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1192);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 4, 40000.00, 'P', 162);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 22, 44000.00, 'P', 162);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 150000.00, 'E', 1193);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1193);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 240000.00, 'E', 1194);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1194);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 130000.00, 'E', 1195);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1195);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 3, 90000.00, 'E', 1196);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1196);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 1, 100000.00, 'P', 162);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 29700000.00, 'P', 162);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 2, 20000.00, 'P', 161);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 18, 36000.00, 'P', 161);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 161);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 29600000.00, 'P', 161);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 17, 34000.00, 'P', 163);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 163);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 2, 20000.00, 'P', 163);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 29800000.00, 'P', 163);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 2, 60000.00, 'E', 1205);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1205);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 3, 40000.00, 'E', 1206);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1206);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 1, 5000000.00, 'E', 1207);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 180000.00, 'E', 1207);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 170000.00, 'E', 1208);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1208);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'E', 1210);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 0, 0.00, 'P', 164);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 25, 50000.00, 'P', 164);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 164);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 29900000.00, 'P', 164);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 280000.00, 'E', 1209);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1209);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1210);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 24, 260000.00, 'E', 1211);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1211);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 310000.00, 'E', 1212);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1212);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 4, 120000.00, 'E', 1213);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1213);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 1, 1000000.00, 'E', 1214);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 16, 230000.00, 'E', 1214);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 170000.00, 'E', 1215);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1215);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 280000.00, 'E', 1216);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1216);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 6, 60000.00, 'E', 1217);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1217);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 1, 10000.00, 'E', 1218);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1218);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 1, 100000.00, 'P', 165);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 4, 40000.00, 'P', 165);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 18, 36000.00, 'P', 165);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 30000000.00, 'P', 165);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1219);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 110000.00, 'E', 1219);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1220);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 5, 60000.00, 'E', 1220);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1221);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 9, 90000.00, 'E', 1221);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1222);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 2, 40000.00, 'E', 1222);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 0, 0.00, 'P', 166);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 14, 28000.00, 'P', 166);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 166);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 30100000.00, 'P', 166);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 70000.00, 'E', 1223);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1223);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 16, 200000.00, 'E', 1224);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1224);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'E', 1225);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1225);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 9, 200000.00, 'E', 1226);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1226);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 167);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 0, 0.00, 'P', 167);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 17, 34000.00, 'P', 167);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 30200000.00, 'P', 167);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1227);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 14, 140000.00, 'E', 1227);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1228);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 18, 260000.00, 'E', 1228);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 2, 60000.00, 'E', 1229);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1229);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 10, 140000.00, 'E', 1230);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1230);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 3, 40000.00, 'E', 1231);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1231);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 4, 60000.00, 'E', 1232);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1232);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 168);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 5, 50000.00, 'P', 168);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 13, 26000.00, 'P', 168);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 30300000.00, 'P', 168);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1233);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 15, 250000.00, 'E', 1233);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1234);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 7, 110000.00, 'E', 1234);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 8, 120000.00, 'E', 1235);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1235);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 11, 110000.00, 'E', 1236);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 0.00, 'E', 1236);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (3, 3, 30000.00, 'P', 169);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (4, 18, 36000.00, 'P', 169);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (2, 0, 0.00, 'P', 169);
INSERT INTO fsp_out_divisions (divnr, winnersq, winnersamount, gameid, drawnr) VALUES (1, 0, 30400000.00, 'P', 169);


--
-- TOC entry 2697 (class 2606 OID 18917)
-- Name: fsp_inp_divisions_pk; Type: CONSTRAINT; Schema: dba; Owner: -
--

ALTER TABLE ONLY fsp_inp_divisions
    ADD CONSTRAINT fsp_inp_divisions_pk PRIMARY KEY (gameid, drawnr, vendorid, divnr);


--
-- TOC entry 2693 (class 2606 OID 18907)
-- Name: fsp_inp_header_pk; Type: CONSTRAINT; Schema: dba; Owner: -
--

ALTER TABLE ONLY fsp_inp_header
    ADD CONSTRAINT fsp_inp_header_pk PRIMARY KEY (gameid, drawnr);


--
-- TOC entry 2695 (class 2606 OID 18912)
-- Name: fsp_inp_totals_pk; Type: CONSTRAINT; Schema: dba; Owner: -
--

ALTER TABLE ONLY fsp_inp_totals
    ADD CONSTRAINT fsp_inp_totals_pk PRIMARY KEY (gameid, drawnr, vendorid);


--
-- TOC entry 2699 (class 2606 OID 18923)
-- Name: fsp_out_data_pk; Type: CONSTRAINT; Schema: dba; Owner: -
--

ALTER TABLE ONLY fsp_out_data
    ADD CONSTRAINT fsp_out_data_pk PRIMARY KEY (gameid, drawnr);


--
-- TOC entry 2701 (class 2606 OID 18928)
-- Name: fsp_out_divisions_pk; Type: CONSTRAINT; Schema: dba; Owner: -
--

ALTER TABLE ONLY fsp_out_divisions
    ADD CONSTRAINT fsp_out_divisions_pk PRIMARY KEY (divnr, gameid, drawnr);


--
-- TOC entry 2703 (class 2606 OID 18934)
-- Name: fsp_inp_divisions_gameid_fkey; Type: FK CONSTRAINT; Schema: dba; Owner: -
--

ALTER TABLE ONLY fsp_inp_divisions
    ADD CONSTRAINT fsp_inp_divisions_gameid_fkey FOREIGN KEY (gameid, drawnr, vendorid) REFERENCES fsp_inp_totals(gameid, drawnr, vendorid);


--
-- TOC entry 2702 (class 2606 OID 18929)
-- Name: fsp_inp_totals_gameid_fkey; Type: FK CONSTRAINT; Schema: dba; Owner: -
--

ALTER TABLE ONLY fsp_inp_totals
    ADD CONSTRAINT fsp_inp_totals_gameid_fkey FOREIGN KEY (gameid, drawnr) REFERENCES fsp_inp_header(gameid, drawnr);


--
-- TOC entry 2704 (class 2606 OID 18939)
-- Name: fsp_out_divisions_gameid_fkey; Type: FK CONSTRAINT; Schema: dba; Owner: -
--

ALTER TABLE ONLY fsp_out_divisions
    ADD CONSTRAINT fsp_out_divisions_gameid_fkey FOREIGN KEY (gameid, drawnr) REFERENCES fsp_out_data(gameid, drawnr);


-- Completed on 2015-12-25 09:35:38 ART

--
-- PostgreSQL database dump complete
--

