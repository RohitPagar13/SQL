CREATE TABLE MyTable (
    Column1 INT,
    Column2 INT,
    Column3 INT,
    Column4 INT,
    PRIMARY KEY (Column1, Column2, Column3, Column4)
);

INSERT INTO MyTable (Column1, Column2, Column3, Column4)
VALUES 
(1, 2, 3, 4),
(2, 3, 4, 5),
(3, 4, 5, 6),
(4, 5, 6, 7);

SELECT * FROM MyTable;

CREATE INDEX IX_MyTable_Column1_Column2_non
ON MyTable (Column1, Column2);

select * into mynew from MyTable;
