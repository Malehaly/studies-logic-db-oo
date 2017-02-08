Algoritmo "terceiraAula2"
//fazer um loop para dar nota de 6 alunos

Var
   i : inteiro
   notaAluno : real

Inicio
   // POR DEFAULT, i = 0, porém é bom por pois diferentes linguagens podem nao
   // ler. ainda há o bug de pegar um número random (bug do lixo de memória)
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