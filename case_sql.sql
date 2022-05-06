CREATE TABLE IF NOT EXISTS d_tempo (
	"ID_TEMPO" INT PRIMARY KEY,
	"DT_REF" TIMESTAMP,
	"NU_SEMANA" INT,
	"NU_MES" INT,
	"NU_TRIMESTRE" INT,
	"NU_SEMESTRE" INT,
	"NU_ANO" INT
);

CREATE TABLE IF NOT EXISTS d_loja (
	"ID_LOJA" INT PRIMARY KEY,
	"DS_NOME" VARCHAR(255),
	"DS_UF" VARCHAR(2),
	"DS_CIDADE" VARCHAR(255),
	"DS_EMPRESA" VARCHAR(255),
	"NU_CEP" VARCHAR(8)
);

CREATE TABLE IF NOT EXISTS d_pessoa (
	"ID_PESSOA" INT PRIMARY KEY,
	"NM_PESSOA" VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS f_venda (
	"ID_VENDA" INT PRIMARY KEY,
	"VL_VENDA" NUMERIC,
	"NU_VENDA" INT,
	"VL_LUCRO" NUMERIC,
	"VL_CUSTO" NUMERIC,
	"ID_LOJA" INT,
	"ID_TEMPO" INT,
	"ID_PESSOA" INT,
	FOREIGN KEY ("ID_LOJA") REFERENCES d_loja("ID_LOJA"),
	FOREIGN KEY ("ID_TEMPO") REFERENCES d_tempo("ID_TEMPO"),
	FOREIGN KEY ("ID_PESSOA") REFERENCES d_pessoa("ID_PESSOA")
);


INSERT INTO "d_pessoa" ("ID_PESSOA", "NM_PESSOA") VALUES (1, 'João');
INSERT INTO "d_pessoa" ("ID_PESSOA", "NM_PESSOA") VALUES (2, 'Pedro');
INSERT INTO "d_pessoa" ("ID_PESSOA", "NM_PESSOA") VALUES (3, 'Maria');
INSERT INTO "d_pessoa" ("ID_PESSOA", "NM_PESSOA") VALUES (4, 'Cristina');

INSERT INTO "d_loja" ("ID_LOJA", "DS_NOME", "DS_UF", "DS_CIDADE", "DS_EMPRESA", "NU_CEP") VALUES (1, 'Loja de roupas', 'CE', 'Fortaleza', 'Fortaleza', '06803440');
INSERT INTO "d_loja" ("ID_LOJA", "DS_NOME", "DS_UF", "DS_CIDADE", "DS_EMPRESA", "NU_CEP") VALUES (2, 'Loja de sapatos', 'CE', 'Fortaleza', 'Fortaleza', '06803440');
INSERT INTO "d_loja" ("ID_LOJA", "DS_NOME", "DS_UF", "DS_CIDADE", "DS_EMPRESA", "NU_CEP") VALUES (3, 'Loja de brinquedos', 'PA', 'Belém', 'Belém', '47806421');
INSERT INTO "d_loja" ("ID_LOJA", "DS_NOME", "DS_UF", "DS_CIDADE", "DS_EMPRESA", "NU_CEP") VALUES (4, 'Loja de calças', 'SP', 'São Paulo', 'São Paulo', '08090284');


INSERT INTO "d_tempo" ("ID_TEMPO", "DT_REF", "NU_SEMANA", "NU_MES", "NU_TRIMESTRE", "NU_SEMESTRE", "NU_ANO") VALUES (1, '2020-01-01 00:00:00', 1, 1, 1, 1, 2020);
INSERT INTO "d_tempo" ("ID_TEMPO", "DT_REF", "NU_SEMANA", "NU_MES", "NU_TRIMESTRE", "NU_SEMESTRE", "NU_ANO") VALUES (2, '2020-02-01 00:00:00', 1, 2, 1, 1, 2020);
INSERT INTO "d_tempo" ("ID_TEMPO", "DT_REF", "NU_SEMANA", "NU_MES", "NU_TRIMESTRE", "NU_SEMESTRE", "NU_ANO") VALUES (3, '2020-03-01 00:00:00', 1, 3, 1, 1, 2020);
INSERT INTO "d_tempo" ("ID_TEMPO", "DT_REF", "NU_SEMANA", "NU_MES", "NU_TRIMESTRE", "NU_SEMESTRE", "NU_ANO") VALUES (4, '2020-04-01 00:00:00', 1, 4, 1, 1, 2020);
INSERT INTO "d_tempo" ("ID_TEMPO", "DT_REF", "NU_SEMANA", "NU_MES", "NU_TRIMESTRE", "NU_SEMESTRE", "NU_ANO") VALUES (5, '2021-01-01 00:00:00', 1, 1, 1, 1, 2021);
INSERT INTO "d_tempo" ("ID_TEMPO", "DT_REF", "NU_SEMANA", "NU_MES", "NU_TRIMESTRE", "NU_SEMESTRE", "NU_ANO") VALUES (6, '2021-02-01 00:00:00', 1, 2, 1, 1, 2021);
INSERT INTO "d_tempo" ("ID_TEMPO", "DT_REF", "NU_SEMANA", "NU_MES", "NU_TRIMESTRE", "NU_SEMESTRE", "NU_ANO") VALUES (7, '2021-03-01 00:00:00', 1, 3, 1, 1, 2021);
INSERT INTO "d_tempo" ("ID_TEMPO", "DT_REF", "NU_SEMANA", "NU_MES", "NU_TRIMESTRE", "NU_SEMESTRE", "NU_ANO") VALUES (8, '2021-04-01 00:00:00', 1, 4, 1, 1, 2021);


INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (1, 100.00, 1, 50, 50, 1, 1, 1);
INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (2, 100.00, 2, 50, 50, 2, 2, 2);
INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (3, 100.00, 3, 50, 50, 3, 3, 3);
INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (4, 100.00, 4, 50, 50, 4, 4, 4);
INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (5, 100.00, 5, 50, 50, 1, 3, 1);
INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (6, 100.00, 6, 50, 50, 2, 6, 2);
INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (7, 100.00, 7, 50, 50, 3, 7, 3);
INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (8, 100.00, 8, 50, 50, 4, 8, 4);
INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (9, 100.00, 9, 50, 50, 1, 1, 1);
INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (10, 100.00, 10, 50, 50, 2, 2, 2);
INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (11, 100.00, 11, 50, 50, 3, 3, 3);
INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (12, 100.00, 12, 50, 50, 4, 4, 4);
INSERT INTO "f_venda" ("ID_VENDA", "VL_VENDA", "NU_VENDA", "VL_LUCRO", "VL_CUSTO", "ID_LOJA", "ID_TEMPO", "ID_PESSOA") VALUES (13, 100.00, 13, 50, 50, 1, 5, 1);


-- todas as compras realizadas no mês de janeiro de 2020 em lojas no estado do Ceará

SELECT p."ID_PESSOA", p."NM_PESSOA", t."DT_REF", v."VL_VENDA" 
FROM f_venda v	INNER JOIN d_loja l ON v."ID_LOJA" = l."ID_LOJA"
INNER JOIN d_tempo t ON v."ID_TEMPO" = t."ID_TEMPO" 
INNER JOIN d_pessoa p ON v."ID_PESSOA" = p."ID_PESSOA"
WHERE l."DS_UF" = 'CE' 
AND t."NU_MES" = 1 AND t."NU_ANO" = 2020; 


SELECT p."ID_PESSOA", p."NM_PESSOA", t."DT_REF", v."VL_VENDA" 
FROM f_venda v	INNER JOIN d_loja l ON v."ID_LOJA" = l."ID_LOJA"
INNER JOIN d_tempo t ON v."ID_TEMPO" = t."ID_TEMPO" 
INNER JOIN d_pessoa p ON v."ID_PESSOA" = p."ID_PESSOA"
WHERE l."DS_UF" = 'CE' 
AND t."DT_REF" >= '2020-01-01 00:00:00'
AND t."DT_REF" <= '2020-01-31 23:59:59';


-- Quantidade de compras por cliente no mês de março de 2020

SELECT p."ID_PESSOA", COUNT(*) AS quantidade_compras 
FROM f_venda v	INNER JOIN d_loja l ON v."ID_LOJA" = l."ID_LOJA"
INNER JOIN d_tempo t ON v."ID_TEMPO" = t."ID_TEMPO" 
INNER JOIN d_pessoa p ON v."ID_PESSOA" = p."ID_PESSOA"
WHERE t."DT_REF" >= '2020-03-01 00:00:00'
AND t."DT_REF" <= '2020-03-31 23:59:59'
GROUP BY p."ID_PESSOA";


--  Todos os clientes que não fizeram compras no mês de março de 2020

SELECT * FROM d_pessoa p WHERE p."ID_PESSOA" NOT IN (SELECT p."ID_PESSOA"
FROM f_venda v	INNER JOIN d_loja l ON v."ID_LOJA" = l."ID_LOJA"
INNER JOIN d_tempo t ON v."ID_TEMPO" = t."ID_TEMPO" 
INNER JOIN d_pessoa p ON v."ID_PESSOA" = p."ID_PESSOA"
WHERE t."DT_REF" >= '2020-03-01 00:00:00'
AND t."DT_REF" <= '2020-03-31 23:59:59'
GROUP BY p."ID_PESSOA");


-- Data da última compra por cliente

SELECT p."ID_PESSOA", p."NM_PESSOA", MAX(t."DT_REF") AS data_ultima_compra
FROM f_venda v	INNER JOIN d_loja l ON v."ID_LOJA" = l."ID_LOJA"
INNER JOIN d_tempo t ON v."ID_TEMPO" = t."ID_TEMPO" 
INNER JOIN d_pessoa p ON v."ID_PESSOA" = p."ID_PESSOA"
GROUP BY p."ID_PESSOA";
