# 1. Introdução
A globalização associada com o surgimento da internet, foi responsável por mudanças sociais e comportamentais que afetam as organizações, os usuários passaram a ser mais sexigentes com relação à publicidade que desejam encontrar, buscando sempre pelo mais relevante  e vantajoso, fazendo com que as empresas fossem obrigadas a realizarem negócios por modelos virtuais, que são vistos como ferramentas que facilitam a vida do consumidor, na questão de tomada de decisões.

A internet possibilitou um maior desenvolvimento em relação á velocidade das transações, diminuiu distâncias físicas, o tempo e ampliou a opção de novos canais para a realização de compras. Os usuários passaram a ser influenciados tanto por questões sociais, culturais  e psicológicos que são ligados às redes sociais, formas de representação dos relacionamentos afetivos ou profissionais dos seres entre si, que determinam suas escolhas e desejos.

# 2. Coleta e Tratamento de Dados
A base de dados para realizar esse projeto, foi desenvolvida pelo ChatGPT, seguindo o seguinte comando:

"Olá chat, por favor me gere algumas bases de dados completas e fictícias, de uma empresa de cosméticos, com 200 linhas, para que eu possa acrescenta-los no meu portfólio de análise de dados. 
- Base de Vendas: Sale_ID	Product_ID	Customer_ID	Sale_Date	Region	Quantity	Unit_Price	Total_Price	Payment_Type	Delivery_Status	Delivery_Date.
- Base de Clientes: Customer_ID	Name	Age	Gender	City	Satisfaction_Score
- Base de Produtos: ID_Produto	Nome_Produto	Categoria	Preco_Unitario
Faça a base com erros, como dados duplicados, valores nulos, etc...
Me gere também alguns problemas para resolver, para treinar minhas competências: sou iniciante no Power BI, SQL e Python"

Os dados foram tratados diretamente no Power Query, configurando as primeiras linhas de cada base como Cabeçalho.
As bases de Clientes e Produtos não foram transformadas, pois não apresentaram erros.

Para a base de Vendas:
- As linhas vazias presentes nas colunas Payment Type e Delivery_Status foram removidas
- Os números estavam classificados como texto, passaram a ser classificados como Número Inteiro e Número Decimal, substituindo-se os "." por ","
- A coluna de Total Price estava com dados errados devido a erro de cálculo, então foi criada uma Coluna Personalizada, utlizando a fórmula [Quantity] * [Unit_Price]
- A coluna de Total Price antiga foi removida
- Os números negativos foram substituídos por zero.

Eu poderia ter mantido os números negativos?

Sim, principalmente se pensar num significado específico para os números negativos, comoo devoluções de produtos ou reembolsos, por exemplo. Mas os valores negativos presentes na coluna "Quantity" podem ser incoerentes, quando se pensa que a quantidade de produtos vendidos que deve ser sempre positivo ou zero, o valor negativo pode indicar um erro de entrada de dados ou falha no registro. Quando negativo, esses números podem distorcer cálculos como total de vendas e estoque disponível, e substituindo por zero, eu evitaria esse impacto e mantenho a integridade dos cálculos.

Nesse caso, o ideal seria estruturar um banco de dados específico para devoluções e reembolsos, assim não afetará os relatórios de vendas. Permitindo uma visão clara de como as devoluções impactam o negócio, fazendo a comparação entre vendas x devoluções.,

- Foi realizado a filtragegm dos dados da coluna TotalPrice_verif, afim de que permaneçam apenas valores maiores do que zero na tabela, trabalhando apenas com vendas válidas.
