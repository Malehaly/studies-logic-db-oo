Algoritmo "primeiraAula8"
//programa DIA - ajuda em fluxogramas para if

Var
   escolhaMenu : caractere

Inicio
   escreval ("Menu - Escolha o servi�o pelo c�digo:")
   escreval ("1 - Cadastro aluno")
   escreval ("2 - Cadastro professor")
   escreval ("3 - Cadastro diretor")
   leia (escolhaMenu)

   se(escolhaMenu = "1") entao
      escreval ("Bem vindo, aluno.")
   senao
      se(escolhaMenu = "2") entao
         escreval ("Bem vindo, professor.")
      senao
         se(escolhaMenu = "3") entao
            escreval ("Bem vindo, diretor.")
         senao
            escreval ("C�digo inv�lido.")
         fimse
      fimse
   fimse


Fimalgoritmo