@language: pt

Feature:Batida

Cenário:Batida 
     Dado o usuário está em "painel de controle" na tela de "visão de escritório"
     E selecionou a opção "Nutrição "
     Quando ele aciona o botão "batida"
     Então é exibida a tela "batida"
Cenário:cadastro válido 
      Dado o usuário está na tela de "Batida"
      Quando preenche os seguintes campos 
        |Nome da fórmula|Data da batida|Embalagem de saída|Estoque de origem|Estoque de destino|Quantidade|Responsável (planejamento)|Responsável (produção)|
      E acessa o botão "salvar novo"
      Então é salvo o cadastro da "Batida"
Cenário:Cadastro Recusado
      Dado o usuário está na tela de "Batida"
      E não tenha cadastrado na tela "Fórmula" e "Fazenda"
      Quando ele aciona o botão para selecionar os campos 
      Então o sistema sem o arquivo dos dados recusa o "cadastro"
Cenário:Esquema de cenário com valores não preenchido.
      Dado o usuário está na tela de "batida"
      Quando o usuário não preenche o "<campo>" com "<valor>"
      E não seleciona um valor na "opção"
      Então o usuário aciona "salvar novo"
      Então o sistema sinaliza os campos deixando-os em vermelho.
Exemplos:
       |campo                      | valor |
       |nome da fórmula            |       |
       |data da batida             |       |
       |embalagem de saída         |       |
       |estoque de origem          |       |
       |estoque de destino         |   X   |
       |quantidade                 |       |
       |responsável(planejamento)  |       |
       |responsável(produção)      |       |
Cenário:Cancelar Batida
      Dado o usuário está na tela de "batida"
      Quando preenchidos os campos em "batida"
      E aciona o botão "cancelar"
      Então é cancelado o cadastro da "batida".
