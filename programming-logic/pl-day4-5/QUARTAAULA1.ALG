Algoritmo "quartaAula1"
// enquanto = while do
// escolha = switch
// repita = do while
// se = if

Var
   operacao, i : caractere
   valor1, valor2, resultado : real


Inicio

   i <- "s"
   enquanto (i = "s") faca
      escreval("Informe dois valores inteiros:")
      leia (valor1, valor2)
      escreval("Digite a operação desejada:")
      escreval("1 - Soma")
      escreval("2 - Subtração")
      escreval("3 - Multiplicação")
      escreval("4 - Divisão")
      leia(operacao)

      escolha operacao
      caso "1"
         resultado <- valor1 + valor2
         escreval("O resultado é ", resultado)
      caso "2"
         resultado <- valor1 - valor2
         escreval("O resultado é ", resultado)
      caso "3"
         resultado <- valor1 * valor2
         escreval("O resultado é ", resultado)
      caso "4"
         se (valor2 = 0) entao
            escreval("Não é possível realizar uma divisão por 0.")
         senao
            resultado <- valor1 / valor2
            escreval("O resultado é ", resultado)
         fimse
      fimescolha

      escreval("Deseja continuar? [s/n]")
      leia(i)
   fimenquanto

Fimalgoritmo