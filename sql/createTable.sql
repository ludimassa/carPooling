CREATE TABLE autisti
(
    idAutista int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(20),
    cognome varchar(20),
    email varchar(50),
    recapitoTelefonico varchar(30),
    numeroPatente varchar(10),
    scadenzaPatente datetime,
    pathFoto varchar(20)
);
CREATE TABLE passeggeri
(
    idPasseggero int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(20),
    cognome varchar(20),
    email varchar(50),
    recapitoTelefonico varchar(30),
    documentoIdentita enum('Patente', 'Carta di identità', 'Passaporto'),
    numeroDocumento varchar(15)
);
CREATE TABLE feedback
(
    idFeedback int PRIMARY KEY AUTO_INCREMENT,
    commento varchar(500),
    valutazione tinyint(1),
    idAutista int,
    idPasseggero int,
    CONSTRAINT feedback_autisti_idAutista_fk FOREIGN KEY (idAutista) REFERENCES autisti (idAutista) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT feedback_passeggeri_idPasseggero_fk FOREIGN KEY (idPasseggero) REFERENCES passeggeri (idPasseggero) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE auto
(
    idAuto int PRIMARY KEY AUTO_INCREMENT,
    modello varchar(30),
    marca varchar(30),
    idAutista int,
    CONSTRAINT auto_autisti_idAutista_fk FOREIGN KEY (idAutista) REFERENCES autisti (idAutista) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE viaggio
(
    idViaggio int PRIMARY KEY AUTO_INCREMENT,
    partenza varchar(30),
    arrivo varchar(30),
    dataOraPartenza date,
    tempoStimato int,
    costo decimal(5,2),
    idAutista int,
    idAuto int,
    CONSTRAINT viaggio_autisti_idAutista_fk FOREIGN KEY (idAutista) REFERENCES autisti (idAutista) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT viaggio_auto_idAuto_fk FOREIGN KEY (idAuto) REFERENCES auto (idAuto) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE prenotazione
(
    idPrenotazione int PRIMARY KEY AUTO_INCREMENT,
    partenza varchar(30),
    arrivo varchar(30),
    statoPrenotazione enum('Da accettare', 'Accettata', 'Rifiutata'),
    idViaggio int,
    idPasseggero int,
    CONSTRAINT prenotazione_viaggio_idViaggio_fk FOREIGN KEY (idViaggio) REFERENCES viaggio (idViaggio) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT prenotazione_passeggeri_idPasseggero_fk FOREIGN KEY (idPasseggero) REFERENCES passeggeri (idPasseggero) ON DELETE CASCADE ON UPDATE CASCADE
);