SELECT
  k.name AS kunde,
  b.id AS bestell_id,
  b.bestelldatum
FROM bestellungen b
JOIN kunden k ON b.kunden_id = k.id;

SELECT
  k.name AS kunde,
  b.bestelldatum,
  p.name AS produkt,
  bp.menge
FROM bestellpositionen bp
JOIN produkte p ON bp.produkt_id = p.id
JOIN bestellungen b ON bp.bestellung_id = b.id
JOIN kunden k ON b.kunden_id = k.id;

SELECT
  b.id,
  SUM(p.preis * bp.menge) AS gesamtpreis
FROM bestellpositionen bp
JOIN produkte p ON bp.produkt_id = p.id
JOIN bestellungen b ON bp.bestellung_id = b.id
GROUP BY b.id;