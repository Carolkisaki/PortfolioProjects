-- Para iniciarmos a estrutura de um projeto SQL a partir de um arquivo .csv , o processo começa com a importação da tabela para realizarmos as consultas
-- Passos principais:
    --Carregar os dados do CSV na tabela.
    --Executar consultas iniciais para fornecer insights

-- 1. Total de Serpentes Venenosas e Não Venenosas
SELECT
    poisonous,
    COUNT(*) AS total_serpentes
FROM
    serpentes
GROUP BY
    poisonous;

--2. Número de Famílias por Continente
SELECT
    continent,
    family,
    COUNT(*) AS total_serpentes
 FROM
 	serpentes
 GROUP BY
 	continent, family;

--3. Distribuição de Serpentes Peçonhentas por Continente
SELECT
	continent,
    poisonous,
    COUNT(*) AS total_serpentes
FROM
	serpentes
GROUP BY
	continent, poisonous;

--4. Gêneros de Serpentes por Continente
SELECT
	continent,
    genus,
    COUNT(*) AS total_serpentes
FROM
	serpentes
GROUP BY
	continent, genus;
