# 1. Introdução
A globalização associada com o surgimento da internet, foi responsável por mudanças sociais e comportamentais que afetam as organizações, os usuários passaram a ser mais sexigentes com relação à publicidade que desejam encontrar, buscando sempre pelo mais relevante  e vantajoso, fazendo com que as empresas fossem obrigadas a realizarem negócios por modelos virtuais, que são vistos como ferramentas que facilitam a vida do consumidor, na questão de tomada de decisões.

A internet possibilitou um maior desenvolvimento em relação á velocidade das transações, diminuiu distâncias físicas, o tempo e ampliou a opção de novos canais para a realização de compras. Os usuários passaram a ser influenciados tanto por questões sociais, culturais  e psicológicos que são ligados às redes sociais, formas de representação dos relacionamentos afetivos ou profissionais dos seres entre si, que determinam suas escolhas e desejos.

# 2. Coleta e Tratamento de Dados
A base de dados para realizar esse projeto, foi adquirida através do curso "Microsoft Power BI Para Business Intelligence e Data Science" da Data Science Academy.

Para não precisar criar muitos gráficos sobre gastos, pois no banco de dados há informações sobre gastos com alimentos, brinquedos, eletrônicos, móveis, utilidades e vestuários, eu cruzei as seis informações para criar uma nova medida com o Total Gasto, para resumir os dados e então cruzar esses dados com outras variáveis:

TotalGasto = SUMX(DadosMarketing, DadosMarketing[Gasto com Alimentos] + DadosMarketing[Gasto com Brinquedos] + DadosMarketing[Gasto com Eletronicos] + DadosMarketing[Gasto com Moveis] + DadosMarketing[Gasto com Utilidades] + DadosMarketing[Gasto com Vestuario])

sumx = agrupamento por linha

# 3. Objetivos
- Compreender o perfil dos clientes
- O comportamento de gastos
- Padrões de compra

# 4. Resultados
A análise foi dividida em quatro abas:

1 - Perfil do Cliente: Como estão divididos em nível de escolaridade? São casados?

A análise de Perfil do Cliente é fundamental para entender as características e o comportamento de consumo da nossa base de clientes. A partir de KPIs como Total de Clientes e o Salário Anual Médio, temos uma visão aprofundada e estratégica do comportamento de consumo e das características do público-alvo.

O Total de Clientes nos permite dimensionar o tamanho do mercado, enquanto que ter a informação do Salário Médio Anual nos oferece uma visão crítica sobre o poder de compra do público, possibilitando a criação de estratégias de marketing mais direcionadas, e consequentemente maior faturamento, satisfação do cliente, fidelização, maior oportunidade de diferenciação, menos desperdício nas abordagens, autoridade, comunicação otimizada, melhoria contínua e ocupação dos lugares certos.

2 - Comportamento de Gasto: O poder de compra do cliente é influenciado por ser solteiro ou casado? E se ele tem filhos?

3 - Performance das Campanhas: Qual campanha obteve o maior retorno? Teve diferença no estado civil do cliente? Quanto tempo foi necessário para o cliente realizar a compra?

4 - Padrões de Compra por Ponto de Venda: Onde o produto foi mais vendido? Qual foi a performance?

A principal vantagem de encontrar o cliente ideal (ICP) e bem definido é a fidelização dos clientes, que consequentemente significa maior conversão e frequência de vendas, todos os detalhes precisam ser observados para que a empresa tenha a cara do cliente e isso determinará a forma de se relacionar com o público, o design, o conteúdo, entre outros.

## [Visualize o Relatório no Power BI](https://app.powerbi.com/view?r=eyJrIjoiZGQzZjlmZDctOTY1My00MDI4LWFkOWQtNzFiMDg2OTEzZTAxIiwidCI6IjZjYmI5Y2Y3LWI0YzQtNGVmZC04NjVlLWFmYzRhYWM1ZmIxYSJ9)

# Referências Bibliográficas
Por que entender o perfil de cliente pode transformar o seu negócio?. Serasa Experian, 2019. Disponível em: https://www.serasaexperian.com.br/blog-pme/perfil-de-cliente/. Acesso em: 21 jan. 2025.
