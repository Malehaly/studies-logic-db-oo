Algoritmo "primeiraAula6"
// capitulo 7

Var
numero1, numero2, numero3, media : real

Inicio
escreval ("Informe 3 valores para a m�dia:")
leia (numero1,numero2,numero3)
media <- (numero1 + numero2 + numero3)/3
escreval ("A m�dia �", media:10:2)

se (media >= 6) entao
   escreval ("Est� aprovado.")
senao
     escreval ("N�o est� aprovado.")
fimse

Fimalgoritmo