-- SOAL 2
INSERT INTO mahasiswa (nim, nama, ipk, email, id_prodi)
VALUES
('H071251016', 'Joshua', 3.50, 'joshua@gmail.com', 1),
('H071251078', 'Keonho', 3.50, 'keonho@gmail.com', 2),
('H071251012', 'Giselle', 3.50, 'giselle@gmail.com', 1);

UPDATE mahasiswa
SET ipk = 3.75
WHERE ipk = 3.50
RETURNING *;

DELETE FROM mahasiswa
WHERE email IS NULL
RETURNING *;

SELECT * FROM mahasiswa;
