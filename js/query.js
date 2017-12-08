var query1 = '\
SELECT seminare.titel, kategorien.kategorie, raeume.raum, teilnehmer.anrede, teilnehmer.vorname, teilnehmer.nachname \
FROM anmeldung \
JOIN seminar_termine \
ON seminar_termine.id=seminar_termin_id \
JOIN seminare \
ON seminare.id=seminar_termine.seminar_id \
JOIN teilnehmer \
ON anmeldung.teilnehmer_id=teilnehmer.id \
JOIN raeume \
ON raeume.id=seminar_termine.raum_id \
JOIN kategorien \
ON kategorien.id=seminare.kategorie_id';