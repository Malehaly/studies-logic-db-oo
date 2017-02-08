Algoritmo "quartaAula4"


Var
   i, o : inteiro
   nome : caractere
   salarioAnterior, salariodesejado : real

Inicio

   para i de 1 ate 3 faca
      escreval("Digite seu nome para cadastro:")
      leia(nome)
      escreval("Informe seu salário desejado:")
      leia(salariodesejado)

      para o de 1 ate 2 faca
         se (o = 1) entao
            escreval("Qual seu ultimo salario?")
         senao
            escreval("Qual seu penúltimo salario?")
         fimse
         leia(salarioAnterior)
      fimpara
   fimpara

Fimalgoritmo