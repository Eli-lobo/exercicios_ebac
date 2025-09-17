            #language:pt
            Funcionalidade: Configuração do Produto na EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois adicionar ao carrinho


            Contexto:
            Dado que estou na página de configuração de produto da EBAC-SHOP

            Cenário: Seleções obrigatórias para adicionar produto ao carrinho
            Dado que estou na página de configuração de produto da EBAC-SHOP
            Quando eu não selecionar cor, tamanho ou quantidade
            E clicar no botão "Adicionar ao carrinho"
            Então deve exibir uma mensagem de alerta informando que todos os campos são obrigatórios

            Esquema do Cenário: Verificar limite de quantidade por venda

            Quando eu selecionar a cor <cor>, o tamanho <tamanho> e a quantidade <quantidade>
            E clicar no botão "Adicionar ao carrinho"
            Então o sistema deve <resultado>

            Exemplos:
            | cor      | tamanho | quantidade | resultado                              |
            | azul     | M       | 1          | adicionar o produto ao carrinho        |
            | vermelho | G       | 10         | adicionar o produto ao carrinho        |
            | preto    | P       | 11         | exibir mensagem de limite excedido     |
            | verde    | GG      | 0          | exibir mensagem de quantidade inválida |

            
            Cenário: Limpar configurações do produto
            Dado que estou na página de configuração de produto da EBAC-SHOP
            E selecionei cor, tamanho e quantidade
            Quando eu clicar no botão "Limpar"
            Então os campos de cor, tamanho e quantidade devem voltar ao estado original

