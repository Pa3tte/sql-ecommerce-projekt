INSERT INTO kunden (name, email) VALUES
('Patrick', 'patrick@mail.de'),
('Anna', 'anna@mail.de'),
('Tom', 'tom@mail.de');

INSERT INTO produkte (name, preis) VALUES
('T-Shirt', 19.99),
('Hose', 49.99),
('Sneaker', 89.99);

INSERT INTO bestellungen (kunden_id, bestelldatum) VALUES
(1, '2025-07-01'),
(2, '2025-07-02');

INSERT INTO bestellpositionen (bestellung_id, produkt_id, menge) VALUES
(1, 1, 2),  -- Patrick hat 2 T-Shirts bestellt
(1, 3, 1),  -- Patrick hat 1 Paar Sneaker bestellt
(2, 2, 1);  -- Anna hat 1 Hose bestellt