Algoritmo "segundaAula5"
// na hora de calcular o cash, a forma otimizada é guardar o valor do
// produto numa variavel, e depois fora dos cases fazer uma função SE,
// para calcular a variavel menos o deposito, assim sem terq repetir
// a função de cash em todo case.

Var
   opcao : inteiro
   cash : real

Inicio
   escreval("Deposite seu cash na máquina:")
   leia(cash)

   escreval("Escolha o código de sua compra:")
   escreval("1 - Coca / R$ 5,00")
   escreval("2 - Miliopã / R$ 0,50")
   escreval("3 - Stick / R$ 4,00")
   escreval("4 - Pepsi / R$ 5,00")
   leia(opcao)

   escolha opcao
   caso 1
      escreval ("Coca selecionada.")
      se(cash > 5) entao
         escreval("Sobrou R$", cash - 5)
      senao
         se(cash < 5)entao
            escreval("Você depositou valor insuficiente.Falta R$", 5 - cash)
         senao
            escreval("Valor depositado compatível com a compra.")
         fimse
      fimse

   caso 2
      escreval ("Miliopã selecionada.")
      se(cash > 0.5) entao
         escreval("Sobrou R$", cash - 0.5)
      senao
         se(cash < 0.5)entao
            escreval("Você depositou valor insuficiente.Falta R$", 0.5 - cash)
         senao
            escreval("Valor depositado compatível com a compra.")
         fimse
      fimse

   caso 3
      escreval ("Stick selecionada.")
      se(cash > 4) entao
         escreval("Sobrou R$", cash - 4)
      senao
         se(cash < 4)entao
            escreval("Você depositou valor insuficiente.Falta R$", 4 - cash)
         senao
            escreval("Valor depositado compatível com a compra.")
         fimse
      fimse

   caso 4
      escreval ("Pepsi selecionada.")
      se(cash > 5) entao
         escreval("Sobrou R$", cash - 5)
      senao
         se(cash < 5)entao
            escreval("Você depositou valor insuficiente.Falta R$", 5 - cash)
         senao
            escreval("Valor depositado compatível com a compra.")
         fimse
      fimse
   outrocaso
      escreval ("Código inválido.")
   fimescolha


Fimalgoritmo