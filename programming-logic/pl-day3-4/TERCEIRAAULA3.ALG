Algoritmo "terceiraAula3"


Var
   contadora, acumuladora, valor : inteiro

Inicio

   contadora <- 0

   acumuladora <- 0

   enquanto (contadora < 3) faca
      escreval("Digite um valor inteiro:")
      leia (valor)
      acumuladora <- acumuladora + valor
      contadora <- contadora + 1
   fimenquanto

   escreval("O valor total deu ", acumuladora)
   escreval("A minha vari�vel contadora foi at� ",contadora)
   escreval("A m�dia � de ",acumuladora / contadora )
Fimalgoritmo
