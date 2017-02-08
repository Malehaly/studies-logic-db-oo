Algoritmo "quartaAula2"
// enquanto = while do
// escolha = switch
// repita = do while
// se = if

Var
   operacao, i : caractere
   valor1, valor2, resultado : real


Inicio

   i <- "s"
   repita
      escreval("Informe dois valores inteiros:")
      leia (valor1, valor2)
      escreval("Digite a operação desejada:")
      escreval("1 - Soma")
      escreval("2 - Subtração")
      escreval("3 - Multiplicação")
      escreval("4 - Divisão")
      leia(operacao)

      se (operacao = "1") entao
         resultado <- valor1 + valor2
         escreval("O resultado é ", resultado)
      senao
         se( operacao = "2") entao
            resultado <- valor1 - valor2
            escreval("O resultado é ", resultado)
         senao
            se (operacao = "3") entao
               resultado <- valor1 * valor2
               escreval("O resultado é ", resultado)
            senao
               se ((operacao = "4") e (valor2 <> 0)) entao
                  resultado <- valor1 / valor2
                  escreval("O resultado é ", resultado)
               senao
                  escreval("Não é possível dividir por 0.")
               fimse
            fimse
         fimse
      fimse

      escreval("Deseja continuar? [s/n]")
      leia(i)
   ate i = "n"

Fimalgoritmo