Algoritmo "terceiraAula4"
// loop

Var

   opcao, nome : caractere
   numeroNomes : inteiro

Inicio

   opcao <- "s"
   numeroNomes <- 0
   
   enquanto (opcao = "s") faca
      escreval("Digite o nome:")
      leia(nome)
      numeroNomes <- numeroNomes + 1

      escreval("Deseja continuar? [s/n]")
      leia(opcao)
   fimenquanto

   escreval("Total de alunos: ",numeroNomes)


Fimalgoritmo