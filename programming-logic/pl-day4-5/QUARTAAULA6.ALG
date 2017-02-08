Algoritmo "quartaAula6"

Var
   fatMensal : vetor[1..12] de real
   somaFat : real
   i : inteiro

Inicio
   somaFat <- 0
   para i de 1 ate 12 faca
      escreval("Informe o faturamento mensal do mês", i)
      leia(fatMensal[i])
      somaFat <- somaFat + fatMensal[i]
   fimpara

   escreval("A média do faturamento anual é de R$ ", (somaFat / 12):4:2)

Fimalgoritmo