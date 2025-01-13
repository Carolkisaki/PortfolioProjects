-- Para iniciarmos a estrutura de um projeto SQL a partir de um arquivo .csv , o processo começa com a importação da tabela para realizarmos as consultas
-- Passos principais:
    --Carregar os dados do CSV no SQL Lite
    --Separar os dados da tabela e selecionar a primeira linha como cabeçalho da tabela
    --Executar consultas iniciais para fornecer insights

-- 1. Total de Serpentes Venenosas e Não Venenosas por Gênero e Família
SELECT
    genus,
    family,
    poisonous,
    COUNT(*) AS total_serpentes
FROM
    serpentes
GROUP BY
    genus, family, poisonous
ORDER BY
    poisonous DESC, total_serpentes DESC;

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

--5. TOP 5 Serpentes Peçonhentas com o Maior Número de Espécies
SELECT
    genus,
    COUNT(DISTINCT binomial) AS total_especies
FROM
    serpentes
WHERE
    poisonous = 'peconhento'
GROUP BY
    genus
ORDER BY
    total_especies DESC
LIMIT 5;

