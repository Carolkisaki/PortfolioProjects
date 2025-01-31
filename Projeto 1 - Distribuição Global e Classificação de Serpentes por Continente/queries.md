###  Antes de iniciarmos a estrutura de um projeto SQL a partir de um arquivo .csv , o processo começa com a importação da tabela para realizarmos as consultas

### Principais passos:
Carregar os dados do CSV no SQL Lite

Separar os dados da tabela e selecionar a primeira linha como cabeçalho da tabela

Executar consultas iniciais para fornecer insights

## 1. Qual o total de Serpentes Peçonhentas e Não Peçonhentas por Família?

```sql

SELECT
    family,
    poisonous,
    COUNT(*) AS total_serpentes
FROM
    serpentes
GROUP BY
    family, poisonous
ORDER BY
    poisonous DESC, total_serpentes DESC;
```
Resultado:
``` markdown
|fammily        |poisonous       |total_serpentes |
|---------------|----------------|----------------|
|Viperidae      |peconhento      |235             |
|Elapidae       |peconhento      |130             |
|Colubridae     |peconhento      |44              |
|Lamprophiidae  |peconhento      |7               |
|Colubridae     |nao peconhento  |641             |
|Boidae         |nao peconhento  |76              |
|Pythonidae     |nao peconhento  |51              |
|Lamprophiidae  |nao peconhento  |22              |
```
Observa-se que a Família Lamprophiidae apareceu duas vezes, como serpente peçonhenta e não peçonhenta, essa afirmação está correta. Nem todas as serpentes dessa familia possuem a peçonha, isso se deve às mudanças em sua dieta.
Fonte: Naik, Hiral, Mimmie M. Kgaditse, and Graham J. Alexander. "Ancestral reconstruction of diet and fang condition in the Lamprophiidae: implications for the evolution of venom systems in snakes." Journal of Herpetology 55.1 (2021): 1-10.

### 2 - Quais os 3 Continentes com o Maior número de serpentes?

```sql

SELECT
    continent,
    COUNT(*) AS total_serpentes
 FROM
 	serpentes
 GROUP BY
 	continent
 ORDER BY
 	total_serpentes DESC
LIMIT 3
```
Resultado
``` markdown
|continent      |total_serpentes |
|-------------  |----------------|
|North America  |249             |
|Europe         |234             |
|Asia           |201             |
```

### 3 - Distribuição de Serpentes Peçonhentas por Continente 

```sql
SELECT
	continent,
    poisonous,
    COUNT(*) AS total_serpentes
FROM
	serpentes
WHERE
	poisonous = 'peconhento'
GROUP BY
	continent
ORDER BY
  total_serpentes DESC
```
Resultado
```markdown
|continent        |poisonous       |total_serpentes |
|-----------------|----------------|----------------|
|Asia             |peconhento      |90              |
|Africa           |peconhento      |87              |
|Europe           |peconhento      |82              |
|unknown          |peconhento      |59              |
|North America    |peconhento      |52              |
|South America    |peconhento      |29              |
|Oceania          |peconhento      |17              |
```

### 4 - Qual é o gênero de serpente mais presente em cada continente?
Nessa questão precisamos criar a CTE (Common Table Expression) para calcular o gênero mais frequente, antes de filtrar por cada continente.

```sql
WITH GeneroSerpentes AS (
  SELECT
      continent,
      genus,
      COUNT(*) AS total_serpentes
  FROM
      serpentes
  GROUP BY
      continent, genus
)
SELECT
  continent,
  genus,
  total_serpentes
FROM
  GeneroSerpentes
WHERE
  total_serpentes = (
      SELECT MAX(total_serpentes)
      FROM GeneroSerpentes AS gen
      WHERE gen.continent = GeneroSerpentes.continent
);
```
Resultado
```markdown
|continent           |genus            |total_serpentes |
|--------------------|-----------------|----------------|
|Africa              |Bitis            |32              |
|Asia                |Naja             |20              |
|Europe              |Natrix           |54              |
|North America       |Crotalus         |27              |
|Oceania             |Laticauda        |5               |
|South America       |Leptodeira       |19              |
|South America       |Leptophis        |19              |
|unknown             |Crotalus         |15              |
```

### 5 - TOP 5 Serpentes Peçonhentas com o Maior Número de Espécies
```sql
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
```
Resultado: Ele me deu o número de espécies distintas quanto o total absoluto de serpentes registradas
```markdown
|genus          |total_especies  |
|---------------|----------------|
|Crotalus       |15              |
|Naja           |5               |
|Vipera         |4               |
|Tropidolaemus  |2               |
|Trimeresurus   |2               |

