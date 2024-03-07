-- tabeli toiduaine loomine
CREATE TABLE toiduaine(
    toiduaine_id int PRIMARY KEY AUTO_INCREMENT,
    toiduaine_nimi varchar(100));
-- tabeli yhik loomine
CREATE TABLE yhik(
    yhik_id int PRIMARY KEY AUTO_INCREMENT,
    yhik_nimi varchar(100));
-- tabeli kootis loomine
CREATE TABLE koostis(
    kooostis_id int PRIMARY KEY AUTO_INCREMENT,
	  kogus int,
    retsept_retsept_id int,
    toiduaine_id int,
    yhik_id int,
    FOREIGN KEY(toiduaine_id) REFERENCES toiduaine(toiduaine_id),
    FOREIGN KEY(yhik_id) REFERENCES yhik(yhik_id)
    );
CREATE TABLE kasutaja(
    kasutaja_id int PRIMARY KEY AUTO_INCREMENT,
    eesnimi varchar(100),
    perenimi varchar(50),
    email varchar(150));

CREATE TABLE kategooria(
    kategooria_id int PRIMARY KEY AUTO_INCREMENT,
    kategooria_nimi varchar(100));

CREATE TABLE retsept(
    retsepti_id int PRIMARY KEY AUTO_INCREMENT,
    retsepti_nimi varchar(100),
	kirjeldus varchar(200),
    juhend text,
    sisetatud_kp date,
    kasutaja_id int,
    kategooria_id int,
    FOREIGN KEY (kasutaja_id) REFERENCES kasutaja(kasutaja_id),
    FOREIGN KEY (kategooria_id) REFERENCES kategooria(kategooria_id));

CREATE TABLE tehtud(
    tehtud_id int PRIMARY KEY AUTO_INCREMENT,
    tehtud_kp date,
    retsepti_id int,
    FOREIGN KEY (retsepti_id) REFERENCES retsept(retsepti_id));
