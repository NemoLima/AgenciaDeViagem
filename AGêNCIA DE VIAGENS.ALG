Algoritmo "Agência de Viagens"


Var

   clientes: vetor [0..2, 0..4] de caracter
   x, y:   inteiro
   cadastro: vetor [0..4] de caracter
   nome: caracter
   
procedimento PesquisarCliente(consultar: caracter)
inicio
   para x de 0 ate 2 passo 1 faca
     se(consultar = clientes[x, 0]) entao
       para y de 0 ate 4 passo 1 faca
         escreval(cadastro[y], clientes[x, y])
       fimpara
     fimse
   fimpara
fimprocedimento

Inicio

      cadastro[0] <- "NOME: "
      cadastro[1] <- "SOBRENOME: "
      cadastro[2] <- "CPF (apenas números): "
      cadastro[3] <- "CIDADE DE ORIGEM: "
      cadastro[4] <- "CIDADE DE DESTINO: "

      escreval ("*******NOVOS ARES TURISMO*******")
      escreval ("")
      escreval ("Digite os dados do cliente: ")
      
      para x de 0 ate 2 faca
           escreval ("Cliente ",  x+1)
               
           para y de 0 ate 4 faca
               escreva(cadastro[y])
               leia(clientes[x,y])
           fimpara
           
               escreval("")
      fimpara

      limpatela
      escreval("Clientes cadastrados com sucesso!")
      escreval("")
      escreval("****** DADOS DOS CLIENTES ******")
      escreval("")
      para x de 0 ate 2 faca
           para y de 0 ate 4 faca
                escreva(cadastro[y])
                escreval(clientes[x,y])
           fimpara
           escreval("")
      fimpara
      escreval("****** PESQUISAR CLIENTE ******")
      escreval("")
      escreva("Digite o nome do cliente: ")
      escreval("")
      leia(nome)
      PesquisarCliente(nome)
Fimalgoritmo