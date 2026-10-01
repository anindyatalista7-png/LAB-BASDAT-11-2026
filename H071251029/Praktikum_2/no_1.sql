SET search_path TO dbPraktikum, public;

-- SOAL 1
INSERT INTO mahasiswa (nim, nama, email, id_prodi)
VALUES
('H071251029', 'Han Taesan', 'taesan@gmail.com', 1),
('H071251083', 'Kim Ryul', NULL, 2),
('H071251087', 'Karina', 'karina@gmail.com', 1)
RETURNING *;




