Algoritmo "segundaAula1"


Var
   valor1, valorMod : inteiro

Inicio
   escreval("Informe um valor para mod:")
   leia(valor1)

   //alem do <- também funfa o :=
   valorMod <- valor1 mod 2

   se(valorMod = 0) entao
      escreval("Par")
   senao
      escreval("Ímpar")
   fimse

Fimalgoritmo