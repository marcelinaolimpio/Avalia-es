#language: pt

Funcionalidade: Fórmula

Cenário: Fórmula 
      Dado o usuário estar navegando no "painel de controle" na tela "visão de escritório"
      E selecionou a opção "nutrição"
      Quando ele aciona o botão "fórmula"
      Então é exibida a tela "fórmula"

Cenário: Cadastro Válido 
      Dado o usuário está na tela de "fórmula"
      Quando preenche os seguintes campos
        |nome da fórmula |identificação do produto|unidade base|peso vivo|ganho de peso diário|adicionar insumo|
        |crescimento|milho silagem|Quilograma|320|1,20|Garaná 100%|
      E acessa o botão "salvar novo"
      Então o Cadastro da Fórmula é salvo

Cenário: Cadastro Inválido 
      Dado o usuário está na tela de "fórmula"
      E preenche os seguintes campos com valores inválido 
          |<nome do fórmula>|<identificação do produto>|<unidade base>|<peso vivo>|<ganho de peso diário>|<adicionar insumo>|
      Quando ele acessa o botão "salvar novo"
      Então o sistema retorna á "<mensagem>"
Exemplos:
          |exemplo|nome da fórmula |identificação do produto|unidade base|peso vivo|ganho de peso diário|adicionar insumo|Mensagem|
          |exemplo|crescimento|milho silagem|quilograma|320|1,20|Guaraná 50%|o somatório do percentual da fórmula precisa ser 100%|
 CEsquema de cenário:cadastrar com campos não preenchidos
        Dado o usuário estar na tela "fórmula"  
        E tenha adicionado um "insumo"
        Quando o usuário não preenche o "<campo>" com "<valor>" 
        E não selecionar um valor na "opção"
        Então o usuário aciona "salvar novo"
        Então o sistema sinaliza os campos deixando-os em vermelho
 Exemplos:
        | campo                    |valor|
        | nome da fórmula          |     |
        | identificação do produto |     |
        | unidade base             |     |
        | peso vivo                |     |
        | ganho de peso diário     |     |
        | adicionar insumo         |  X  |

Canário: Cancelar Fórmula 
     Dado o usuário está na tela "fórmula"
     Quando preencheu os campos da "fórmula"
     E selecionou o botão "cancelar"
     Então é cancelado o cadastro da fórmula.

Cenário:Cadastro de embalagem
     Dado o usuário está na tela de "fórmula"
     E acessa o botão nova embalagem 
     Quando preenche os seguintes campos
             |nome embalagem|unidade de medida|Quantidade|
     Então o cadastro da embalagem é efetuada.
