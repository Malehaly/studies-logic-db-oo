Algoritmo "terceiraAula2"
//fazer um loop para dar nota de 6 alunos

Var
   i : inteiro
   notaAluno : real

Inicio
   // POR DEFAULT, i = 0, por�m � bom por pois diferentes linguagens podem nao
   // ler. ainda h� o bug de pegar um n�mero random (bug do lixo de mem�ria)
   i <- 0
   enquanto (i <= 5) faca
      escreval ("Insira a nota do aluno:")
      leia(notaAluno)
      se (notaAluno >= 6) entao
         escreval("Aluno aprovado.")
      senao
         escreval("Aluno reprovado.")
      fimse
      i <- i + 1
   fimenquanto

Fimalgoritmo