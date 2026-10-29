SET search_path TO classicmodels, public;

BEGIN;

UPDATE orders
SET status = 'Pengiriman'
WHERE orderNumber = 10100;

SAVEPOINT status_pengiriman;

UPDATE orders
SET status = 'Batal'
WHERE orderNumber = 10100;

ROLLBACK TO SAVEPOINT status_pengiriman;

COMMIT;