# language: pt
@sanity @cadastro
Funcionalidade: Do Sowe

Cenário: : Cadastrar usuario com sucesso
  Dado que carrego a home do sowe
  E Clico em cadastrar
  Quando Preencho os dados necessarios para cadastrar
    | telefone    | nome                   |
    | 81988117158 | Roberto QA me contrata |
  E ativo minha localizacao automatica
  Entao valido que fui direcionado para tela de sowe com a temperatura atual