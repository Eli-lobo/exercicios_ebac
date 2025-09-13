            #language:pt
            História do usuário
            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que o usuário está na página de login

            Cenário: Autenticação vélida
            Quando o usuário insere "usuario_valido" no campo de nome de usuário
            E o usuário insere "senha_valida" no campo de senha
            E o usuário clica no botão de login
            Então o usuário deve ser redirecionado para a página checkout

            Cenário: Falha no login com usuário inválido
            Quando o usuário insere "usuario_invalido" no campo de nome de usuário
            E o usuário insere "senha_valida" no campo de senha
            E o usuário clica no botão de login
            Então uma mensagem de alerta deve ser exibida informando que “Usuário ou senha inválidos”

            Cenário: Falha no login com senha inválida
            Quando o usuário insere "usuario_valido" no campo de nome de usuário
            E o usuário insere "senha_invalida" no campo de senha
            E o usuário clica no botão de login
            Então uma mensagem de alerta deve ser exibida informando que “Usuário ou senha inválidos”

            Esquema do Cenário: Autenticar multiplo usuários
            Quando eu digitar o <usuario> no campo de nome de usuário
            E a <senha> no campo de senha
            E o usuário clica no botão de login
            Então deve exibir a mensagem <mensagem> de falha, caso as credenciais estejam erradas
            E deve redirecionar para a página checkout, caso as credenciais estejam corretas


            Exemplo:
            | usuario            | senha       | mensagem                     |
            | "Elil@ebac.com.br" | "teste@123" | (nenhuma mensagem de falha)  |
            | "xxxx@ebac.com.br" | "teste@123" | “Usuário ou senha inválidos” |
            | "Elil@ebac.com.br" | "teste@xxx" | “Usuário ou senha inválidos” |
            |                    | "teste@123" | “Usuário ou senha inválidos” |
            | "Elil@ebac.com.br" |             | “Usuário ou senha inválidos” |

