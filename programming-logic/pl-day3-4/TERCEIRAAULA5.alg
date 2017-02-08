Algoritmo "TERCEIRAAULA5"


Var
cont, ac, valor : inteiro

Inicio
cont <- 0
ac <- 0

enquanto (cont < 3) faca
escreval("Informe um valor inteiro:")
leia (valor)
ac <- ac + valor
cont <- cont + 1

se (ac >= 100) entao
interrompa
fimse
fimenquanto

escreva ("Total ",ac)

Fimalgoritmo