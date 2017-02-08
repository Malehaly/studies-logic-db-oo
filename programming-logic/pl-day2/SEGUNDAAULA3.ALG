Algoritmo "segundaAula3"
// quad = calcula quadrado do valor
// raizq = calcula a raiz quadrada
// nunca esquecer a ordem :
// se () entao
// senao
//      - se() entao
//      - fimse
// fimse

Var
   peso, altura, imc : real

Inicio
   escreval ("Informe seu peso seguido de sua altura:")
   leia(peso,altura)
   imc <- peso/(quad(altura))
   //exp('base',expoente) - tbm da certo no lugar do quad
   escreval(imc)
   se(imc < 16) entao
      escreval("Baixo peso - muito grave")
   senao
      se((imc >= 16) e (imc < 17)) entao
         escreval("Baixo peso - grave")
      senao
         se((imc >= 17) e (imc < 18.50)) entao
            escreval("Baixo peso")
         senao
            se((imc >= 18.50) e (imc < 25)) entao
               escreval("Peso normal")
            senao
               se((imc >= 25) e (imc < 30)) entao
                  escreval("Sobrepeso")
               senao
                  se((imc >= 30) e (imc < 35)) entao
                     escreval("Obesidade grau I")
                  senao
                     se((imc >= 35) e (imc < 40)) entao
                        escreval("Obesidade grau II")
                     senao
                        escreval("Obesidade grau III")
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse


Fimalgoritmo