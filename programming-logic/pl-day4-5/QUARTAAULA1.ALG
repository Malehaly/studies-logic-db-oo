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
      escreval("Digite a opera��o desejada:")
      escreval("1 - Soma")
      escreval("2 - Subtra��o")
      escreval("3 - Multiplica��o")
      escreval("4 - Divis�o")
      leia(operacao)

      escolha operacao
      caso "1"
         resultado <- valor1 + valor2
         escreval("O resultado � ", resultado)
      caso "2"
         resultado <- valor1 - valor2
         escreval("O resultado � ", resultado)
      caso "3"
         resultado <- valor1 * valor2
         escreval("O resultado � ", resultado)
      caso "4"
         se (valor2 = 0) entao
            escreval("N�o � poss�vel realizar uma divis�o por 0.")
         senao
            resultado <- valor1 / valor2
            escreval("O resultado � ", resultado)
         fimse
      fimescolha

      escreval("Deseja continuar? [s/n]")
      leia(i)
   fimenquanto

Fimalgoritmo