SET search_path TO classicmodels, public;

SELECT
    productCode,
    productName,
    MSRP,
    quantityInStock,
    CASE
        WHEN MSRP < 50 AND quantityInStock > 500
            THEN 'Ekonomis - Stok Tinggi'
        WHEN MSRP < 50 AND quantityInStock <= 500
            THEN 'Ekonomis - Stok Rendah'
        WHEN MSRP BETWEEN 50 AND 100
            THEN 'Harga Menengah'
        WHEN MSRP > 100
            THEN 'Harga Premium'
    END AS kategori
FROM products
ORDER BY MSRP DESC;