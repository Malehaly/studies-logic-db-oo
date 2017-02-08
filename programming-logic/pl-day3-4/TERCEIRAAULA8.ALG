Algoritmo "terceiraaula8"


Var
   i, escolhaNumero, somaNumero : inteiro


Inicio
   i <- 0
   escolhaNumero <- 0
   somaNumero <- 0

   repita
      escreval("Insira um número inteiro:")
      leia (escolhaNumero)

      se ((escolhaNumero mod 2) = 0) entao
         somaNumero <- somaNumero + escolhaNumero
      senao
         enquanto (escolhaNumero > 0) faca
            escreval(escolhaNumero)
            escolhaNumero <- escolhaNumero - 1
         fimenquanto
      fimse

      i <- i + 1
   ate i >= 10
   escreval(somaNumero)

Fimalgoritmo