# 1. Introdução
As serpentes são animais que despertam tanto medo quanto admiração. São animais que se adaptam a todos os ambientes que lhe possibilitem viver, seja em terra, no subsolo, sobre rochas, árvores, rios, lagos, estuários e até mesmo noa rios.

Divididas em duas categorias principais — peçonhentas e não peçonhentas — que desempenham papéis vitais em nossos ecossistemas. As serpentes peçonhentas possuem glândulas que produzem peçonha, uma poderosa ferramenta para imobilizar, matar e iniciar a digestão das presas (PÉTERFI, O. et al., 2019), enquanto as não peçonhentas dependem da força física ou da camuflagem para capturar suas presas.

Compreender a classificação e a distribuição dessas serpentes é crucial para promover a conservação, reconhecer padrões de distribuição, e a segurança em diversas regiões do mundo (MARQUES, O.,2019).

O objetivo deste projeto é realizar uma análise detalhada sobre a distribuição global das serpentes peçonhentas e não peçonhentas, com base em um dataset que inclui informações sobre espécies e localizações geográficas. A análise será feita utilizando SQL para consultas de dados, Python para análise exploratória e visualização, e Power BI para construir dashboards interativos.

# 2. Coleta e Tratamento de Dados
A base de dados para realizar essa análise global foi retirada diretamente do Kaggle, uma plataforma para aprendizado de Ciências de Dados e para a evolução na programação em Python

<a href="https://www.kaggle.com/datasets/nikhilshingadiya/sample-0" target="_blank">Tabela.csv</a>

Os dados foram tratados diretamente no Power Query, eliminando-se primeiro as duplicatas e as colunas de Identificador único universal (UUID), image_path e uuid_image. 

A coluna "poisonus" foi editada, pois o autor do banco de dados classificou as serpentes peçonhentas como número 1, e as não peçonhentas como número 2. 
Apenas alterei para melhor visualização na hora de criar os gráficos e legendas.

# 3. Resultados e Discussão

## 3.1. Diversidade e Distribuição Geográfica
O dashboard revela que as espécies de serpentes peçonhentas e não peçonhentas estão amplamente distribuídas por todos os continentes, com uma maior diversidade concentrada na África e Ásia. Esses continentes apresentam a maior quantidade de famílias de serpentes, com destaque para as famílias Colubridae e Viperidae, que são as mais presentes em diversas regiões. A presença massiva de serpentes na África e na Ásia pode estar associada à diversidade de habitats, que vão desde desertos até florestas tropicais, fornecendo uma ampla gama de nichos ecológicos.


## 3.2. Prevalência entre Serpentes Peçonhentas e Não peçonhentas
Globalmente, existe uma maior incidência de espécies não peçonhentas. No entanto, há variações significativas entre os continentes. Por exemplo, a África e a Ásia possuem um número elevado de espécies peçonhentas, o que pode ser correlacionado com a diversidade de habitats e as condições ecológicas desses continentes. A prevalência de espécies não peçonhentas sobre as peçonhentas é uma observação importante que desafia a percepção comum de que a maioria das serpentes são perigosas para os humanos. No entanto, a alta concentração de serpentes peçonhentas em certas regiões, como África e Ásia, é crucial para estudos epidemiológicos e para o desenvolvimento de políticas de saúde pública, especialmente em áreas rurais onde os encontros com essas espécies são mais prováveis.


## 3.3. Diversidades de Famílias por Continente
O gráfico que compara as famílias de serpentes por continente indica que: - Colubridae é a família mais diversa e amplamente distribuída, predominando em continentes como América do Norte, Ásia e Europa. - Viperidae tem uma presença notável na África e Ásia, sugerindo a adaptação dessas espécies a climas tropicais e subtropicais. - Famílias como Boidae e Pythonidae têm distribuição mais restrita, predominando em regiões específicas como a América do Sul e Oceania. A dominância da família Colubridae em vários continentes pode ser atribuída à sua capacidade de se adaptar a uma vasta gama de habitats. Em contrapartida, a especialização das famílias Viperidae e Pythonidae em climas específicos sugere uma evolução adaptativa significativa, permitindo que essas famílias prosperem em ambientes particulares. Essa diversidade também pode estar relacionada às estratégias de sobrevivência e reprodução dessas espécies.

# 4. Conclusão
Este dashboard fornece uma visão geral valiosa, mas há espaço para aprofundamentos. Estudos futuros poderiam focar na correlação entre a distribuição de serpentes peçonhentas e não peçonhentas com fatores climáticos, padrões de urbanização e mudanças ambientais globais. Além disso, investigações sobre as características genéticas que permitem a adaptação dessas espécies em diferentes continentes poderiam proporcionar insights mais detalhados sobre a evolução das serpentes.

## [Visualize o Dashboard](https://app.powerbi.com/viewr=eyJrIjoiMWIwMjU1OTktMzM0MC00NzFmLTkyNDUtNjExMjQ3YjAwMGY0IiwidCI6IjZjYmI5Y2Y3LWI0YzQtNGVmZC04NjVlLWFmYzRhYWM1ZmIxYSJ9)


