# QA-Automacao
Testes_QA_Automação_Victor_V

Considerações finais:

    1- A funcionalidade em questão seria apenas a compra, por esse motivo o teste é realizado após "logado"(já testado no caso).
    2- Utilizado Cucumber para técnica de BDD e Linguagem Ruby, sendo assim, utilizo dados fictícios que poderão ser usados como massa depois do código desenvolvido. (Isso, se utilizar escopo e informações já definidos e técnica BDD) (O teste realizado no caso, foi realizado com full BDD, ou seja, como se todas as informações/escopo já estivessem 100% definidas pelo time e usuários, como os campos, tipos, atributos e valores também)
    3- Automatizado apenas o fluxo fluxo simples com teste positivo dos campos.
    4- Não foi realizado os testes negativos da tela e campos, pois não possuo o escopo dos campos (Do que aceita e não aceita).
    5- Não foi realizado outros tipos de testes não funcionais.
    6- Também é possível automatizar os testes depois do desenvolvimento(Caso não use a técnica BDD ou TDD).
    7- Utilizei o mapeamento dos campos do link de produção viajanet, pois, não possuo o 'Link' de homologação ou desenvolvimento para os testes.
    8- Page Objects realizado com sucesso. (Refatoração de código, organização e de fácil entendimento, tanto para o código Ruby como para o código gherkin) (No caso do Ruby foi criado uma classe separada apenas para mapear a página e instanciando em outra) (No caso do código em gherkin pode-se utilizar alguns conceitos como "contexto" para dado e testes negativos com "esquemas do cenario") 
    9- Entre as telas, pode-se usar algum conceito com IF/ELSE no código Ruby, pois dependendo da informação imputada, aparece diferentes mensagens.
    10- Para testes foi usado o CMDER e VISUAL CODE
