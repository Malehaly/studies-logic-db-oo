Algoritmo "quartaAula6"

Var
   fatMensal : vetor[1..12] de real
   somaFat : real
   i : inteiro

Inicio
   somaFat <- 0
   para i de 1 ate 12 faca
      escreval("Informe o faturamento mensal do m�s", i)
      leia(fatMensal[i])
      somaFat <- somaFat + fatMensal[i]
   fimpara

   escreval("A m�dia do faturamento anual � de R$ ", (somaFat / 12):4:2)

Fimalgoritmo