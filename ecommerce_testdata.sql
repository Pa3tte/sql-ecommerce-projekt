INSERT INTO kunden (name, email) VALUES
('Patrick', 'patrick@mail.de'),
('Anna', 'anna@mail.de'),
('Caro', 'caro@mail.de'),
('Jan', 'jan@mail.de'),
('Elena', 'elena@mail.de'),
('Veyda', 'veyda@mail.de'),
('Velma', 'velma@mail.de'),
('Ruben', 'ruben@mail.de'),
('Staupe', 'staupe@mail.de'),
('Tilo', 'tilo@mail.de');

INSERT INTO produkte (name, preis) VALUES
('T-Shirt', 19.99),
('Hose', 49.99),
('Sneaker', 89.99),
('Ringe', 5.99),
('Ketten', 24.99),
('Halsband', 8.99),
('Poster', 39.99),
('Caps', 15.99),
('Mützen', 8.25);

INSERT INTO bestellungen (kunden_id, bestelldatum) VALUES
(1, '2024-07-01'),
(2, '2024-07-02'),
(3, '2025-07-05'),
(4, '2025-07-02'),
(9, '2025-07-09'),
(5, '2025-07-10'),
(1, '2025-08-02'),
(10, '2025-08-05'),
(3, '2025-09-25'),
(3, '2025-10-08'),
(8, '2025-10-09'),
(6, '2025-11-15');

INSERT INTO bestellpositionen (bestellung_id, produkt_id, menge) VALUES
(1, 1, 2),  -- Patrick hat 2 T-Shirts bestellt
(1, 3, 1),  -- Patrick hat 1 Paar Sneaker bestellt
(2, 2, 1),  -- Anna hat 1 Hose bestellt
(3, 9, 5),
(4, 5, 6),
(5, 8, 4),
(6, 1, 1),
(7, 7, 9),
(8, 4, 10),
(9, 4, 111),
(10, 3, 7),
(11, 2, 6),
(12, 6, 2);















