
--
-- Dump dei dati per la tabella `autisti`
--

INSERT INTO `autisti` (`idAutista`, `nome`, `cognome`, `email`, `recapitoTelefonico`, `numeroPatente`, `scadenzaPatente`, `pathFoto`) VALUES
(1, 'Arturo', 'Altamura', 'arturoAltamura@pooling.it', '3335245633', '252525', '2070-01-06 00:00:00', NULL),
(2, 'Massimo', 'Fortunato', 'massimoFortunato@lumas.it', '2536330454', '252541', '2020-01-03 00:00:00', NULL);

-- --------------------------------------------------------
--
-- Dump dei dati per la tabella `auto`
--

INSERT INTO `auto` (`idAuto`, `modello`, `marca`, `idAutista`) VALUES
(1, 'C3', 'Citroen', 1),
(2, 'A3', 'Audi', 1),
(3, 'A6', 'Audi', 2);



--
-- Dump dei dati per la tabella `feedback`
--

INSERT INTO `feedback` (`idFeedback`, `commento`, `valutazione`, `idAutista`, `idPasseggero`) VALUES
(1, 'Ottimo autista, veloce ed educato', 5, 1, NULL),
(2, 'L\'autista corre un pò troppo', 4, 1, NULL),
(3, 'Passeggero simpatico e puntuale', 5, NULL, 1),
(4, 'Passeggero ritardatario mi ha fatto aspettare 2 ore', 2, NULL, 1),
(5, 'Il passeggero disturba durante la guida', 2, NULL, 2),
(6, 'Passeggero che non si lava', 1, NULL, 2);

--
-- Dump dei dati per la tabella `passeggeri`
--

INSERT INTO `passeggeri` (`idPasseggero`, `nome`, `cognome`, `email`, `recapitoTelefonico`, `documentoIdentita`, `numeroDocumento`) VALUES
(1, 'Luca', 'Mascolo', 'lucamascolo23@lumasino.it', '253655', 'Patente', '252630'),
(2, 'Marica', 'Fruscio', 'maricafruscio@ssccalcionapoli.it', '252421', 'Carta di identità', '142532'),
(3, 'Elisabetta', 'Gregoraci', 'bettagrego@gmail.com', '3334562152', 'Passaporto', '145232');

-- --------------------------------------------------------

--
-- Dump dei dati per la tabella `prenotazione`
--

INSERT INTO `prenotazione` (`idPrenotazione`, `partenza`, `arrivo`, `statoPrenotazione`, `idViaggio`, `idPasseggero`) VALUES
(1, 'Napoli', 'Secondigliano', 'Da accettare', 3, 1),
(2, 'Napoli', 'Barcellona', 'Da accettare', 1, 3),
(3, 'Napoli', 'Bari', 'Accettata', 4, 2),
(4, 'Napoli', 'Bari', 'Da accettare', 1, 1);

--
-- Dump dei dati per la tabella `viaggi`
--

INSERT INTO `viaggi` (`idViaggio`, `partenza`, `arrivo`, `dataOraPartenza`, `tempoStimato`, `costo`, `stato`, `idAutista`, `idAuto`) VALUES
(1, 'Napoli', 'Barcellona', '2019-05-21', 2250, '300', 'Prenotazioni aperte', 1, 1),
(2, 'Napoli', 'Roma', '2019-05-30', 120, '15', 'Prenotazioni aperte', 1, 2),
(3, 'Napoli', 'Secondigliano', '2019-05-21', 2, '5', 'Prenotazioni aperte', 2, 3),
(4, 'Napoli', 'Bari', '2019-05-19', 180, '10', 'Prenotazioni aperte', 1, 2);
