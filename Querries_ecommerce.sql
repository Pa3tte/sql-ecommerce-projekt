-- Welche Kunden haben welche Produkte bestellt?
SELECT k.name, p.name AS produkt, bp.menge
FROM kunden k
JOIN bestellungen b ON k.id = b.kunden_id
JOIN bestellpositionen bp ON b.id = bp.bestellung_id
JOIN produkte p ON bp.produkt_id = p.id;

-- Alle Bestellungen mit Datum und Gesamtsumme:
SELECT b.id, b.bestelldatum, k.name,
       SUM(p.preis * bp.menge) AS gesamtpreis
FROM bestellungen b
JOIN kunden k ON k.id = b.kunden_id
JOIN bestellpositionen bp ON b.id = bp.bestellung_id
JOIN produkte p ON bp.produkt_id = p.id
GROUP BY b.id, b.bestelldatum, k.name;

-- Welche Produkte wurden wie oft verkauft?
SELECT p.name, SUM(bp.menge) AS gesamt_menge
FROM produkte p
JOIN bestellpositionen bp ON p.id = bp.produkt_id
GROUP BY p.name;

-- Welcher Kunde hat am meisten Geld ausgegeben?
SELECT k.name, SUM(p.preis * bp.menge) AS umsatz
FROM kunden k
JOIN bestellungen b ON k.id = b.kunden_id
JOIN bestellpositionen bp ON b.id = bp.bestellung_id
JOIN produkte p ON p.id = bp.produkt_id
GROUP BY k.name
ORDER BY umsatz DESC
LIMIT 1;

-- Kunden, die mehr als 1 Bestellung gemacht haben:
SELECT name FROM kunden
WHERE id IN (
  SELECT kunden_id
  FROM bestellungen
  GROUP BY kunden_id
  HAVING COUNT(*) > 1
);