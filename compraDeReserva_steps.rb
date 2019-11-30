Dado('que eu acesso a página principal') do
visit https://www.viajanet.com.br/
end

Quando('Quando eu digito as informações Origem {string} e Destino {string} e clico nas informações Data de ida
e dia ida {string} e dia volta {string} e no botão Pesquisar') do |origem, destino, ida, volta|
    CompraDeReserva.new.informacoesObrigatorias(origem, destino, ida, volta)
end

Então('devo validar a mensagem de compra {string}') do |mensagemCompra|
    expect(page).to have_content mensagemCompra
end

Quando('realizar a pesquisar clicar no botão Comprar') 
    click_link 'content-price-recommendation__btn-buy'
end

Então('Então devo validar a mensagem {string}') do |mesagemInformacoesDaCompra|
    expect(page).to have_content mesagemInformacoesDaCompra
end

Quando('Quando eu digitar o email {string} e passageiros {string} e sobrenome {string} e Data de nascimento {string} e selecionar sexo {string}
e forma de pagamento com cartão de crédito {string} e válido até {string} e {string} e digitar número do cartão {string} e nome do titular {string}
e cpf {string} e cód de segurança {string} e CEP {string} e endereço {string} e Número {string} e Complemento {string} e Bairo {string} e cidade {string} 
e selecionar estado {string} e digitar contato email {string} e confirme email {string} e selecionar telefone {string}, e digitar número {string}
e clicar em Li e aceito as condições de compra e no botão Finalizar compra') do |email,passageiro,sobrenome,dataNascimento,sexo,cartaoCredito,validoAteMes,validoAteAno,
numeroCartao,nomeTitular,cpf,codSeguranca,cep, endereco,numero, complemento,bairro,cidade,estado,contatoEmail,contatoEmailConfirma,telefoneOperadora,telefoneNumero|
CompraDeReserva.new.informacoesDaCompra(email,passageiro,sobrenome,dataNascimento,sexo,cartaoCredito,validoAteMes,validoAteAno,
numeroCartao,nomeTitular,cpf,codSeguranca,cep, endereco,numero, complemento,bairro,cidade,estado,contatoEmail,contatoEmailConfirma,telefoneOperadora,telefoneNumero)
end

Então('Então devo validar a mensagem {string}') do |mesagemReservaProcessamento|
    expect(page).to have_content mesagemReservaProcessamento
end

