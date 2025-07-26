CREATE TABLE produkte (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  preis NUMERIC(10,2) NOT NULL
);
CREATE TABLE bestellungen (
  id SERIAL PRIMARY KEY,
  kunden_id INTEGER REFERENCES kunden(id),
  bestelldatum DATE NOT NULL
);
CREATE TABLE bestellpositionen (
  id SERIAL PRIMARY KEY,
  bestellung_id INTEGER REFERENCES bestellungen(id),
  produkt_id INTEGER REFERENCES produkte(id),
  menge INTEGER NOT NULL
);