Algoritmo "primeiraAula4"


Var
numero1, numero2, numero3, media : real
nome, sobrenome, nomecompleto : caractere

Inicio
escreval ("Informe 3 valores para a média:")
leia (numero1,numero2,numero3)
media <- (numero1 + numero2 + numero3)/3
escreval ("A média é", media:10:2)

//ou pode ser: escreval ((numero1 + numero2 + numero3)/3)

nome <- "Thiago"
sobrenome <- "Schoenfeld"
nomecompleto <- nome + " " + sobrenome
escreval ("Nome completo é ", nomecompleto)

Fimalgoritmo