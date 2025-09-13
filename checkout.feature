#language:pt

Funcionalidade: Cadastro de cliente na EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na página de cadastro da EBAC-SHOP

  Cenário: Cadastro bem-sucedido com todos os dados obrigatórios
    Quando eu preencher todos os campos obrigatórios marcados com asterisco
    E clicar no botão "Finalizar compra"
    Então o sistema deve concluir o cadastro com sucesso

  Esquema do Cenário: Validação do campo de e-mail
    Quando eu preencher o campo de e-mail com <email>
    E preencher os demais campos obrigatórios
    E clicar no botão "Finalizar Compra"
    Então o sistema deve exibir a mensagem <mensagem>

    Exemplos:
      | email               | mensagem                          |
      | usuario@email.com   | cadastro concluído com sucesso    |
      | usuario@email       | e-mail com formato inválido       |
      | @email.com          | e-mail com formato inválido       |
      | usuario.com         | e-mail com formato inválido       |

  Cenário: Cadastro com campos obrigatórios vazios
    Quando eu deixar um ou mais campos obrigatórios vazios
    E clicar no botão "Finalizar Compra"
    Então o sistema deve exibir uma mensagem de alerta informando que os campos obrigatórios devem ser preenchidos

