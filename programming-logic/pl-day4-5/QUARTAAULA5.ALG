Algoritmo "quartaAula5"
//array - do tipo vetor - unidimensional
// serve para guardar mais informações numa variável

Var
   notaAluno : vetor[1..5] de real
   nomes : vetor[1..5] de caractere
   i,o,x : inteiro

Inicio

   para i de 1 ate 5 faca
      escreval("Digite o nome do aluno(a) de número", i, " de 5:")
      Leia( nomes[i] )
      //escreval("Informe a nota:")
      //leia(notaAluno[i])
   fimpara

   para o de 1 ate 5 faca
      escreval("Informe a nota do aluno(a): ", nomes[o] )
      leia( notaAluno[o] )
   fimpara

   para x de 1 ate 5 faca
      escreval( nomes[x], ", nota ", notaAluno[x] )
   fimpara

Fimalgoritmo