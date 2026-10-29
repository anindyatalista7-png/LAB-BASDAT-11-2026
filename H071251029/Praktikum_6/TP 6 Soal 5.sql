SET search_path TO classicmodels, public;

-- 1. membuat tabel anggota
CREATE TABLE anggota (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nama_anggota VARCHAR(50) NOT NULL,
    kota_domisili VARCHAR(20) NOT NULL
);

-- 2. membuat tabel buku
CREATE TABLE buku (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    judul_buku VARCHAR(100) NOT NULL,
    genre VARCHAR(20) NOT NULL,
    stok INTEGER DEFAULT 1
);

-- 3. membuat tabel peminjaman
CREATE TABLE peminjaman (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_anggota INTEGER REFERENCES anggota(id),
    id_buku INTEGER REFERENCES buku(id),
    tanggal_pinjam DATE NOT NULL,
    tanggal_kembali DATE,
    denda INTEGER DEFAULT 0
);

-- 4. membuat index untuk genre buku
CREATE INDEX idx_buku_genre
ON buku(genre);

-- 5. membuat index untuk kota domisili anggota
CREATE INDEX idx_anggota_kota_domisili
ON anggota(kota_domisili);


-- cek tabel name
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY table_name;

-- periksa index
SELECT tablename, indexname
FROM pg_indexes
WHERE schemaname = 'public'
  AND tablename IN ('anggota', 'buku')
ORDER BY tablename, indexname;