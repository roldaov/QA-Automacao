class CompraDeReserva
    include capybara: :DSL

    def informacoesObrigatorias (origem, destino, ida, volta)
        @ida = ida
        @volta = volta
        Find('input[id=inptorigin]').set origem 
        Find('input[id=inptdestination]').set destino 
        Click_input 'lblDepartureDate'
        Click_div @ida
        Click_div @volta
        Click_button 'submit'
    end

    def informacoesDaCompra (email,passageiro,sobrenome,dataNascimento,sexo,cartaoCredito,validoAteMes,validoAteAno,
        numeroCartao,nomeTitular,cpf,codSeguranca,cep, endereco,numero, complemento,bairro,cidade,estado,contatoEmail,contatoEmailConfirma,telefoneOperadora,telefoneNumero)
        Find('input[id=my-account_email]').set email 
        Find('input[id=nome_0]').set passageiro 
        Find('input[id=lastName_0]').set sobrenome 
        Find('input[id=birth_0]').set dataNascimento 
        Find('select[name=gender_0]').set sexo 
        Find('select[name=flag_card]').set cartaoCredito 
        Find('select[id=month-0]').set validoAteMes 
        Find('select[id=year-0]').set validoAteAno 
        Find('input[id=number_card-0]').set numeroCartao 
        Find('input[id=name_card-0]').set nomeTitular 
        Find('input[id=cpf_card-0]').set cpf 
        Find('input[id=codesecure_card-0]').set codSeguranca 
        Find('input[id=zipcode-0]').set cep 
        Find('input[id=address-0]').set endereco 
        Find('input[id=number_address-0]').set numero 
        Find('input[id=complement-0]').set complemento 
        Find('input[id=neighborhood-0]').set bairro 
        Find('input[id=city-0]').set cidade
        Find('select[id=state-0]').set estado
        Find('input[id=contact_email]').set contatoEmail
        Find('input[id=contact_email_confirm]').set contatoEmailConfirma
        Find('select[id=contact_phone_0]').set telefoneOperadora
        Find('input[id=contact_phonenumber_0]').set telefoneNumero
        Click_input 'accept-checkout'
        Click_button 'submit'
    end

end
