# language: pt

Funcionalidade: CompraDeReserva
    Para que eu possa realizar a compra de passagens aéreas e validar o processamento
    Sendo um usuário 
    Posso acessar o sistema sem estar logado e realizar a compra da passagem apenas com o e-mail

    Contexto: Página principal
        Dado que eu acesso a página principal

    @temp
    Cenario: Compra da passagem com dados obrigatórios e permitidos 

        Quando eu digito as informações Origem "São Paulo, Guarulhos Internacional, Brasil (GRU)"
        e Destino "Natal, Sao Gonçalo do Amarante, Brasil (NAT)"
        e clico nas informações Data de ida
        e dia ida "day-19122019" 
        e dia volta "day-112020" 
        e no botão Pesquisar
        Então devo validar a mensagem de compra "Passagens Aéreas"
        Quando realizar a pesquisar clicar no botão Comprar
        Então devo validar a mensagem "Informações da compra"
        Quando eu digitar o email "teste@teste.com.br" 
        e passageiros "victor"
        e sobrenome "Valente"
        e Data de nascimento "13/06/1992" 
        e selecionar sexo "Masculino" 
        e forma de pagamento com cartão de crédito "Visa" 
        e válido até "01" 
        e "2036" 
        e digitar número do cartão "123456"
        e nome do titular "Victor V"
        e cpf "1111111" 
        e cód de segurança "123" 
        e CEP "01214000"
        e endereço "alameda" 
        e Número "14" 
        e Complemento "apro 55"
        e Bairo "campos" 
        e cidade "São Paulo" 
        e selecionar estado "SAO PAULO" 
        e digitar contato email "teste@teste.com.br"
        e confirme email "teste@teste.com.br"
        e selecionar telefone "Celular" 
        e digitar número "11995653233"
        e clicar em Li e aceito as condições de compra
        e no botão Finalizar compra
        Então devo validar a mensagem "Reserva em processamento"
