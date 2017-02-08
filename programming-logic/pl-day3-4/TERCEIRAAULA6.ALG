Algoritmo "TERCEIRAAULA6"


Var
   codigoProduto, cont : inteiro
   saldo : real


Inicio

   cont <- 0
   saldo <- 0

   enquanto (cont < 6) faca
      escreval("Selecione seu produto pelo código:")
      escreval("1 - Coca-Cola - R$ 3,50")
      escreval("2 - Pepsi - R$ 2,50")
      escreval("3 - Café - R$ 1,00")
      leia(codigoProduto)

         escolha codigoProduto
         caso 1
            escreval("Coca-cola selecionada.")
            saldo <- saldo + 3.50
         caso 2
            escreval("Pepsi selecionada.")
            saldo <- saldo + 2.50
         caso 3
            escreval("Café selecionada.")
            saldo <- saldo + 1
         fimescolha
      
      cont <- cont + 1
      se (saldo >= 10) entao
         interrompa
      fimse
   fimenquanto
   escreval ("Total das compras: R$", saldo,". Passe no caixa.")

Fimalgoritmo